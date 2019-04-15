namespace OnlineShop.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            Order_Details = new HashSet<Order_Detail>();
            ProductDetails = new HashSet<ProductDetail>();
        }

        public int ID { get; set; }

        [Required(ErrorMessage = "Product Name cannot be blank")]
        [StringLength(500)]
        public string ProductName { get; set; }

        [Required(ErrorMessage = "CategoryID cannot be blank")]
        public int CategoryID { get; set; }

        [Required(ErrorMessage = "Unit Price cannot be blank")]
        public double UnitPrice { get; set; }

        public int? UnitsInStock { get; set; }

        public bool? Discontinued { get; set; }

        public string Image { get; set; }

        public virtual Category Category { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order_Detail> Order_Details { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductDetail> ProductDetails { get; set; }
    }
}
