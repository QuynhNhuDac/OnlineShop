using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OnlineShop.Models;
using OnlineShop.Provider;

namespace OnlineShop.Tests.Providers
{
    /// <summary>
    /// Summary description for ShipperProvider
    /// </summary>
    [TestClass]
    public class ShipperProviderTest
    {
        private Shipper testShipper;
        private int testing;

        public ShipperProviderTest()
        {
            testShipper = new Shipper();
            testShipper.Name = "BiuGates";
            testShipper.Address = "Ha Tinh - SanHok";
            testShipper.Phone = 09090909;
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
        public void CreateShipper()
        {
            //Arrange
            var _provider = new ShipperProvider();
            var name = "BiuGates";
            //Act
            var result = Int32.Parse(_provider.Create(testShipper).ToString());
            var details = _provider.GetDetails(result);
            //Assert
            Assert.AreEqual(name, details.Name);
        }

        [TestMethod]
        public void EditShipper()
        {
            //Arrange
            var _provider = new ShipperProvider();
            //testShipper.ID = 1;
            testShipper.Name = "Ninja Van";
            testShipper.Address = "25B Phan Dang Luu St, Ward 3, Binh Thanh Dist";
            testShipper.Phone = 88363056;
            //Act
            var result = _provider.Edit(testShipper);
            //Assert
            Assert.IsTrue(result, "Can't find this Shipper!");
        }

        [TestMethod]
        public void DeletedShipper()
        {
            //Arrange
            var _provider = new ShipperProvider();
            testShipper.ID = 1;
            //Act
            var result = _provider.Delete(testShipper.ID);
            //Assert
            Assert.IsTrue(result, "Can't find this Shipper!");
        }
    }
}
