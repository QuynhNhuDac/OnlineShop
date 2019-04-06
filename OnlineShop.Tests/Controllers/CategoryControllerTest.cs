using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OnlineShop;
using OnlineShop.Models;
using OnlineShop.Controllers;

namespace OnlineShop.Tests.Controllers
{
    [TestClass]
    public class CategoryControllerTest
    {
        private CategoryController _categoryCtrl;

        [TestMethod]
        public void Index()
        {
            var _categoryCtrl = new CategoryController();

            // Act
            ViewResult result = _categoryCtrl.Index() as ViewResult;

            // Assert
            Assert.IsNotNull(result);
        }

        [TestMethod]
        public void CreateBook(Category category)
        {
            var _categoryCtrl = new CategoryController();

            //var NewCate = new Category();
            //NewCate.CategoryName = "Book";
            //ViewResult r = _categoryCtrl.CreateCategory(NewCate) as ViewResult;

            //Assert.IsNotNull(r);
        }
    }
}
