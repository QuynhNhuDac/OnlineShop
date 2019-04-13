using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OnlineShop.Models;
using OnlineShop.Provider;

namespace OnlineShop.Tests.Providers
{
    [TestClass]
    public class CategoryProviderTest
    {
        private Category test;
        CategoryProvider _p = new CategoryProvider();

        public CategoryProviderTest()
        {
            
        }

        [TestMethod]
        public void getAllCategory()
        {
            //Act
            var result = _p.GetAllCategories().Length;
            //Assert
            Assert.AreEqual(3, result);
        }
    }
}
