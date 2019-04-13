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
        private Category testCategory;
        private int testing;
        public CategoryProviderTest()
        {
            testCategory = new Category();
            testCategory.CategoryName = "CookBook";
        }

        public int getEmployee()
        {
            var _provider = new CategoryProvider();
            testing = _provider.GetAllCategories().Length;
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
        public void GetAllCategories()
        {
            //Arrange
            var _provider = new CategoryProvider();
            getEmployee();
            //Act
            var result = _provider.GetAllCategories().Length;
            var expected = testing;
            //Assert
            Assert.AreEqual(expected, result);
        }

        [TestMethod]
        [DeploymentItem("CategoryTestData.csv")]
        [DataSource("Microsoft.VisualStudio.TestTools.DataSource.CSV", "|DataDirectory|\\CategoryTestData.csv", "CategoryTestData#csv", DataAccessMethod.Sequential)]

        public void GetDetailsByIdData()
        {
            //Arrange
            var _provider = new CategoryProvider();
            var id = Int32.Parse(TestContext.DataRow[0].ToString());
            var name = TestContext.DataRow[1].ToString();
            //Act
            var result = _provider.GetDetails(id);
            //Assert
            Assert.AreEqual(name, result.CategoryName);
        }

        [TestMethod]
        public void CreateCategory()
        {
            //Arrange
            var _provider = new CategoryProvider();
            var expected = "CookBook";
            //Act
            var result = Int32.Parse(_provider.Create(testCategory).ToString());
            var actual = _provider.GetDetails(result);
            //Assert
            Assert.AreEqual(expected, actual.CategoryName);
        }

        [TestMethod]
        public void EditCategory()
        {
            //Arrange
            var _provider = new CategoryProvider();
            var newCategory = new Category();
            newCategory.ID = 4;
            newCategory.CategoryName = "CookCategory";
            //Act
            var result = _provider.EditCategory(newCategory);
            //Assert
            Assert.IsTrue(result, "Can't find this category!");
        }

        [TestMethod]
        public void DeleteCategory()
        {
            //Arrange
            var _provider = new CategoryProvider();
            testCategory.ID = 4;
            //Act
            var result = _provider.DeleteCategory(testCategory.ID);
            //Assert
            Assert.IsTrue(result);
        }
    }
}
