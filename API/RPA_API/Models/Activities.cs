namespace RPA_API.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Activities
    {
        [Key]
        public int id_act { get; set; }

        [Required]
        [StringLength(600)]
        public string place { get; set; }

        [StringLength(1500)]
        public string description { get; set; }

        public int id_zone { get; set; }

        public int id_type { get; set; }

        public virtual Types Types { get; set; }

        public virtual Zones Zones { get; set; }
    }
}
