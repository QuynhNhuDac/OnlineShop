using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineShop.Models;

namespace OnlineShop.Provider
{
    public class ShipperProvider: BaseProvider
    {
        public Shipper[] GetShippers()
        {
            try
            {
                Shipper[] result = db.Shippers.ToArray();
                return result;
            }
            catch (Exception ex)
            {

                return new Shipper[] { };
            }
        }

        public Shipper GetDetails(int ID)
        {
            return db.Shippers.Find(ID);
        }
        public long Create(Shipper temp)
        {
            db.Shippers.Add(temp);
            db.SaveChanges();
            return temp.ID;
        }
        public bool Edit(Shipper shipper)
        {
            try
            {
                var temp = db.Shippers.Find(shipper.ID);
                temp.Name = shipper.Name;
                temp.Address = shipper.Address;
                temp.Phone = shipper.Phone;
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
                var delshipper = db.Shippers.Find(ID);
                db.Shippers.Remove(delshipper);
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