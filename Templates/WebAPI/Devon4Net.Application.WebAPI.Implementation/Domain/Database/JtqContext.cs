using System;
using System.Collections.Generic;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Devon4Net.Application.WebAPI.Implementation.Domain.Database
{
    /// <summary>
    /// JtqContext class
    /// </summary>
    public partial class JtqContext : DbContext
    {
        /// <summary>
        /// JtqContext() constructor
        /// </summary>
        public JtqContext()
        {
        }

        /// <summary>
        /// JtqContext(DbContextOptions) constructor
        /// </summary>
        public JtqContext(DbContextOptions<JtqContext> options) : base(options)
        {
        }

        /// <summary>
        /// AccessCodes
        /// </summary>
        public virtual DbSet<AccessCode> AccessCodes { get; set; }
        /// <summary>
        /// Pruebas
        /// </summary>
        public virtual DbSet<Prueba> Pruebas { get; set; }
        /// <summary>
        /// Queues
        /// </summary>
        public virtual DbSet<Queue> Queues { get; set; }
        /// <summary>
        /// visitors
        /// </summary>
        public virtual DbSet<Visitor> Visitors { get; set; }

        /// <summary>
        /// OnModelCreating method
        /// </summary>
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.UseCollation("utf8mb4_0900_ai_ci")
                .HasCharSet("utf8mb4");

            modelBuilder.Entity<AccessCode>(entity =>
            {
                entity.HasKey(e => e.IdaccessCode)
                    .HasName("PRIMARY");

                entity.ToTable("AccessCode");

                entity.HasCharSet("utf8")
                    .UseCollation("utf8_general_ci");

                entity.HasIndex(e => e.VisitorId, "AccessCode_FK");

                entity.HasIndex(e => e.QueueId, "AccessCode_FK_1");

                entity.Property(e => e.IdaccessCode)
                    .HasMaxLength(100)
                    .HasColumnName("IDAccessCode");

                entity.Property(e => e.CreationTime)
                    .HasMaxLength(100)
                    .HasColumnName("creationTime");

                entity.Property(e => e.EndTime)
                    .HasMaxLength(100)
                    .HasColumnName("endTime");

                entity.Property(e => e.QueueId)
                    .IsRequired()
                    .HasMaxLength(100)
                    .HasColumnName("queueID");

                entity.Property(e => e.StartTime)
                    .HasMaxLength(100)
                    .HasColumnName("startTime");

                entity.Property(e => e.TicketNumber)
                    .IsRequired()
                    .HasMaxLength(100)
                    .HasColumnName("ticketNumber");

                entity.Property(e => e.VisitorId)
                    .IsRequired()
                    .HasMaxLength(100)
                    .HasColumnName("visitorID");

                entity.HasOne(d => d.Queue)
                    .WithMany(p => p.AccessCodes)
                    .HasForeignKey(d => d.QueueId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("AccessCode_FK_1");

                entity.HasOne(d => d.Visitor)
                    .WithMany(p => p.AccessCodes)
                    .HasForeignKey(d => d.VisitorId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("AccessCode_FK");
            });

            modelBuilder.Entity<Prueba>(entity =>
            {
                entity.ToTable("prueba");

                entity.HasCharSet("utf8")
                    .UseCollation("utf8_general_ci");

                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .HasColumnName("ID");

                entity.Property(e => e.Nombre).HasMaxLength(100);
            });

            modelBuilder.Entity<Queue>(entity =>
            {
                entity.HasKey(e => e.IdQueue)
                    .HasName("PRIMARY");

                entity.ToTable("Queue");

                entity.HasCharSet("utf8")
                    .UseCollation("utf8_general_ci");

                entity.Property(e => e.IdQueue)
                    .HasMaxLength(100)
                    .HasColumnName("IDQueue");

                entity.Property(e => e.AttentionTime)
                    .HasMaxLength(100)
                    .HasColumnName("attentionTime");

                entity.Property(e => e.CurrentNumber)
                    .HasMaxLength(100)
                    .HasColumnName("currentNumber")
                    .HasDefaultValueSql("'1'");

                entity.Property(e => e.Customers)
                    .HasColumnName("customers")
                    .HasDefaultValueSql("'0'");

                entity.Property(e => e.Logo)
                    .HasMaxLength(100)
                    .HasColumnName("logo");

                entity.Property(e => e.MinAttentionTime)
                    .HasMaxLength(100)
                    .HasColumnName("minAttentionTime");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(100)
                    .HasColumnName("name");
            });

            modelBuilder.Entity<Visitor>(entity =>
            {
                entity.HasKey(e => e.IdVisitor)
                    .HasName("PRIMARY");

                entity.ToTable("Visitor");

                entity.HasCharSet("utf8")
                    .UseCollation("utf8_general_ci");

                entity.Property(e => e.IdVisitor)
                    .HasMaxLength(100)
                    .HasColumnName("IDVisitor");

                entity.Property(e => e.AcceptedCommercial).HasColumnName("acceptedCommercial");

                entity.Property(e => e.AcceptedTerms).HasColumnName("acceptedTerms");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(100)
                    .HasColumnName("name");

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(100)
                    .HasColumnName("password");

                entity.Property(e => e.PhoneNumber)
                    .HasMaxLength(100)
                    .HasColumnName("phoneNumber");

                entity.Property(e => e.UserType).HasColumnName("userType");

                entity.Property(e => e.Username)
                    .IsRequired()
                    .HasMaxLength(100)
                    .HasColumnName("username");
            });

        }

    }
}
