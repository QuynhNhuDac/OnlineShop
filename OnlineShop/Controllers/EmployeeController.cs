using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
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

        [HttpDelete]
        public ActionResult Delete(int ID)
        {
            _provider.Delete(ID);

            return RedirectToAction("Index");
        }
    }
}