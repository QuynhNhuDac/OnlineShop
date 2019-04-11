using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineShop.Models;
using OnlineShop.Provider;
using OnlineShop.Common;

namespace OnlineShop.Controllers
{
    public class HomeController : Controller
    {
        EmployeeProvider _provider = new EmployeeProvider();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(Employee employee)
        {
            if (ModelState.IsValid)
            {
                var result = _provider.Login(employee.CompanyEmail, employee.Password);
                if (result != null)
                {
                    var user = _provider.GetByEmail(employee.CompanyEmail);
                    var userSession = new UserLogin();
                    userSession.CompanyEmail = user.CompanyEmail;
                    Session.Add(Common.CommonConstants.USER_SESSION, userSession);
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("", "Login failed");
                }
            }
            return View("Index");

        }
    }
}