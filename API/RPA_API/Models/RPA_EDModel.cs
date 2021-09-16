using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace RPA_API.Models
{
    public partial class RPA_EDModel : DbContext
    {
        public RPA_EDModel()
            : base("name=RPA_EDModel")
        {
        }

        public virtual DbSet<Activities> Activities { get; set; }
        public virtual DbSet<Types> Types { get; set; }
        public virtual DbSet<Zones> Zones { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Activities>()
                .Property(e => e.place)
                .IsUnicode(false);

            modelBuilder.Entity<Activities>()
                .Property(e => e.description)
                .IsUnicode(false);

            modelBuilder.Entity<Types>()
                .Property(e => e.type)
                .IsUnicode(false);

            modelBuilder.Entity<Types>()
                .HasMany(e => e.Activities)
                .WithRequired(e => e.Types)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Zones>()
                .Property(e => e.zone)
                .IsUnicode(false);

            modelBuilder.Entity<Zones>()
                .HasMany(e => e.Activities)
                .WithRequired(e => e.Zones)
                .WillCascadeOnDelete(false);
        }
    }
}
