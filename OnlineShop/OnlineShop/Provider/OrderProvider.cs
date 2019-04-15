using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineShop.Models;

namespace OnlineShop.Provider
{
    public class OrderProvider:BaseProvider
    {
        public Order[] GetOrders()
        {
            try
            {
                Order[] result = db.Orders.ToArray();
                return result;
            }
            catch (Exception ex)
            {

                return new Order[] { };
            }
        }

        public Order GetDetails(int ID)
        {
            return db.Orders.Find(ID);
        }
        public long Create(Order temp)
        {
            db.Orders.Add(temp);
            db.SaveChanges();
            return temp.ID;
        }
        public bool Edit(Order order)
        {
            try
            {
                var temp = db.Orders.Find(order.ID);
                temp.OrderID = order.OrderID;
                temp.CustomerID = order.CustomerID;
                temp.OrderDate = order.OrderDate;
                temp.RequiredDate = order.RequiredDate;
                temp.ShippedDate = order.ShippedDate;
                temp.ShipVia = order.ShipVia;
                temp.Freight = order.Freight;
                temp.ShipName = order.ShipName;
                temp.ShipAddress = order.ShipAddress;
                temp.DeliveryCost = order.DeliveryCost;
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {

                return false;
            }
        }

        public bool Delete (int ID)
        {
            try
            {
                var delorder = db.Orders.Find(ID);
                db.Orders.Remove(delorder);
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