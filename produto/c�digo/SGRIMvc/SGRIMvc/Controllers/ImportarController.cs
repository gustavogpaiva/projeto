using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;
using System.Data;
using System.IO;
using SGRIMvc.Models;

namespace SGRIMvc.Controllers
{

    public class ImportarController : Controller
    {
        //
        // GET: /Importar/
        StringConexaoSGRI_BD modelo = new StringConexaoSGRI_BD();

        public ActionResult Index()
        {
            Dictionary<string, string> lista = new Dictionary<string, string>();
            lista.Add("Importar Profesores e Funcionarios", "Edit");
            //lista.Add("Importar Funcionários", "ImportaFuncionarios");
            //lista.Add("Importar Salas", "ImportaSalas");

            ViewData["OpcoesImportacao"] = lista;

            return View();
        }


        public ActionResult Edit()
        {

            return View();
        }

        /// <summary>
        /// Faz o UpLoad do XML colocando-o na pasta "uploads". A partir daí o procedimento trabalha somente com 
        /// este XML da pasta "upLoads".
        /// </summary>
        /// <param name="file">Arquivo importado</param>
        /// <returns></returns>
        public ActionResult ImportaProfessores(HttpPostedFileBase file)
        {
            try
            {

                var fileName = Path.GetFileName(file.FileName);
                string sFile = (Path.Combine(HttpContext.Server.MapPath("../upload")
                            , Path.GetFileName(file.FileName)));
                file.SaveAs(sFile);
                //Server.MapPath - serve para pegar o caminho completo no sistema.
                //Server.MapPath("~/contatos.xml") = c:\inetpub\wwwroot\site\contatos.xml

                //Cria o DataSet
                DataSet ds = new DataSet();
                //Carrega os dados
                ds.ReadXml(sFile);

                //Imprimir na página
                for (int i = 0; i < ds.Tables["FUNCIONARIOS"].Rows.Count; i++)
                {
                    string IDFuncionario = ds.Tables["FUNCIONARIOS"].Rows[i]["IDFuncionario"].ToString();
                    string nomeFuncionario = ds.Tables["FUNCIONARIOS"].Rows[i]["Nome_Funcionario"].ToString();
                    string cargoFuncionario = ds.Tables["FUNCIONARIOS"].Rows[i]["Cargo_Funcionario"].ToString();
                    string matriculaFuncionario = ds.Tables["FUNCIONARIOS"].Rows[i]["Matricula_Funcionario"].ToString();
                    string tipoFuncionario = ds.Tables["FUNCIONARIOS"].Rows[i]["Tipo_Funcionario"].ToString();

                    FUNCIONARIOS objFuncionario = new FUNCIONARIOS();

                    objFuncionario.IDFuncionario = int.Parse(IDFuncionario);
                    objFuncionario.Nome_Funcionario = nomeFuncionario;
                    objFuncionario.Cargo_Funcionario = cargoFuncionario;
                    objFuncionario.Matricula_Funcionario = matriculaFuncionario;
                    objFuncionario.Tipo_Funcionario = tipoFuncionario;



                    TryUpdateModel(modelo);

                    if (ModelState.IsValid)
                    {
                        modelo.AddToFUNCIONARIOS(objFuncionario);
                        modelo.SaveChanges();

                        // return RedirectToAction("Index");
                    }
                    //observar esse else
                    else
                    {
                        return View();
                    }

                }
                return RedirectToAction("mensagemSucesso");
            }
            catch
            {

                return RedirectToAction("mensagemErro");
            }
        }

        /// <summary>
        /// Mensagem caso a importação do XML tenha sido feita com sucesso
        /// </summary>
        /// <returns></returns>
        public ActionResult mensagemSucesso()
        {
            return View();
        }

        /// <summary>
        /// Mensagem caso tenha ocorrido algum erro na importação do XML
        /// </summary>
        /// <returns></returns>
        public ActionResult mensagemErro()
        {
            return View();
        }

    }
}
