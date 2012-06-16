using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SGRIMvc.Models;

namespace SGRIMvc.Controllers
{
    public class ReservaAulaController : Controller
    {
        //
        // GET: /ReservaAula/

        StringConexaoSGRI_BD modelo = new StringConexaoSGRI_BD();

        #region Menu Index
        public ActionResult Index()
        {
            Dictionary<string, string> lista = new Dictionary<string, string>();

            lista.Add("Listar Reservas", "List");
            lista.Add("Efetuar Reserva", "Create");
           // lista.Add("Cancelar Reserva", "Delete");

            ViewData["OpcoesReservaAulas"] = lista;

            return View();
        }
        #endregion


        #region Efetuar Reserva
        public ActionResult Create()
        {
            return View(new RESERVA_AULAS());
        } 

        //
        // POST: /ReservaAula/Create

        [HttpPost]
        public ActionResult Create(RESERVA_AULAS objReservaAula)
        {
            TryUpdateModel(modelo);

            if (ModelState.IsValid)
            {
                modelo.AddToRESERVA_AULAS(objReservaAula);
                modelo.SaveChanges();

                return RedirectToAction("Index");
            }

            else
            {
                return View();
            }
        }
        #endregion


        #region Cancelar Reserva
        //
        // GET: /ReservaAula/Delete/5
 
        public ActionResult Delete(int id)
        {
            var reservaDel = from rd in modelo.RESERVA_AULAS
                                 where rd.IDReserva_Aula == id
                                 select rd;

            return View(reservaDel.SingleOrDefault());
        }

        //
        // POST: /ReservaAula/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                var reservaDel = from rd in modelo.RESERVA_AULAS
                                     where rd.IDReserva_Aula == id
                                     select rd;
                modelo.DeleteObject(reservaDel.SingleOrDefault());
                modelo.SaveChanges();


                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        #endregion


        #region Listar Reservas
        public ActionResult List()
        {
            var reservaAula = from r in modelo.RESERVA_AULAS
                               orderby r.IDReserva_Aula ascending
                               select r;
            return View(reservaAula.ToList());
        }
        #endregion
    }
}
