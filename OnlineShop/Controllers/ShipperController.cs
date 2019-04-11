using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineShop.Provider;
using OnlineShop.Models;

namespace OnlineShop.Controllers
{
    [Authorize]
    public class ShipperController : Controller
    {
        ShipperProvider _provider = new ShipperProvider();
        // GET: Shipper
        public ActionResult Index()
        {
            var temp = _provider.GetShippers();
            return View(temp);
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Shipper shipper)
        {
            if (ModelState.IsValid)
            {
                long id = _provider.Create(shipper);
                if (id > 0)
                {
                    return RedirectToAction("Index", "Shipper");
                }
                else
                {
                    ModelState.AddModelError("", "New shipper has been added");
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
        public ActionResult Edit(Shipper shipper)
        {
            if (ModelState.IsValid)
            {
                var temp = _provider.Edit(shipper);
                if (temp)
                {
                    return RedirectToAction("Index", "Shipper");
                }
                else
                {
                    ModelState.AddModelError("", "Shipper has been updated");
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