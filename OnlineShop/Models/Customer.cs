namespace OnlineShop.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Customer")]
    public partial class Customer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Customer()
        {
            Orders = new HashSet<Order>();
        }

        public int ID { get; set; }

        [StringLength(5)]
        public string CustomerID { get; set; }

        [Required(ErrorMessage = "Last Name cannot be blank")]
        [StringLength(30)]
        public string LastName { get; set; }

        [Required(ErrorMessage = "First Name cannot be blank")]
        [StringLength(50)]
        public string FirstName { get; set; }

        [StringLength(50)]
        public string Address { get; set; }

        [StringLength(50)]
        public string PhoneNumber { get; set; }

        public DateTime? DOB { get; set; }

        
        [StringLength(50)]
        public string Email { get; set; }

        [Required(ErrorMessage = " Username cannot be blank")]
        [StringLength(500)]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Password cannot be blank")]
        [StringLength(20)]
        public string Password { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Orders { get; set; }
    }
}
