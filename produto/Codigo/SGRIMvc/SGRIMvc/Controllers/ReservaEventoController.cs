using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SGRIMvc.Models;

namespace SGRIMvc.Controllers
{
    public class ReservaEventoController : Controller
    {
        //
        // GET: /ReservaEvento/

        StringConexaoSGRI_BD modelo = new StringConexaoSGRI_BD();

        #region Menu Index
        public ActionResult Index()
        {
            Dictionary<string, string> lista = new Dictionary<string, string>();

            lista.Add("Listar Reservas", "List");
            lista.Add("Efetuar Reserva", "Create");
          //lista.Add("Alterar Reserva", "Edit");
          //lista.Add("Cancelar Reserva", "Delete");
            
            ViewData["OpcoesReservaEventos"] = lista;

            return View();
        }
        #endregion

        #region Efetuar Reserva
        //
        // GET: /ReservaEvento/Create

        public ActionResult Create()
        {
            return View(new RESERVA_EVENTOS());
        } 

        //
        // POST: /ReservaEvento/Create

        [HttpPost]
        public ActionResult Create(RESERVA_EVENTOS objReservaEvento)
        {
            TryUpdateModel(modelo);

            if (ModelState.IsValid)
            {
                modelo.AddToRESERVA_EVENTOS(objReservaEvento);
                modelo.SaveChanges();

                return RedirectToAction("Index");
            }

            else
            {
                return View();
            }
        }
        #endregion

        #region Alterar Reserva
        //
        // GET: /ReservaEvento/Edit/5
 
        public ActionResult Edit(int id)
        {
            var reserva = from r in modelo.RESERVA_EVENTOS
                                  where r.IDReserva_Evento == id
                                  select r;

            return View(reserva.Single());
        }

        //
        // POST: /ReservaEvento/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                var reservaSel = from rs in modelo.RESERVA_EVENTOS
                                     where rs.IDReserva_Evento == id
                                     select rs;
                UpdateModel(reservaSel.SingleOrDefault());
                modelo.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        #endregion

        #region Cencelar Reserva para Evento
        //
        // GET: /ReservaEvento/Delete/5
 
        public ActionResult Delete(int id)
        {
            var reservaDel = from rd in modelo.RESERVA_EVENTOS
                             where rd.IDReserva_Evento == id
                             select rd;

            return View(reservaDel.SingleOrDefault());
        }

        //
        // POST: /ReservaEvento/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                var reservaDel = from rd in modelo.RESERVA_EVENTOS
                                 where rd.IDReserva_Evento == id
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

        #region Listar Reservar para Evento
        public ActionResult List()
        {
            var reservaEvento = from r in modelo.RESERVA_EVENTOS
                              orderby r.IDReserva_Evento ascending
                              select r;
            return View(reservaEvento.ToList());
        }
        #endregion 
    }
}
