using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SGRIMvc.Models;

namespace SGRIMvc.Controllers
{
    /// <summary>
    /// Classe de Controle que contém as Actions responsáveis pela manipulação dos dados (CRUD)
    /// </summary>
    public class EquipamentosController : Controller
    {
        //
        // GET: /Equipamentos/
        StringConexaoSGRI_BD modelo = new StringConexaoSGRI_BD();

        #region Menu Index

        public ActionResult Index()
        {
            Dictionary<string, string> lista = new Dictionary<string, string>();
            lista.Add("Adicionar Equipamento", "Create");
           // lista.Add("Editar dados de Equipamento", "Edit");
           // lista.Add("Remover Equipamento", "Delete");
            lista.Add("Listar Equipamentos", "List");

            ViewData["OpcoesEquipamentos"] = lista;

            return View();
        }

        #endregion


        #region Detalhes Equipamentos
        //
        // GET: /Equipamentos/Details/5

        public ActionResult Details(int id)
        {
            var equipamentosDel = from eq in modelo.EQUIPAMENTOS
                                  where eq.IDEquipamento == id
                                  select eq;

            return View(equipamentosDel.Single());

        }
        #endregion


        #region Criar Equipamentos
        //
        // GET: /Equipamentos/Create

        public ActionResult Create()
        {
            return View(new EQUIPAMENTOS());
        }

        //
        // POST: /Equipamentos/Create

        [HttpPost]
        public ActionResult Create(EQUIPAMENTOS objEquipamento)
        {
            TryUpdateModel(modelo);

            if (ModelState.IsValid)
            {
                modelo.AddToEQUIPAMENTOS(objEquipamento);
                modelo.SaveChanges();

                return RedirectToAction("Index");
            }

            else
            {
                return View();
            }
        }
        #endregion


        #region Editar Equipamentos
        //
        // GET: /Equipamentos/Edit/5
        /// <summary>
        /// Método que faz uma busca com LINQ selecionando o registro pelo ID do Equipamento
        /// </summary>
        /// <param name="id">Identidicador do equipamento</param>
        /// <returns>Registro retornado palo LINQ</returns>
        public ActionResult Edit(int id)
        {
            var equipamentosSel = from eq in modelo.EQUIPAMENTOS
                                  where eq.IDEquipamento == id
                                  select eq;

            return View(equipamentosSel.Single());
        }

        //
        // POST: /Equipamentos/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                var equipamentoSel = from eq in modelo.EQUIPAMENTOS
                                     where eq.IDEquipamento == id
                                     select eq;
                UpdateModel(equipamentoSel.SingleOrDefault());
                modelo.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        #endregion


        #region Delete Equipamentos
        //
        // GET: /Equipamentos/Delete/5

        public ActionResult Delete(int id)
        {
            var equipamentoDel = from ed in modelo.EQUIPAMENTOS
                                 where ed.IDEquipamento == id
                                 select ed;

            return View(equipamentoDel.SingleOrDefault());
        }

        //
        // POST: /Equipamentos/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                var equipamentoDel = from ed in modelo.EQUIPAMENTOS
                                     where ed.IDEquipamento == id
                                     select ed;
                modelo.DeleteObject(equipamentoDel.SingleOrDefault());
                modelo.SaveChanges();


                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        #endregion


        #region Listar Equipamentos
        /// <summary>
        /// Método que retorna os dados presentes na tebela com LINQ
        /// e armazena no objeto equipamentos
        /// </summary>
        /// <returns>Retorna uma lista de valores para a View</returns>
        public ActionResult List()
        {
            var equipamentos = from e in modelo.EQUIPAMENTOS
                               orderby e.IDEquipamento ascending
                               select e;
            return View(equipamentos.ToList());
        }
        #endregion
    }
}
