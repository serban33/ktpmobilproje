unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, REST.Types,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,datalar,AnaForm;

type
  TFrmMain = class(TForm)
    Layout1: TLayout;
    Label1: TLabel;
    TxtKullaniciAdi: TEdit;
    Label2: TLabel;
    TxtSifre: TEdit;
    Panel1: TPanel;
    BtnGiris: TButton;
    BtnCikis: TButton;
    StyleBook1: TStyleBook;
    procedure BtnGirisClick(Sender: TObject);
    procedure BtnCikisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;
  ws : datalar.DatalarSoap;
  anaForm: TFrmAnaform;


implementation

{$R *.fmx}

uses KategoriListesi, KitapListesi, KullaniciKitapEkle, KullaniciKitaplari,
  YeniKitap;
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}




procedure TFrmMain.BtnCikisClick(Sender: TObject);
begin
self.Close;
end;

procedure TFrmMain.BtnGirisClick(Sender: TObject);
var
cevap:TCevap;

begin

  if ws = nil then
   ws:=datalar.GetDatalarSoap();
  if cevap = nil then
   cevap:=TCevap.Create;

  cevap:=ws.KullaniciGiris(TxtKullaniciAdi.Text, TxtSifre.Text);

  if (cevap <> nil) then
  begin
    if not (cevap.Basarili) then
     ShowMessage(cevap.Mesaj)
    else
    begin
      anaForm:=TFrmAnaform.Create(Application);
      anaForm.LblGirisYapanKullanici.Text:=TxtKullaniciAdi.Text;
      anaForm.Show;

    end;
  end;



end;

end.