unit KategoriListesi;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.SearchBox, FMX.Layouts, FMX.ListBox,datalar;

type
  TFrmKategoriListesi = class(TForm)
    ToolBar1: TToolBar;
    Button1: TButton;
    ListBox1: TListBox;
    SearchBox1: TSearchBox;
    ListBoxHeader1: TListBoxHeader;
    Button2: TButton;
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
  FrmKategoriListesi: TFrmKategoriListesi;
  ws : datalar.DatalarSoap;
  cevap:TCevap;
  kategoriler:ArrayOfTblKategori;

implementation

{$R *.fmx}

uses  Unit1;

procedure TFrmKategoriListesi.Button1Click(Sender: TObject);
begin
self.Close;
end;

procedure TFrmKategoriListesi.Button2Click(Sender: TObject);
begin

  InputBox('Kategori','�smi giriniz','',
    procedure(const AResult: TModalResult; const AValue: string)
    begin

      ws.KategoriEkle(AValue);
      ShowMessage('Eklendi');

    end
    );

end;

procedure TFrmKategoriListesi.FormCreate(Sender: TObject);
begin
  if ws = nil then
   ws:=datalar.GetDatalarSoap();
  if cevap = nil then
   cevap:=TCevap.Create;
end;

procedure TFrmKategoriListesi.FormShow(Sender: TObject);
var
  I: Integer;
  item:TListBoxItem;
begin

 ListBox1.Items.Clear;
 if ws <> nil then
 begin

   kategoriler:=ws.KitapKategorileri();


  if Length(kategoriler) > 0 then
  begin

   for I := 0 to Length(kategoriler) -1 do
   begin
   item:=TListBoxItem.Create(ListBox1);
   item.Margins.Left:=10;
   item.ItemData.Accessory := TListBoxItemData.TAccessory.aDetail;
   item.Text := kategoriler[i].KategoriAdi;
   item.Height:=45;
   item.Parent:=ListBox1;
   end;

  end;

 end;

end;

end.
