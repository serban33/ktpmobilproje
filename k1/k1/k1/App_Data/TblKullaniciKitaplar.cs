//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace k1.App_Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class TblKullaniciKitaplar
    {
        public int Id { get; set; }
        public Nullable<int> KullaniciId { get; set; }
        public Nullable<System.DateTime> VerilmeTarihi { get; set; }
        public string AdSoyad { get; set; }
        public string TC { get; set; }
        public string TelefonNumarasi { get; set; }
        public Nullable<int> KitapId { get; set; }
    }
}
