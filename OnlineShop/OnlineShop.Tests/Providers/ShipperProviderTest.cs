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
        //private int testing;

        public ShipperProviderTest()
        {
            testShipper = new Shipper();
            testShipper.Name = "Oanh";
            testShipper.Address = "HaTinh";
            testShipper.Phone = 090909090;
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
        [DeploymentItem("ShipperTestData.csv")]
        [DataSource("Microsoft.VisualStudio.TestTools.DataSource.CSV", "|DataDirectory|\\ShipperTestData.csv", "ShipperTestData#csv", DataAccessMethod.Sequential)]

        public void GetDetailsByIdData()
        {
            //Arrange
            var _provider = new ShipperProvider();
            var id = Int32.Parse(TestContext.DataRow[0].ToString());
            var name = TestContext.DataRow[1].ToString();
            //Act
            var result = _provider.GetDetails(id);
            //Assert
            Assert.AreEqual(name, result.Name);
        }

        [TestMethod]
        public void getAllShipper()
        {
            //Arrange
            var _provider = new ShipperProvider();
            //Act
            var result = _provider.GetShippers().Length;
            //Assert
            Assert.AreEqual(3, result);
        }

        [TestMethod]
        public void CreateShipper()
        {
            //Arrange
            var _provider = new ShipperProvider();
            var name = "Oanh";
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
            testShipper.ID = 4;
            testShipper.Name = "BiuGates";
            testShipper.Address = "SanHok";
            testShipper.Phone = 111111111;
            //Act
            var result = _provider.Edit(testShipper);
            //Assert
            Assert.IsTrue(result, "Can't find this Shipper!");
        }

        [TestMethod]
        public void DeleteShipper()
        {
            //Arrange
            var _provider = new ShipperProvider();
            testShipper.ID = 4;
            //Act
            var result = _provider.Delete(testShipper.ID);
            //Assert
            Assert.IsTrue(result, "Can't find this category!");
        }
    }
}
