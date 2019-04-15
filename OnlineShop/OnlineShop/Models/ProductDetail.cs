namespace OnlineShop.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ProductDetail")]
    public partial class ProductDetail
    {
        public int ID { get; set; }

        public int ProductID { get; set; }

        [StringLength(500)]
        public string Description { get; set; }

        public virtual Product Product { get; set; }
    }
}
