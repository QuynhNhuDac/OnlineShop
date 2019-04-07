﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OnlineShop;
using OnlineShop.Models;
using OnlineShop.Controllers;
using OnlineShop.Provider;

namespace OnlineShop.Tests.Controllers
{
    [TestClass]
    public class CategoryTest
    {
        private Category c1;
        private Category c2;

        [TestInitialize]
        public void SetUp()
        {
            c1 = new Category();
            c1.CategoryName = "CocaCola";
            c2 = new Category();
            c2.CategoryName = "123";
        }

        [TestMethod]
        public void getDetailsById()
        {
            // Arrange
            var _provider = new CategoryProvider();
            var id = 2;

            // Act
            var result = _provider.GetDetails(id);

            // Assert
            Assert.AreEqual("Wand", result.CategoryName);
        }
    }
}
