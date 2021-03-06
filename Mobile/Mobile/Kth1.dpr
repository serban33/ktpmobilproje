program Kth1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {FrmMain},
  datalar in 'datalar.pas',
  AnaForm in 'AnaForm.pas' {FrmAnaform},
  KitapListesi in 'KitapListesi.pas' {FrmKitapListesi},
  KategoriListesi in 'KategoriListesi.pas' {FrmKategoriListesi},
  KullaniciKitaplari in 'KullaniciKitaplari.pas' {FrmKullaniciKitapListesi},
  YeniKitap in 'YeniKitap.pas' {FrmYeniKitap},
  KullaniciKitapEkle in 'KullaniciKitapEkle.pas' {FrmKullaniciKitapEkle};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmAnaform, FrmAnaform);
  Application.CreateForm(TFrmKitapListesi, FrmKitapListesi);
  Application.CreateForm(TFrmKategoriListesi, FrmKategoriListesi);
  Application.CreateForm(TFrmKullaniciKitapListesi, FrmKullaniciKitapListesi);
  Application.CreateForm(TFrmYeniKitap, FrmYeniKitap);
  Application.CreateForm(TFrmKullaniciKitapEkle, FrmKullaniciKitapEkle);
  Application.Run;
end.
