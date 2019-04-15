using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineShop.Models;
using OnlineShop.Provider;

namespace OnlineShop.Controllers
{

    public class CustomerController : Controller
    {
        CustomerProvider _provider = new CustomerProvider();
        // GET: Customer
        public ActionResult Index()
        {
            var temp = _provider.GetAllCustomers();
            return View(temp);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Customer
        [HttpPost]
        public ActionResult Create(Customer customer)
        {
            if (ModelState.IsValid)
            {
                long id = _provider.Create(customer);
                if (id > 0)
                {
                    return RedirectToAction("Index", "Customer");
                }
                else
                {
                    ModelState.AddModelError("", "New Customer has been created");
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
        public ActionResult Edit(Customer customer)
        {
            if (ModelState.IsValid)
            {
                var temp = _provider.Edit(customer);
                if (temp)
                {
                    return RedirectToAction("Index", "Customer");
                }
                else
                {
                    ModelState.AddModelError("", "Customer has been updated");
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
    }
}