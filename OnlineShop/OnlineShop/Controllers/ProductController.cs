using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineShop.Models;
using OnlineShop.Provider;
namespace OnlineShop.Controllers
{

    public class ProductController : Controller
    {
        ProductProvider _provider = new ProductProvider();
        // GET: Product
        public ActionResult Index()
        {
            var temp = _provider.GetProducts();
            return View(temp);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Category
        [HttpPost]
        public ActionResult Create(Product product)
        {
            if (ModelState.IsValid)
            {
                long id = _provider.Create(product);
                if (id > 0)
                {
                    return RedirectToAction("Index", "Product");
                }
                else
                {
                    ModelState.AddModelError("", "New Product has been created");
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
        public ActionResult Edit(Product product)
        {
            if (ModelState.IsValid)
            {
                var temp = _provider.Edit(product);
                if (temp)
                {
                    return RedirectToAction("Index", "Product");
                }
                else
                {
                    ModelState.AddModelError("", "Product has been updated");
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