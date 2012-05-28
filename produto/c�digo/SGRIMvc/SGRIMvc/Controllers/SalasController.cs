using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SGRIMvc.Models;

namespace SGRIMvc.Controllers
{
    public class SalasController : Controller
    {
        //
        // GET: /Salas/

        StringConexaoSGRI_BD modelo = new StringConexaoSGRI_BD();
        public ActionResult Index()
        {
            Dictionary<string, string> lista = new Dictionary<string, string>();
            lista.Add("Adicionar Sala", "Create");
            //lista.Add("Editar dados de Sala", "Edit");
            //lista.Add("Remover Sala", "Delete");
            lista.Add("Listar Salas", "List");

            ViewData["OpcoesSalas"] = lista;

            return View();
        }

        //
        // GET: /Salas/Details/5

        public ActionResult Details(int id)
        {
            var salasDel = from sd in modelo.SALAS
                                  where sd.IDSala == id
                                  select sd;

            return View(salasDel.Single());

        }

        //
        // GET: /Salas/Create

        public ActionResult Create()
        {
            return View(new SALAS());
        }

        //
        // POST: /Salas/Create

        [HttpPost]
        public ActionResult Create(SALAS objSala)
        {
            TryUpdateModel(modelo);

            if (ModelState.IsValid)
            {
                modelo.AddToSALAS(objSala);
                modelo.SaveChanges();

                return RedirectToAction("Index");
            }

            else
            {
                return View();
            }
        }
        
        //
        // GET: /Salas/Edit/5

        /// <summary>
        /// Método que faz uma busca com LINQ selecionando o registro pelo ID da Sala
        /// </summary>
        /// <param name="id">Identidicador da sala</param>
        /// <returns>Registro retornado palo LINQ</returns>
        public ActionResult Edit(int id)
        {
            var salasSel = from sa in modelo.SALAS
                                  where sa.IDSala == id
                                  select sa;

            return View(salasSel.Single());
        }

        //
        // POST: /Salas/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                var salaSel = from sa in modelo.SALAS
                                     where sa.IDSala == id
                                     select sa;
                UpdateModel(salaSel.SingleOrDefault());
                modelo.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Salas/Delete/5

        public ActionResult Delete(int id)
        {
            var salaDel = from sd in modelo.SALAS
                                 where sd.IDSala == id
                                 select sd;

            return View(salaDel.SingleOrDefault());
        }

        //
        // POST: /Salas/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                var salaDel = from sd in modelo.SALAS
                                     where sd.IDSala == id
                                     select sd;
                modelo.DeleteObject(salaDel.SingleOrDefault());
                modelo.SaveChanges();


                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        /// <summary>
        /// Método que retorna os dados presentes na tebela com LINQ
        /// e armazena no objeto salas
        /// </summary>
        /// <returns>Retorna uma lista de valores para a View</returns>
        public ActionResult List()
        {
            var salas = from s in modelo.SALAS
                               orderby s.IDSala ascending
                               select s;
            return View(salas.ToList());
        }
    }
}
