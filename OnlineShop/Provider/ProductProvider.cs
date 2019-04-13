using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineShop.Models;

namespace OnlineShop.Provider
{
    public class ProductProvider: BaseProvider
    {
        public Product[] GetProducts()
        {
            try
            {
                Product[] result = db.Products.ToArray();
                return result;
            }
            catch (Exception ex)
            {

                return new Product[] { };
            }
        }

        public Product GetDetails(int ID)
        {
            return db.Products.Find(ID);
        }
        public long Create(Product temp)
        {
            db.Products.Add(temp);
            db.SaveChanges();
            return temp.ID;
        }
        public bool Edit(Product product)
        {
            try
            {
                var temp = db.Products.Find(product.ID);
                temp.ProductName = product.ProductName;
                temp.CategoryID = product.CategoryID;
                temp.UnitPrice = product.UnitPrice;
                temp.UnitsInStock = product.UnitsInStock;
                temp.Discontinued = product.Discontinued;
                temp.Image = product.Image;
                temp.Category = product.Category;
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {

                return false;
            }
        }

        public bool Delete(int ID)
        {
            try
            {
                var delproduct = db.Products.Find(ID);
                db.Products.Remove(delproduct);
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