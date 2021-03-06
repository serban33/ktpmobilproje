unit KullaniciKitaplari;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.SearchBox, FMX.Layouts, FMX.ListBox,datalar;

type
  TFrmKullaniciKitapListesi = class(TForm)
    ToolBar1: TToolBar;
    Button1: TButton;
    ListBox1: TListBox;
    SearchBox1: TSearchBox;
    ListBoxHeader1: TListBoxHeader;
    Button2: TButton;
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
  FrmKullaniciKitapListesi: TFrmKullaniciKitapListesi;
  ws : datalar.DatalarSoap;
  cevap:TCevap;
  kullaniciKitapListesi:ArrayOfVwKullaniciKitapListesi;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}

uses AnaForm,  Unit1, YeniKitap, KullaniciKitapEkle;

procedure TFrmKullaniciKitapListesi.Button1Click(Sender: TObject);
begin
self.Close;
end;

procedure TFrmKullaniciKitapListesi.Button2Click(Sender: TObject);

begin

 FrmKullaniciKitapEkle.Show;


end;

procedure TFrmKullaniciKitapListesi.FormCreate(Sender: TObject);
begin
  if ws = nil then
   ws:=datalar.GetDatalarSoap();
  if cevap = nil then
   cevap:=TCevap.Create;
end;

procedure TFrmKullaniciKitapListesi.FormShow(Sender: TObject);
var
  I: Integer;
  item:TListBoxItem;
begin


 ListBox1.Items.Clear;
 if ws <> nil then
 begin

  kullaniciKitapListesi:=ws.KullaniciKitapListesi1('1');

  if Length(kullaniciKitapListesi) > 0 then
  begin

   for I := 0 to Length(kullaniciKitapListesi) -1 do
   begin
   item:=TListBoxItem.Create(ListBox1);
   item.Margins.Left:=10;
   item.ItemData.Accessory:= TListBoxItemData.TAccessory.aDetail;
   item.ItemData.Detail:=kullaniciKitapListesi[i].TC;
   item.Text := kullaniciKitapListesi[i].AdSoyad;
   item.Height:=45;
   item.Parent:=ListBox1;
   end;

  end;

 end;

end;

end.
