using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineShop.Models;
namespace OnlineShop.Provider
{
    public class CategoryProvider:BaseProvider
    {
        public Category[] GetAllCategories()
        {
            try
            {
                Category[] result = db.Categories.ToArray();
                return result;
            }
            catch (Exception ex)
            {

                return new Category[] { };
            }
        }

        public Category GetDetails(int ID)
        {
            return db.Categories.Find(ID);
        }
        public long Create(Category temp)
        {
            db.Categories.Add(temp);
            db.SaveChanges();
            return temp.ID;
        }
        public bool EditCategory(Category category)
        {
            try
            {
                var temp = db.Categories.Find(category.ID);
                temp.CategoryName = category.CategoryName;
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {

                return false;
            }
        }

        public bool DeleteCategory(int ID)
        {
            try
            {
                var delcategory = db.Categories.Find(ID);
                db.Categories.Remove(delcategory);
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }


        }
    }
}