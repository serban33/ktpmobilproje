unit YeniKitap;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Edit, FMX.ListBox,datalar;

type
  TFrmYeniKitap = class(TForm)
    ToolBar1: TToolBar;
    Button1: TButton;
    Layout1: TLayout;
    Label1: TLabel;
    CmbKategori: TComboBox;
    Label2: TLabel;
    TxtYazar: TEdit;
    Label3: TLabel;
    TxtYayinEvi: TEdit;
    Label4: TLabel;
    TxtKonu: TEdit;
    Label5: TLabel;
    TxtAd: TEdit;
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    StyleBook1: TStyleBook;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmYeniKitap: TFrmYeniKitap;
  ws : datalar.DatalarSoap;
  kategoriler:ArrayOfTblKategori;

implementation

{$R *.fmx}

uses Unit1;

procedure TFrmYeniKitap.Button1Click(Sender: TObject);
begin
self.Close;
end;

procedure TFrmYeniKitap.Button2Click(Sender: TObject);
var
kitap:TblKitaplar;
begin

  if (TxtAd.Text = '' )  or (TxtYayinEvi.Text = '') or (TxtKonu.Text = '') or ( TxtAd.Text='') then
  begin
    ShowMessage('T�m alanlar� doldurunuz');
  end
  else
  begin
    kitap:=TblKitaplar.Create;
    kitap.KategoriId :=1;
    kitap.Yazar:=TxtYazar.Text;
    kitap.Konu := TxtKonu.Text;
    kitap.Yay�nEvi :=TxtYayinEvi.Text;
    kitap.Konusu := TxtKonu.Text;
    kitap.Ad := TxtAd.Text;
    ws.KitapEkle(kitap);
    ShowMessage('Kitap Eklendi');
    TxtYazar.Text:='';
    TxtYayinEvi.Text:='';
    TxtKonu.Text:='';
    TxtAd.Text:='';
  end;

end;

procedure TFrmYeniKitap.Button3Click(Sender: TObject);
begin
self.Close;
end;

procedure TFrmYeniKitap.FormCreate(Sender: TObject);
begin
if ws = nil then
   ws:=datalar.GetDatalarSoap();
end;

procedure TFrmYeniKitap.FormShow(Sender: TObject);
var
I: Integer;
begin

  kategoriler:=ws.KitapKategorileri();

 if Length(kategoriler) > 0 then
  begin

   for I := 0 to Length(kategoriler) -1 do
   begin
   CmbKategori.Items.Add(kategoriler[i].KategoriAdi);
   end;

  end;


end;

end.
