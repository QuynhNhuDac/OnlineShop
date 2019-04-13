using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OnlineShop.Models;
using OnlineShop.Provider;

namespace OnlineShop.Tests.Providers
{
    [TestClass]
    public class CustomerProviderTest
    {
        private Customer testCustomer;
        private int testing;
        public CustomerProviderTest()
        {
            testCustomer = new Customer();
            testCustomer.CustomerID = "KH69";
            testCustomer.FirstName = "Oanh";
            testCustomer.LastName = "Hoang";
            testCustomer.Address = null;
            testCustomer.PhoneNumber = null;
            testCustomer.DOB = null;
            testCustomer.Email = "oanh@gmail.com";
            testCustomer.Password = "12345";
            testCustomer.UserName = "oanhoanh";
        }
        public int getCustomers()
        {
            var _provider = new CustomerProvider();
            testing = _provider.GetAllCustomers().Length;
            return testing;
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
        public void getAllCustomers()
        {
            //Arrange
            var _provider = new CustomerProvider();
            getCustomers();
            //Act
            var result = _provider.GetAllCustomers().Length;
            var expected = testing;
            //Assert
            Assert.AreEqual(expected, result);
        }

        [TestMethod]
        [DeploymentItem("CustomerTestData.csv")]
        [DataSource("Microsoft.VisualStudio.TestTools.DataSource.CSV", "|DataDirectory|\\CustomerTestData.csv", "CustomerTestData#csv", DataAccessMethod.Sequential)]

        public void GetDetailsByIdData()
        {
            //Arrange
            var _provider = new CustomerProvider();
            var id = Int32.Parse(TestContext.DataRow[0].ToString());
            var customerId = TestContext.DataRow[1].ToString();

            //Act
            Customer c = new Customer();
            c = _provider.GetDetails(id);

            //Assert
            Assert.AreEqual(customerId, c.CustomerID);
        }

        [TestMethod]
        public void CreateTestCustomer()
        {
            //Arrange
            var _provider = new CustomerProvider();
            var name = "Oanh";
            //Act
            var result = Int32.Parse(_provider.Create(testCustomer).ToString());
            var actual = _provider.GetDetails(result);
            //Assert
            Assert.AreEqual(name, actual.FirstName);
        }

        
    }
}
