using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineShop.Models;

namespace OnlineShop.Provider
{
    public class EmployeeProvider:BaseProvider
    {
        public Employee[] GetEmployees()
        {
            try
            {
                Employee[] result = db.Employees.ToArray();
                return result;
            }
            catch (Exception ex)
            {

                return new Employee[] { };
            }
        }

        public Employee GetDetails(int ID)
        {
            return db.Employees.Find(ID);
        }
        public long Create(Employee temp)
        {
            db.Employees.Add(temp);
            db.SaveChanges();
            return temp.ID;
        }
        public bool Edit(Employee employee)
        {
            try
            {
                var temp = db.Employees.Find(employee.ID);
                temp.EmployeeID = employee.EmployeeID;
                temp.FirstName = employee.FirstName;
                temp.LastName = employee.LastName;
                temp.Address = employee.Address;
                temp.DOB = employee.DOB;
                temp.PhoneNumber = employee.PhoneNumber;
                temp.CompanyEmail = employee.CompanyEmail;
                temp.PersonalEmail = employee.PersonalEmail;
                temp.Password = employee.Password;
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
                var delemployee = db.Employees.Find(ID);
                db.Employees.Remove(delemployee);
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }


        }

        public bool Login(string email, string pass)
        {
            var result = db.Employees.Count(x => x.CompanyEmail == email && x.Password == pass);
            if (result > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public Employee GetByEmail(string email)
        {
            return db.Employees.SingleOrDefault(x => x.CompanyEmail == email);

        }
    }
}