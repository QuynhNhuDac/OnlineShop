using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OnlineShop.Models;
using OnlineShop.Provider;

namespace OnlineShop.Tests.Providers
{
    /// <summary>
    /// Summary description for OrderProviderTest
    /// </summary>
    [TestClass]
    public class OrderProviderTest
    {
        private Order testOrder;

        public OrderProviderTest()
        {
            testOrder = new Order();
            testOrder.OrderID = "HD005";
            testOrder.CustomerID = 1;
            testOrder.EmployeeID = 1;
            testOrder.OrderDate = new DateTime();
            testOrder.RequiredDate = new DateTime();
            testOrder.ShippedDate = new DateTime();
            testOrder.ShipVia = 1;
            testOrder.Freight = 1;
            testOrder.ShipAddress = "Ha tinh";
            testOrder.DeliveryCost = 19999999;
            testOrder.ShipCity = null;
            testOrder.ShipCountry = null;
            testOrder.ShipRegion = null;
            testOrder.ShipPostalCode = null;

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

        #region Additional test attributes
        //
        // You can use the following additional attributes as you write your tests:
        //
        // Use ClassInitialize to run code before running the first test in the class
        // [ClassInitialize()]
        // public static void MyClassInitialize(TestContext testContext) { }
        //
        // Use ClassCleanup to run code after all tests in a class have run
        // [ClassCleanup()]
        // public static void MyClassCleanup() { }
        //
        // Use TestInitialize to run code before running each test 
        // [TestInitialize()]
        // public void MyTestInitialize() { }
        //
        // Use TestCleanup to run code after each test has run
        // [TestCleanup()]
        // public void MyTestCleanup() { }
        //
        #endregion

        [TestMethod]
        public void CreateOrder()
        {
            //Arrange
            var _provider = new OrderProvider();
            var OrderID = "HD005";
            //Act
            var result = Int32.Parse(_provider.Create(testOrder).ToString());
            var actual = _provider.GetDetails(result);
            //Assert
            Assert.AreEqual(OrderID, actual.OrderID);
        }

        [TestMethod]
        public void EditOrder()
        {
            //Arrange
            var _provider = new OrderProvider();
            //testOrder.ID = 1;
           
            //Act
            var result = _provider.Edit(testOrder);
            //Assert
            Assert.IsTrue(result, "Can't find this Order!");
        }

        [TestMethod]
        public void DeletedOrder()
        {
            //Arrange
            var _provider = new OrderProvider();
            testOrder.ID = 1;
            //Act
            var result = _provider.Delete(testOrder.ID);
            //Assert
            Assert.IsTrue(result, "Can't find this Order!");
        }

    }
}
