using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineShop.Common;
using OnlineShop.Models;
using OnlineShop.Provider;

namespace OnlineShop.Controllers
{

    public class EmployeeController : Controller
    {
        // GET: Employee
        EmployeeProvider _provider = new EmployeeProvider();
        // GET: Category
        public ActionResult Index()
        {
            var temp = _provider.GetEmployees();
            return View(temp);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Category
        [HttpPost]
        public ActionResult Create(Employee employee)
        {
            if (ModelState.IsValid)
            {
                long id = _provider.Create(employee);
                if (id > 0)
                {
                    return RedirectToAction("Index", "Employee");
                }
                else
                {
                    ModelState.AddModelError("", "New Employee has been created");
                }
            }
            return View();
        }

        public ActionResult Edit(int ID)
        {
            var temp = _provider.GetDetails(ID);
            return View(temp);
        }

        [HttpPost]
        public ActionResult Edit(Employee employee)
        {
            if (ModelState.IsValid)
            {
                var temp = _provider.Edit(employee);
                if (temp)
                {
                    return RedirectToAction("Index", "Employee");
                }
                else
                {
                    ModelState.AddModelError("", "Employee has been updated");
                }
            }
            return View("Index");
        }

        [HttpPost]
        public ActionResult Delete(int ID)
        {
            _provider.Delete(ID);

            return RedirectToAction("Index");
        }

        //public ActionResult Login()
        //{
        //    return View();
        //}
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Login(Employee employee)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        var result = _provider.Login(employee.CompanyEmail, employee.Password);
        //        if (result != null)
        //        {
        //            var user = _provider.GetByEmail(employee.CompanyEmail);
        //            var userSession = new UserLogin();
        //            userSession.CompanyEmail = user.CompanyEmail;
        //            Session.Add(Common.CommonConstants.USER_SESSION, userSession);
        //            return RedirectToAction("Index", "Home");
        //        }
        //        else
        //        {
        //            ModelState.AddModelError("", "Login failed");
        //        }
        //    }
        //    return View("Index");

        //}
    }
}