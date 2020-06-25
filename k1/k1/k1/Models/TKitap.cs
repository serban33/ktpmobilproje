using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using k1.App_Data;

public class TKitap
{
    private k1.App_Data.DbkEntities Context;
    public TKitap()
    {
        Context = new k1.App_Data.DbkEntities();
    }

    public List<k1.App_Data.TblKitaplar> KitapListesi()
    {
        return (from d in Context.TblKitaplar orderby d.KitapId select d).ToList();
    }

    public void KitapEkle(TblKitaplar kitap)
    {
        Context.TblKitaplar.Add(kitap);
        Context.SaveChanges();
    }

    public List<k1.App_Data.TblKategori> KitapKategoriListesi()
    {
        return (from d in Context.TblKategori orderby d.KategoriId select d).ToList();
    }

    public List<k1.App_Data.TblKullaniciKitaplar> KullaniciKitapListesi(string KullaniciId)
    {
        int iKullaniciId = int.Parse(KullaniciId);
        return (from d in Context.TblKullaniciKitaplar where d.KullaniciId == iKullaniciId orderby d.VerilmeTarihi descending select d).ToList();
    }

    public List<k1.App_Data.VwKullaniciKitapListesi> KullaniciKitapListesi1(string KullaniciId)
    {
        int iKullaniciId = int.Parse(KullaniciId);
        return (from d in Context.VwKullaniciKitapListesi where d.KullaniciId == iKullaniciId orderby d.VerilmeTarihi descending select d).ToList();
    }

    public TCevap KullaniciKitapEkle(k1.App_Data.TblKullaniciKitaplar kitap, string KitapIsmi)
    {
        TCevap cevap = new TCevap();
        cevap.Mesaj = "Kullanıcıya Kitap Verilemedi";

        try
        {
            kitap.KitapId = (from d in Context.TblKitaplar where d.Ad == KitapIsmi select d).FirstOrDefault().KitapId;
            Context.TblKullaniciKitaplar.Add(kitap);
            Context.SaveChanges();
            cevap.Basarili = true;
            cevap.Mesaj = "";
        }
        catch (Exception ex)
        {
            cevap.Mesaj = cevap.Mesaj + " Ex: " + ex.Message;
        }

        return cevap;
    }


    public void KategoriEkle(string KategoriAdi)
    {
        Context.TblKategori.Add(new TblKategori()
        {
            KategoriAdi = KategoriAdi
        });
        Context.SaveChanges();
    }

}
