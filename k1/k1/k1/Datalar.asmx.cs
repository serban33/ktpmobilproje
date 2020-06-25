using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace k1
{
    /// <summary>
    /// Summary description for Datalar
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Datalar : System.Web.Services.WebService
    {
        private TKullaniciIslemleri kullaniciIslemleri;
        private TKitap kitap;
        public Datalar()
        {
            kullaniciIslemleri = new TKullaniciIslemleri();
            kitap = new TKitap();
        }

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }


        [WebMethod]
        public TCevap KullaniciGiris(string KullaniciAdi, string Sifre)
        {
            return kullaniciIslemleri.GirisYap(KullaniciAdi, Sifre);
        }

        [WebMethod]
        public TCevap KullaniciKayit(string KullaniciAdi, string Sifre)
        {
            return kullaniciIslemleri.Kayit(KullaniciAdi, Sifre);
        }

        [WebMethod]
        public List<App_Data.TblKullaniciKitaplar> KullaniciKitapListem(string kullaniciId)
        {
            return kitap.KullaniciKitapListesi(kullaniciId);
        }

        [WebMethod]
        public List<App_Data.VwKullaniciKitapListesi> KullaniciKitapListesi1(string kullaniciId)
        {
            return kitap.KullaniciKitapListesi1(kullaniciId);
        }

        [WebMethod]
        public TCevap  KullaniciKitapEkle(int KullaniciId, string adSoyad, string TC, string TelefonNumarasi, DateTime VerilmeTarihi, string KitapIsmi)
        {
            App_Data.TblKullaniciKitaplar kullaniciKitap = new App_Data.TblKullaniciKitaplar();            
            kullaniciKitap.AdSoyad = adSoyad;
            kullaniciKitap.KullaniciId = KullaniciId;
            kullaniciKitap.TC = TC;
            kullaniciKitap.TelefonNumarasi = TelefonNumarasi;
            kullaniciKitap.VerilmeTarihi = VerilmeTarihi;
            TCevap Cevap = kitap.KullaniciKitapEkle(kullaniciKitap, KitapIsmi);
            return Cevap;
        }

        [WebMethod]
        public void KategoriEkle(string KategoriAdi)
        {
            kitap.KategoriEkle(KategoriAdi);
        }

        [WebMethod]
        public void KitapEkle(App_Data.TblKitaplar kitapdetay)
        {
            kitap.KitapEkle(kitapdetay);
        }


        [WebMethod]
        public List<App_Data.TblKitaplar> KitapListesi()
        {
            return kitap.KitapListesi();
        }

        [WebMethod]
        public List<App_Data.TblKategori> KitapKategorileri()
        {
            return kitap.KitapKategoriListesi();
        }

        [WebMethod]
        public List<App_Data.VwKullanicilar> KullaniciListesi()
        {
            return kullaniciIslemleri.Kullanicilar();
        }

    }
}
