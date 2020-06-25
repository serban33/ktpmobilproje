unit KitapListesi;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox, FMX.Edit, FMX.SearchBox,datalar
  ,Unit1
  ;

type
  TFrmKitapListesi = class(TForm)
    ToolBar1: TToolBar;
    Button1: TButton;
    ListBox1: TListBox;
    SearchBox1: TSearchBox;
    ListBoxItem1: TListBoxItem;
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
  FrmKitapListesi: TFrmKitapListesi;
  ws : datalar.DatalarSoap;
  cevap:TCevap;
  kitaplar:ArrayOfTblKitaplar;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

uses YeniKitap;



procedure TFrmKitapListesi.Button1Click(Sender: TObject);
begin
self.Close;
end;

procedure TFrmKitapListesi.Button2Click(Sender: TObject);
var
 yenikitapFormu:TFrmYeniKitap;
begin
  yenikitapFormu := TFrmYeniKitap.Create(Application);
  yenikitapFormu.Show;
end;

procedure TFrmKitapListesi.FormCreate(Sender: TObject);
begin
  if ws = nil then
   ws:=datalar.GetDatalarSoap();
  if cevap = nil then
   cevap:=TCevap.Create;
end;

procedure TFrmKitapListesi.FormShow(Sender: TObject);
var
  I: Integer;
  item:TListBoxItem;
begin

ListBox1.Items.Clear;
 if ws <> nil then
 begin

  kitaplar:= ws.KitapListesi();

  if Length(kitaplar) > 0 then
  begin

   for I := 0 to Length(kitaplar) -1 do
   begin

    //ListBox1.Items.Add(kitaplar[i].)
   item:=TListBoxItem.Create(ListBox1);
   item.Margins.Left:=10;
   item.ItemData.Accessory := TListBoxItemData.TAccessory.aDetail;
   item.ItemData.Detail := 'Yazarý: ' + kitaplar[i].Yazar + ' Yayýn Evi: ' + kitaplar[i].YayýnEvi ;
   item.Text := kitaplar[i].Ad;
   item.Height:=45;
   item.Parent:=ListBox1;
   end;

  end;


 end;

end;

end.
