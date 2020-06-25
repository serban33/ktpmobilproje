using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class TKullaniciIslemleri
{

    private k1.App_Data.DbkEntities Context;

    public TKullaniciIslemleri()
    {
        Context = new k1.App_Data.DbkEntities();
    }

    public TCevap GirisYap(string kullaniciAdi, string sifre)
    {
        TCevap don = new TCevap();
        don.Mesaj = "Hatalı kullanıcı adı veya şifre";

        var r = (from d in Context.TblKullanici where d.KullaniciAdi == kullaniciAdi select d).FirstOrDefault();

        if (r != null)
        {
            if (r.Sifre == sifre)
            {
                don.Mesaj = "";
                don.Basarili = true;
            }
        }

        return don;

    }


    public TCevap Kayit(string kullaniciAdi, string sifre)
    {
        TCevap don = new TCevap();
        don.Mesaj = "Kullanıcı adı kullanımda";

        var r = (from d in Context.TblKullanici where d.KullaniciAdi == kullaniciAdi select d).FirstOrDefault();

        if (r == null)
        {
            Context.TblKullanici.Add(new k1.App_Data.TblKullanici()
            {
                KullaniciAdi = kullaniciAdi,
                Sifre = sifre
            });
            Context.SaveChanges();
            don.Basarili = true;
            don.Mesaj = "Kayıt başarılı";
        }

        return don;
    }

    public List<k1.App_Data.VwKullanicilar> Kullanicilar()
    {
        return (from d in Context.VwKullanicilar orderby d.KullaniciAdi ascending select d).ToList();
    }



}
