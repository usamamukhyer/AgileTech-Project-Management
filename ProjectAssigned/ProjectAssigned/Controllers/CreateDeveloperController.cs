using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProjectAssigned.Controllers
{
    public class CreateDeveloperController : Controller
    {
        // GET: CreateDeveloper

        public ActionResult AddDeveloper()
        {
            return View();
        }


        public ActionResult DeveloperList()
        {
            return View();
        }
    }
}