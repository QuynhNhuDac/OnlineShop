using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OnlineShop.Models;
using OnlineShop.Provider;

namespace OnlineShop.Tests.Provider
{
    [TestClass]
    public class EmployeeProviderTest
    {
        private Employee testEmployee;
        public EmployeeProviderTest()
        {
            testEmployee = new Employee();
            testEmployee.EmployeeID = "TS0069";
            testEmployee.FirstName = "Oanh";
            testEmployee.LastName = "Hoang";
            testEmployee.Password = "12345";
            testEmployee.Address = "Tan Binh";
            testEmployee.DOB = null;
            testEmployee.CompanyEmail = "15569@TS.com";
            testEmployee.PhoneNumber = null;
            testEmployee.PersonalEmail = null;
        }

        [TestMethod]
        public void TestAcc1Login()
        {
            //Arrange
            var _p = new EmployeeProvider();
            var email = "admin@ts.com";
            var pwd = "admin@12345";
            var name = "Admin";

            //Act
            var model = _p.Login(email, pwd);

            //Assert
            Assert.AreEqual(name, model.FirstName);
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
        [DeploymentItem("EmployeeTestData.csv")]
        [DataSource("Microsoft.VisualStudio.TestTools.DataSource.CSV", "|DataDirectory|\\EmployeeTestData.csv", "EmployeeTestData#csv", DataAccessMethod.Sequential)]

        public void TestLoginWithData()
        {
            //Arrange
            var _provider = new EmployeeProvider();
            var email = TestContext.DataRow[0].ToString();
            var pwd = TestContext.DataRow[1].ToString();

            var expected = TestContext.DataRow[2].ToString();
            string actual = "";

            //Act
            Employee ep = new Employee();
            ep = _provider.Login(email, pwd);
            if (ep != null)
            { actual = "T"; }
            else { actual = "F"; }

            //Assert
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void GetAllEmployees()
        {
            //Arrange
            var _provider = new EmployeeProvider();
            //Act
            var result = _provider.GetEmployees().Length;
            //Assert
            Assert.AreEqual(18, result);
        }

        [TestMethod]
        public void CreateEmployee()
        {
            //Arrange
            var _provider = new EmployeeProvider();
            var id = 19;
            //Act
            var result = _provider.Create(testEmployee);
            //Assert
            Assert.AreEqual(id, result);
        }

        [TestMethod]
        public void EditEmployee()
        {
            //Arrange
            var _provider = new EmployeeProvider();
            testEmployee.ID = 19;
            testEmployee.PhoneNumber = "07070707";
            testEmployee.PersonalEmail = "oanhoanh@gmail.com";
            //Act
            var result = _provider.Edit(testEmployee);
            //Assert
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void DeletedEmployee()
        {
            //Arrange
            var _provider = new EmployeeProvider();
            testEmployee.ID = 19;
            //Act
            var result = _provider.Delete(testEmployee.ID);
            //Assert
            Assert.IsTrue(result);
        }
    }
}
