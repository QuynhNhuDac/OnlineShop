namespace OnlineShop.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Employee")]
    public partial class Employee
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Employee()
        {
            Orders = new HashSet<Order>();
        }

        public int ID { get; set; }

        [StringLength(10)]
        public string EmployeeID { get; set; }

        [Required(ErrorMessage = "Last Name cannot be blank")]
        [StringLength(50)]
        public string LastName { get; set; }

        [Required(ErrorMessage = "First Name cannot be blank")]
        [StringLength(50)]
        public string FirstName { get; set; }

        [StringLength(50)]
        public string Address { get; set; }

        public DateTime? DOB { get; set; }

        [StringLength(50)]
        public string PhoneNumber { get; set; }

        [Required(ErrorMessage = "Company Email cannot be blank")]
        [StringLength(50)]
        public string CompanyEmail { get; set; }

        [StringLength(50)]
        public string PersonalEmail { get; set; }

        [Required(ErrorMessage = "Password cannot be blank")]
        [StringLength(20)]
        public string Password { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Orders { get; set; }
    }
}
