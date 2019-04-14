using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OnlineShop.Models;
using OnlineShop.Provider;

namespace OnlineShop.Tests.Providers
{
    [TestClass]
    public class ProductProviderTest
    {
        private Product testProduct;
        //private int testing;

        public ProductProviderTest()
        {
            testProduct = new Product();
            testProduct.ProductName = "Stone Book";
            testProduct.CategoryID = 1;
            testProduct.UnitPrice = 500;
            testProduct.UnitsInStock = 5;
            testProduct.Discontinued = null;
            testProduct.Image = null;
        }

        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        [TestMethod]
        [DeploymentItem("ProductTestData.csv")]
        [DataSource("Microsoft.VisualStudio.TestTools.DataSource.CSV", "|DataDirectory|\\ProductTestData.csv", "ProductTestData#csv", DataAccessMethod.Sequential)]

        public void GetDetailsByIdData()
        {
            //Arrange
            var _provider = new ProductProvider();
            var id = Int32.Parse(TestContext.DataRow[0].ToString());
            var name = TestContext.DataRow[1].ToString();
            //Act
            var result = _provider.GetDetails(id);
            //Assert
            Assert.AreEqual(name, result.ProductName);
        }

        [TestMethod]
        public void getAllProduct()
        {
            //Arrange
            var _provider = new ProductProvider();
            //Act
            var result = _provider.GetProducts().Length;
            //Assert
            Assert.AreEqual(13, result);
        }

        [TestMethod]
        public void CreateProduct()
        {
            //Arrange
            var _provider = new ProductProvider();
            var name = "Stone Book";
            //Act
            var result = Int32.Parse(_provider.Create(testProduct).ToString());
            var details = _provider.GetDetails(result);
            //Assert
            Assert.AreEqual(name, details.ProductName);
        }

        [TestMethod]
        public void EditProduct()
        {
            //Arrange
            var _provider = new ProductProvider();
            testProduct.ID = 14;
            testProduct.ProductName = "";
            testProduct.CategoryID = 1;
            testProduct.UnitPrice = 100;
            testProduct.UnitsInStock = 100;
            testProduct.Discontinued = false;
            testProduct.Image = "~/images/biabenthanhchai.jpg";
            //Act
            var result = _provider.Edit(testProduct);
            //Assert
            Assert.IsTrue(result, "Can't find this Product!");
        }

        [TestMethod]
        public void DeleteProduct()
        {
            //Arrange
            var _provider = new ProductProvider();
            testProduct.ID = 14;
            //Act
            var result = _provider.Delete(testProduct.ID);
            //Assert
            Assert.IsTrue(result, "Can't find this category!");
        }

    }
}
