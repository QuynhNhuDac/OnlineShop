using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineShop.Models;
using OnlineShop.Provider;

namespace OnlineShop.Controllers
{
    [Authorize]
    public class CategoryController : Controller
    {
        CategoryProvider _provider = new CategoryProvider();
        // GET: Category
        public ActionResult Index()
        {
            var temp = _provider.GetAllCategories();
            return View(temp);
        }
        [HttpGet]
        public ActionResult CreateCategory()
        {
            return View();
        }

        // POST: Category
        [HttpPost]
        public ActionResult CreateCategory( Category category)
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
                    ModelState.AddModelError("","New Category has been created");
                }
            }
            return View();
        }

        public ActionResult EditCategory(int ID)
        {
            var temp = _provider.GetDetails(ID);
            return View(temp);
        }

        [HttpPost]
        public ActionResult EditCategory(Category category)
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

        [HttpDelete]
        public ActionResult DeleteCategory(int ID)
        {
            _provider.DeleteCategory(ID);

            return RedirectToAction("Index");
        }
    }
}