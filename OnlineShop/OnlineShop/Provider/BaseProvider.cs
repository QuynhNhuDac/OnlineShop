using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineShop.Models;

namespace OnlineShop.Provider
{
    public class BaseProvider
    {
        public OnlineShopDBContext db = null;
        public BaseProvider()
        {
            db = new OnlineShopDBContext();
        }
    }
}