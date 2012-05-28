using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SGRIMvc.Models;
using System.Net.Mail;
using System.Net;

namespace SGRIMvc.Controllers
{
    public class UsuarioController : Controller
    {
        //
        // GET: /Usuario/

        StringConexaoSGRI_BD modelo = new StringConexaoSGRI_BD();
        public ActionResult Index()
        {
            Dictionary<string, string> lista = new Dictionary<string, string>();
            lista.Add("Criar Login e Senha para Funcionário", "List");
            lista.Add("Adicionar Funcionário", "Create");
            lista.Add("Listar Funcionários", "List2");

            ViewData["OpcoesUsuarios"] = lista;

            return View();
        }

        //
        // GET: /Usuario/Details/5

        public ActionResult Details(int id)
        {

            var funcionarioDet = from fd in modelo.FUNCIONARIOS
                                  where fd.IDFuncionario == id
                                  select fd;

            return View(funcionarioDet.Single());
        }

        //
        // GET: /Usuario/Create

        public ActionResult Create()
        {
            return View(new FUNCIONARIOS());
        } 

        //
        // POST: /Usuario/Create

        [HttpPost]
        public ActionResult Create(FUNCIONARIOS objFuncionario)
        {
            TryUpdateModel(modelo);

            if (ModelState.IsValid)
            {
                modelo.AddToFUNCIONARIOS(objFuncionario);
                modelo.SaveChanges();

                return RedirectToAction("Index");
            }

            else
            {
                return View();
            }
        }
        
        //
        // GET: /Usuario/Edit/5
 
        public ActionResult Edit(int id)
        {
            var funcionarioSel = from fun in modelo.FUNCIONARIOS
                                  where fun.IDFuncionario == id
                                  select fun;

            return View(funcionarioSel.Single());
        }

        //
        // POST: /Usuario/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                var funcionarioSel = from fun in modelo.FUNCIONARIOS
                                     where fun.IDFuncionario == id
                                     select fun;
                UpdateModel(funcionarioSel.SingleOrDefault());
                modelo.SaveChanges();
                

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult Edit2(int id)
        {
            var funcionarioSel = from fun in modelo.FUNCIONARIOS
                                 where fun.IDFuncionario == id
                                 select fun;

            return View(funcionarioSel.Single());
        }

        //
        // POST: /Usuario/Edit/5

        [HttpPost]
        public ActionResult Edit2(int id, FormCollection collection)
        {
            try
            {
                var funcionarioSel = from fun in modelo.FUNCIONARIOS
                                     where fun.IDFuncionario == id
                                     select fun;
                UpdateModel(funcionarioSel.SingleOrDefault());
                modelo.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        //
        // GET: /Usuario/Delete/5
 
        public ActionResult Delete(int id)
        {
            var funcionarioDel = from fd in modelo.FUNCIONARIOS
                                 where fd.IDFuncionario == id
                                 select fd;

            return View(funcionarioDel.SingleOrDefault());
        }

        //
        // POST: /Usuario/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                var funcionarioDel = from fd in modelo.FUNCIONARIOS
                                     where fd.IDFuncionario == id
                                     select fd;
                modelo.DeleteObject(funcionarioDel.SingleOrDefault());
                modelo.SaveChanges();


                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        
        /// <summary>
        /// Lista os funcionários sem as opções de CRUD. Permite somente criar o Login e Senha para um funcionário.
        /// </summary>
        /// <returns></returns>
        public ActionResult List()
        {
            var funcionario = from fun in modelo.FUNCIONARIOS
                               orderby fun.IDFuncionario ascending
                               select fun;
            return View(funcionario.ToList());
        }

        /// <summary>
        /// Lista os funcionários com as opções de CRUD.
        /// </summary>
        /// <returns></returns>
        public ActionResult List2()
        {
            var funcionario = from fun in modelo.FUNCIONARIOS
                              orderby fun.IDFuncionario ascending
                              select fun;
            return View(funcionario.ToList());
        }

        public ActionResult EnviaSenhaAleatoria()
        {
            try
            {
                string carac = "abcdefhijkmnopqrstuvxwyz123456789";
                // converte em vetor de caracteres
                char[] letras = carac.ToCharArray();

                // vamos embaralhar 5 vezes
                Embaralhar(ref letras, 5);

                // junta as partes e forma uma senha de 8 dígitos e/ou
                // caracteres
                string senha = new String(letras).Substring(0, 8);

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("karine.leles@gmail.com");
                msg.To.Add("israelalmeida91@hotmail.com");
                msg.Subject = "SGRI - Mensagam de Confirmação";
                msg.Body = "Uma senha foi gerada para o seu usuário: \n " + senha;
                SmtpClient sc = new SmtpClient("smtp.gmail.com");
                sc.Port = 25;
                sc.Credentials = new NetworkCredential("karine.leles@gmail.com", "karine1017380");
                sc.EnableSsl = true;
                sc.Send(msg);

                return RedirectToAction("mensagemSucesso");
            }
            catch
            {
                return RedirectToAction("mensagemErro");
            }
        }

        public ActionResult mensagemErro()
        {
            return View();
        }

        public ActionResult mensagemSucesso()
        {
            return View();
        }

        static void Trocar(ref char arg1, ref char arg2)
        {
            char strTemp = arg1;
            arg1 = arg2;
            arg2 = strTemp;
        }

        static void Embaralhar(ref char[] array, int vezes)
        {
            Random rand = new Random(DateTime.Now.Millisecond);

            for (int i = 1; i <= vezes; i++)
            {
                for (int x = 1; x <= array.Length; x++)
                {
                    Trocar(ref array[rand.Next(0, array.Length)],
                    ref array[rand.Next(0, array.Length)]);
                }
            }
        }

       
    }
}
