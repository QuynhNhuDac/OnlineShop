namespace OnlineShop.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Order")]
    public partial class Order
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Order()
        {
            Order_Details = new HashSet<Order_Detail>();
        }

        public int ID { get; set; }

        [StringLength(7)]
        public string OrderID { get; set; }

        public int CustomerID { get; set; }

        public int EmployeeID { get; set; }

        public DateTime OrderDate { get; set; }

        public DateTime RequiredDate { get; set; }

        public DateTime ShippedDate { get; set; }

        public int ShipVia { get; set; }

        public double Freight { get; set; }

        [Required]
        [StringLength(500)]
        public string ShipName { get; set; }

        [Required]
        [StringLength(500)]
        public string ShipAddress { get; set; }

        [StringLength(500)]
        public string ShipCity { get; set; }

        [StringLength(500)]
        public string ShipRegion { get; set; }

        [StringLength(5)]
        public string ShipPostalCode { get; set; }

        [StringLength(500)]
        public string ShipCountry { get; set; }

        public double DeliveryCost { get; set; }

        public virtual Customer Customer { get; set; }

        public virtual Employee Employee { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order_Detail> Order_Details { get; set; }

        public virtual Shipper Shipper { get; set; }
    }
}
