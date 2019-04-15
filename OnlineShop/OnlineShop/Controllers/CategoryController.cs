using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineShop.Models;
using OnlineShop.Provider;

namespace OnlineShop.Controllers
{

    public class CategoryController : Controller
    {
        CategoryProvider _provider = new CategoryProvider();
        // GET: Customer
        public ActionResult Index()
        {
            var temp = _provider.GetAllCategories();
            return View(temp);
        }
        
        public ActionResult Create()
        {
            return View();
        }

        // POST: Customer
        [HttpPost]
        public ActionResult Create(Category category)
        {
            if (ModelState.IsValid)
            {
                long id = _provider.Create(category);
                if (id > 0)
                {
                    return RedirectToAction("Index", "Category");
                }
                else
                {
                    ModelState.AddModelError("", "New Category has been created");
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
        public ActionResult Edit(Category category)
        {
            if (ModelState.IsValid)
            {
                var temp = _provider.EditCategory(category);
                if (temp)
                {
                    return RedirectToAction("Index", "Category");
                }
                else
                {
                    ModelState.AddModelError("", "Category has been updated");
                }
            }
            return View("Index");
        }

        [HttpPost]
        public ActionResult Delete(int ID)
        {
            _provider.DeleteCategory(ID);
            return RedirectToAction("Index");
        }
    }
}