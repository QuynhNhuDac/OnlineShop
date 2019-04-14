using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OnlineShop.Models;
using OnlineShop.Provider;

namespace OnlineShop.Tests.Providers
{
    class ShipperTest
    {
        private Shipper testShipper;
        private int testing;
        public ShipperTest()
        {
            testShipper = new Shipper();
            testShipper.Name = "BiuGates";
            testShipper.Address = "Ha Tinh - SanHok";
            testShipper.Phone = 09090909;
        }

        public int getShipper()
        {
            var _provider = new ShipperProvider();
            testing = _provider.GetShippers().Length;
            return testing;
        }

        [TestMethod]
        public void GetAllShippers()
        {
            //Arrange
            var _provider = new ShipperProvider();
            getShipper();
            //Act
            var result = _provider.GetShippers().Length;
            var expected = testing;
            //Assert
            Assert.AreEqual(expected, result);
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
            testShipper.ID = 1;
            testShipper.Name = "Sam";
            testShipper.Address = "SanMartin";
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

        private TestContext test;

        public TestContext TestContext
        {
            get
            {
                return test;
            }
            set
            {
                test = value;
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
    }
}
