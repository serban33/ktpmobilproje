unit KullaniciKitapEkle;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.ListBox, FMX.Layouts,
  datalar, Unit1
  ;

type
  TFrmKullaniciKitapEkle = class(TForm)
    ToolBar1: TToolBar;
    Button1: TButton;
    Layout1: TLayout;
    Label1: TLabel;
    CmbKitap: TComboBox;
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    Label2: TLabel;
    TxtAdSoyad: TEdit;
    Label3: TLabel;
    TxtTc: TEdit;
    Label4: TLabel;
    TxtTelefon: TEdit;
    StyleBook1: TStyleBook;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmKullaniciKitapEkle: TFrmKullaniciKitapEkle;
  ws : datalar.DatalarSoap;
  kitaplar:ArrayOfTblKitaplar;
  kullanicilar:ArrayOfVwKullanicilar;


implementation

{$R *.fmx}



procedure TFrmKullaniciKitapEkle.Button1Click(Sender: TObject);
begin
self.Close;
end;

procedure TFrmKullaniciKitapEkle.Button2Click(Sender: TObject);
var
 cevap:tcevap;
begin

  if cevap=nil then
   cevap :=TCevap.Create;

  if (CmbKitap.Selected = nil) or (TxtAdSoyad.Text = '') or (TxtTc.Text = '') or (TxtTelefon.Text='') then
  begin
    ShowMessage('T�m alanlar� doldurun');
  end
  else
  begin
  cevap:=ws.KullaniciKitapEkle(1, TxtAdSoyad.Text, TxtTc.Text, TxtTelefon.Text, nil, CmbKitap.Selected.Text);

  if not cevap.Basarili then
  begin
   ShowMessage(cevap.Mesaj);
  end
  else
  begin
   ShowMessage('Eklendi');
  end;


  end;


end;

procedure TFrmKullaniciKitapEkle.FormCreate(Sender: TObject);
begin
if ws = nil then
   ws:=datalar.GetDatalarSoap();
end;

procedure TFrmKullaniciKitapEkle.FormShow(Sender: TObject);
var
  I: Integer;

begin

 kitaplar:=ws.KitapListesi();

  if Length(kitaplar) > 0 then
  begin
   CmbKitap.Items.Clear;
   for I := 0 to Length(kitaplar) -1 do
   begin
   CmbKitap.Items.Add(kitaplar[i].Ad);
   end;

  end;

  if Length(kullanicilar) > 0 then
  begin


  end;


end;

end.
