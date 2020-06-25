unit AnaForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts;

type
  TFrmAnaform = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    Label1: TLabel;
    LblGirisYapanKullanici: TLabel;
    Button1: TButton;
    Layout1: TLayout;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    StyleBook1: TStyleBook;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAnaform: TFrmAnaform;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

uses datalar, Unit1, KategoriListesi, KitapListesi, KullaniciKitaplari;

procedure TFrmAnaform.Button1Click(Sender: TObject);
begin
self.Close;
end;

procedure TFrmAnaform.Button2Click(Sender: TObject);
begin
  FrmKategoriListesi.Show;
end;

procedure TFrmAnaform.Button4Click(Sender: TObject);
begin
  FrmKullaniciKitapListesi.Show;
end;

procedure TFrmAnaform.Button5Click(Sender: TObject);
begin
  FrmKitapListesi.Show;
end;

end.
