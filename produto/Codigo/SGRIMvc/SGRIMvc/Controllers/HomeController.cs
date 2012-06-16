using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SGRIMvc.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "SGRI - Sistema de Gerenciamento de Recursos de Infra-Estrutura";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
