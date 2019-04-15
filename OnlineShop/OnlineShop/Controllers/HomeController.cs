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

        public ActionResult Login(Employee emp)
        {
            if (ModelState.IsValid)
            {
                var _provider = new EmployeeProvider();
                var result = _provider.Login(emp.CompanyEmail, emp.Password);
                if (result)
                {
                    var user = _provider.GetByEmail(emp.CompanyEmail);
                    var userSession = new UserLogin();
                    userSession.CompanyEmail = user.CompanyEmail;
                    Session.Add(Common.CommonConstants.USER_SESSION, userSession);
                    return RedirectToAction("Login", "Home");
                }
                else
                {
                    ModelState.AddModelError("", "Cannot logged in");
                }
            }
            return View("Index");


        }
    }
}