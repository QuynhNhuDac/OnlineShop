using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OnlineShop.Provider;

namespace OnlineShop.Tests.Provider
{
    [TestClass]
    public class CustomerProviderTest
    {
        [TestInitialize]
        public void SetUp()
        {

        }

        [TestMethod]
        public void getAllCustomers()
        {
            //Arrange
            var _provider = new CustomerProvider();

            //Act
            var result = _provider.GetAllCustomers();

            //Assert
            Assert.AreEqual("9", result.Length);
        }
    }
}
