using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineShop.Models;

namespace OnlineShop.Provider
{
    public class CustomerProvider: BaseProvider
    {
        public Customer[] GetAllCustomers()
        {
            try
            {
                Customer[] result = db.Customers.ToArray();
                return result;
            }
            catch (Exception ex)
            {

                return new Customer[] { };
            }
        }

        public Customer GetDetails(int ID)
        {
            return db.Customers.Find(ID);
        }
        public long Create(Customer temp)
        {
            db.Customers.Add(temp);
            db.SaveChanges();
            return temp.ID;
        }
        public bool Edit(Customer customer)
        {
            try
            {
                var temp = db.Customers.Find(customer.ID);
                temp.CustomerID = customer.CustomerID;
                temp.FirstName = customer.FirstName;
                temp.LastName = customer.LastName;
                temp.Address = customer.Address;
                temp.PhoneNumber = customer.PhoneNumber;
                temp.DOB = customer.DOB;
                temp.Email = customer.Email;
                temp.Password = customer.Password;
                temp.UserName = customer.UserName;
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
                var delcus = db.Customers.Find(ID);
                db.Customers.Remove(delcus);
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