using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace k1.Controllers
{
    public class HomeController : Controller
    {
        private TKullaniciIslemleri kullaniciIslemleri;
        private TKitap kitap;
        public HomeController()
        {
            kullaniciIslemleri = new TKullaniciIslemleri();

            kitap = new TKitap();
        }
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult KullaniciGiris(string KullaniciAdi, string Sifre)
        {
            TCevap cevap = kullaniciIslemleri.GirisYap(KullaniciAdi, Sifre);
            return Json(cevap, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult KullaniciKayit(string KullaniciAdi, string Sifre)
        {
            TCevap cevap = kullaniciIslemleri.Kayit(KullaniciAdi, Sifre);
            return Json(cevap, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public ActionResult KullaniciKitapListem(string kullaniciId)
        {
            List<App_Data.TblKullaniciKitaplar> Kitaplar = kitap.KullaniciKitapListesi(kullaniciId);
            return Json(Kitaplar, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult KullaniciKitapEkle(int KullaniciId, string adSoyad, string TC, string TelefonNumarasi, DateTime VerilmeTarihi, string KitapIsmi)
        {
            App_Data.TblKullaniciKitaplar kullaniciKitap = new App_Data.TblKullaniciKitaplar();
            kullaniciKitap.AdSoyad = adSoyad;
            kullaniciKitap.KullaniciId = KullaniciId;
            kullaniciKitap.TC = TC;
            kullaniciKitap.TelefonNumarasi = TelefonNumarasi;
            kullaniciKitap.VerilmeTarihi = VerilmeTarihi;
            TCevap Cevap = kitap.KullaniciKitapEkle(kullaniciKitap, KitapIsmi);
            return Json(Cevap, JsonRequestBehavior.AllowGet);
        }

    }
}