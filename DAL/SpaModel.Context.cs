﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DB_SPAEntities : DbContext
    {
        public DB_SPAEntities()
            : base("name=DB_SPAEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<CHI_NHANH> CHI_NHANH { get; set; }
        public DbSet<CHI_TIET_HOA_DON> CHI_TIET_HOA_DON { get; set; }
        public DbSet<DICH_VU> DICH_VU { get; set; }
        public DbSet<HOA_DON> HOA_DON { get; set; }
        public DbSet<KHACH_HANG> KHACH_HANG { get; set; }
        public DbSet<LICH_HEN> LICH_HEN { get; set; }
        public DbSet<SAN_PHAM> SAN_PHAM { get; set; }
        public DbSet<TAI_KHOAN> TAI_KHOAN { get; set; }
        public DbSet<NHAN_VIEN> NHAN_VIEN { get; set; }
    }
}
