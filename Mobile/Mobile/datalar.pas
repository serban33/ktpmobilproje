// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:53179/datalar.asmx?WSDL
//  >Import : http://localhost:53179/datalar.asmx?WSDL>0
// Encoding : utf-8
// Version  : 1.0
// (22.06.2020 14:26:50 - - $Rev: 93209 $)
// ************************************************************************ //

unit datalar;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  TCevap               = class;                 { "http://tempuri.org/"[GblCplx] }
  TblKullaniciKitaplar = class;                 { "http://tempuri.org/"[GblCplx] }
  TblKategori          = class;                 { "http://tempuri.org/"[GblCplx] }
  VwKullanicilar       = class;                 { "http://tempuri.org/"[GblCplx] }
  VwKullaniciKitapListesi = class;              { "http://tempuri.org/"[GblCplx] }
  TblKitaplar          = class;                 { "http://tempuri.org/"[GblCplx] }

  ArrayOfTblKullaniciKitaplar = array of TblKullaniciKitaplar;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : TCevap, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  TCevap = class(TRemotable)
  private
    FBasarili: Boolean;
    FMesaj: string;
    FMesaj_Specified: boolean;
    procedure SetMesaj(Index: Integer; const Astring: string);
    function  Mesaj_Specified(Index: Integer): boolean;
  published
    property Basarili: Boolean  read FBasarili write FBasarili;
    property Mesaj:    string   Index (IS_OPTN) read FMesaj write SetMesaj stored Mesaj_Specified;
  end;



  // ************************************************************************ //
  // XML       : TblKullaniciKitaplar, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  TblKullaniciKitaplar = class(TRemotable)
  private
    FId: Integer;
    FKullaniciId: Integer;
    FVerilmeTarihi: TXSDateTime;
    FAdSoyad: string;
    FAdSoyad_Specified: boolean;
    FTC: string;
    FTC_Specified: boolean;
    FTelefonNumarasi: string;
    FTelefonNumarasi_Specified: boolean;
    FKitapId: Integer;
    procedure SetAdSoyad(Index: Integer; const Astring: string);
    function  AdSoyad_Specified(Index: Integer): boolean;
    procedure SetTC(Index: Integer; const Astring: string);
    function  TC_Specified(Index: Integer): boolean;
    procedure SetTelefonNumarasi(Index: Integer; const Astring: string);
    function  TelefonNumarasi_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:              Integer      read FId write FId;
    property KullaniciId:     Integer      Index (IS_NLBL) read FKullaniciId write FKullaniciId;
    property VerilmeTarihi:   TXSDateTime  Index (IS_NLBL) read FVerilmeTarihi write FVerilmeTarihi;
    property AdSoyad:         string       Index (IS_OPTN) read FAdSoyad write SetAdSoyad stored AdSoyad_Specified;
    property TC:              string       Index (IS_OPTN) read FTC write SetTC stored TC_Specified;
    property TelefonNumarasi: string       Index (IS_OPTN) read FTelefonNumarasi write SetTelefonNumarasi stored TelefonNumarasi_Specified;
    property KitapId:         Integer      Index (IS_NLBL) read FKitapId write FKitapId;
  end;

  ArrayOfVwKullaniciKitapListesi = array of VwKullaniciKitapListesi;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : TblKategori, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  TblKategori = class(TRemotable)
  private
    FKategoriId: Integer;
    FKategoriAdi: string;
    FKategoriAdi_Specified: boolean;
    procedure SetKategoriAdi(Index: Integer; const Astring: string);
    function  KategoriAdi_Specified(Index: Integer): boolean;
  published
    property KategoriId:  Integer  read FKategoriId write FKategoriId;
    property KategoriAdi: string   Index (IS_OPTN) read FKategoriAdi write SetKategoriAdi stored KategoriAdi_Specified;
  end;

  ArrayOfVwKullanicilar = array of VwKullanicilar;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : VwKullanicilar, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  VwKullanicilar = class(TRemotable)
  private
    FKullaniciId: Integer;
    FKullaniciAdi: string;
    FKullaniciAdi_Specified: boolean;
    procedure SetKullaniciAdi(Index: Integer; const Astring: string);
    function  KullaniciAdi_Specified(Index: Integer): boolean;
  published
    property KullaniciId:  Integer  read FKullaniciId write FKullaniciId;
    property KullaniciAdi: string   Index (IS_OPTN) read FKullaniciAdi write SetKullaniciAdi stored KullaniciAdi_Specified;
  end;

  ArrayOfTblKategori = array of TblKategori;    { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : VwKullaniciKitapListesi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  VwKullaniciKitapListesi = class(TRemotable)
  private
    FId: Integer;
    FKullaniciId: Integer;
    FVerilmeTarihi: TXSDateTime;
    FAdSoyad: string;
    FAdSoyad_Specified: boolean;
    FTC: string;
    FTC_Specified: boolean;
    FTelefonNumarasi: string;
    FTelefonNumarasi_Specified: boolean;
    FKitapId: Integer;
    FKategoriId: Integer;
    FYazar: string;
    FYazar_Specified: boolean;
    FKonu: string;
    FKonu_Specified: boolean;
    FYay�nEvi: string;
    FYay�nEvi_Specified: boolean;
    FKonusu: string;
    FKonusu_Specified: boolean;
    FAd: string;
    FAd_Specified: boolean;
    procedure SetAdSoyad(Index: Integer; const Astring: string);
    function  AdSoyad_Specified(Index: Integer): boolean;
    procedure SetTC(Index: Integer; const Astring: string);
    function  TC_Specified(Index: Integer): boolean;
    procedure SetTelefonNumarasi(Index: Integer; const Astring: string);
    function  TelefonNumarasi_Specified(Index: Integer): boolean;
    procedure SetYazar(Index: Integer; const Astring: string);
    function  Yazar_Specified(Index: Integer): boolean;
    procedure SetKonu(Index: Integer; const Astring: string);
    function  Konu_Specified(Index: Integer): boolean;
    procedure SetYay�nEvi(Index: Integer; const Astring: string);
    function  Yay�nEvi_Specified(Index: Integer): boolean;
    procedure SetKonusu(Index: Integer; const Astring: string);
    function  Konusu_Specified(Index: Integer): boolean;
    procedure SetAd(Index: Integer; const Astring: string);
    function  Ad_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:              Integer      read FId write FId;
    property KullaniciId:     Integer      Index (IS_NLBL) read FKullaniciId write FKullaniciId;
    property VerilmeTarihi:   TXSDateTime  Index (IS_NLBL) read FVerilmeTarihi write FVerilmeTarihi;
    property AdSoyad:         string       Index (IS_OPTN) read FAdSoyad write SetAdSoyad stored AdSoyad_Specified;
    property TC:              string       Index (IS_OPTN) read FTC write SetTC stored TC_Specified;
    property TelefonNumarasi: string       Index (IS_OPTN) read FTelefonNumarasi write SetTelefonNumarasi stored TelefonNumarasi_Specified;
    property KitapId:         Integer      Index (IS_NLBL) read FKitapId write FKitapId;
    property KategoriId:      Integer      Index (IS_NLBL) read FKategoriId write FKategoriId;
    property Yazar:           string       Index (IS_OPTN) read FYazar write SetYazar stored Yazar_Specified;
    property Konu:            string       Index (IS_OPTN) read FKonu write SetKonu stored Konu_Specified;
    property Yay�nEvi:        string       Index (IS_OPTN) read FYay�nEvi write SetYay�nEvi stored Yay�nEvi_Specified;
    property Konusu:          string       Index (IS_OPTN) read FKonusu write SetKonusu stored Konusu_Specified;
    property Ad:              string       Index (IS_OPTN) read FAd write SetAd stored Ad_Specified;
  end;



  // ************************************************************************ //
  // XML       : TblKitaplar, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  TblKitaplar = class(TRemotable)
  private
    FKitapId: Integer;
    FKategoriId: Integer;
    FYazar: string;
    FYazar_Specified: boolean;
    FKonu: string;
    FKonu_Specified: boolean;
    FYay�nEvi: string;
    FYay�nEvi_Specified: boolean;
    FKonusu: string;
    FKonusu_Specified: boolean;
    FAd: string;
    FAd_Specified: boolean;
    procedure SetYazar(Index: Integer; const Astring: string);
    function  Yazar_Specified(Index: Integer): boolean;
    procedure SetKonu(Index: Integer; const Astring: string);
    function  Konu_Specified(Index: Integer): boolean;
    procedure SetYay�nEvi(Index: Integer; const Astring: string);
    function  Yay�nEvi_Specified(Index: Integer): boolean;
    procedure SetKonusu(Index: Integer; const Astring: string);
    function  Konusu_Specified(Index: Integer): boolean;
    procedure SetAd(Index: Integer; const Astring: string);
    function  Ad_Specified(Index: Integer): boolean;
  published
    property KitapId:    Integer  read FKitapId write FKitapId;
    property KategoriId: Integer  Index (IS_NLBL) read FKategoriId write FKategoriId;
    property Yazar:      string   Index (IS_OPTN) read FYazar write SetYazar stored Yazar_Specified;
    property Konu:       string   Index (IS_OPTN) read FKonu write SetKonu stored Konu_Specified;
    property Yay�nEvi:   string   Index (IS_OPTN) read FYay�nEvi write SetYay�nEvi stored Yay�nEvi_Specified;
    property Konusu:     string   Index (IS_OPTN) read FKonusu write SetKonusu stored Konusu_Specified;
    property Ad:         string   Index (IS_OPTN) read FAd write SetAd stored Ad_Specified;
  end;

  ArrayOfTblKitaplar = array of TblKitaplar;    { "http://tempuri.org/"[GblCplx] }

  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : DatalarSoap
  // service   : Datalar
  // port      : DatalarSoap
  // URL       : http://localhost:53179/datalar.asmx
  // ************************************************************************ //
  DatalarSoap = interface(IInvokable)
  ['{E072C7D0-7FAF-709D-71BD-08A50EE7851B}']
    function  HelloWorld: string; stdcall;
    function  KullaniciGiris(const KullaniciAdi: string; const Sifre: string): TCevap; stdcall;
    function  KullaniciKayit(const KullaniciAdi: string; const Sifre: string): TCevap; stdcall;
    function  KullaniciKitapListem(const kullaniciId: string): ArrayOfTblKullaniciKitaplar; stdcall;
    function  KullaniciKitapListesi1(const kullaniciId: string): ArrayOfVwKullaniciKitapListesi; stdcall;
    function  KullaniciKitapEkle(const KullaniciId: Integer; const adSoyad: string; const TC: string; const TelefonNumarasi: string; const VerilmeTarihi: TXSDateTime; const KitapIsmi: string
                                 ): TCevap; stdcall;
    procedure KategoriEkle(const KategoriAdi: string); stdcall;
    procedure KitapEkle(const kitapdetay: TblKitaplar); stdcall;
    function  KitapListesi: ArrayOfTblKitaplar; stdcall;
    function  KitapKategorileri: ArrayOfTblKategori; stdcall;
    function  KullaniciListesi: ArrayOfVwKullanicilar; stdcall;
  end;

function GetDatalarSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): DatalarSoap;


implementation
  uses System.SysUtils;

function GetDatalarSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): DatalarSoap;
const
  defWSDL = 'http://pufprif.com/datalar.asmx?WSDL';
  defURL  = 'http://pufprif.com/datalar.asmx';
  defSvc  = 'Datalar';
  defPrt  = 'DatalarSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as DatalarSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure TCevap.SetMesaj(Index: Integer; const Astring: string);
begin
  FMesaj := Astring;
  FMesaj_Specified := True;
end;

function TCevap.Mesaj_Specified(Index: Integer): boolean;
begin
  Result := FMesaj_Specified;
end;

destructor TblKullaniciKitaplar.Destroy;
begin
  System.SysUtils.FreeAndNil(FVerilmeTarihi);
  inherited Destroy;
end;

procedure TblKullaniciKitaplar.SetAdSoyad(Index: Integer; const Astring: string);
begin
  FAdSoyad := Astring;
  FAdSoyad_Specified := True;
end;

function TblKullaniciKitaplar.AdSoyad_Specified(Index: Integer): boolean;
begin
  Result := FAdSoyad_Specified;
end;

procedure TblKullaniciKitaplar.SetTC(Index: Integer; const Astring: string);
begin
  FTC := Astring;
  FTC_Specified := True;
end;

function TblKullaniciKitaplar.TC_Specified(Index: Integer): boolean;
begin
  Result := FTC_Specified;
end;

procedure TblKullaniciKitaplar.SetTelefonNumarasi(Index: Integer; const Astring: string);
begin
  FTelefonNumarasi := Astring;
  FTelefonNumarasi_Specified := True;
end;

function TblKullaniciKitaplar.TelefonNumarasi_Specified(Index: Integer): boolean;
begin
  Result := FTelefonNumarasi_Specified;
end;

procedure TblKategori.SetKategoriAdi(Index: Integer; const Astring: string);
begin
  FKategoriAdi := Astring;
  FKategoriAdi_Specified := True;
end;

function TblKategori.KategoriAdi_Specified(Index: Integer): boolean;
begin
  Result := FKategoriAdi_Specified;
end;

procedure VwKullanicilar.SetKullaniciAdi(Index: Integer; const Astring: string);
begin
  FKullaniciAdi := Astring;
  FKullaniciAdi_Specified := True;
end;

function VwKullanicilar.KullaniciAdi_Specified(Index: Integer): boolean;
begin
  Result := FKullaniciAdi_Specified;
end;

destructor VwKullaniciKitapListesi.Destroy;
begin
  System.SysUtils.FreeAndNil(FVerilmeTarihi);
  inherited Destroy;
end;

procedure VwKullaniciKitapListesi.SetAdSoyad(Index: Integer; const Astring: string);
begin
  FAdSoyad := Astring;
  FAdSoyad_Specified := True;
end;

function VwKullaniciKitapListesi.AdSoyad_Specified(Index: Integer): boolean;
begin
  Result := FAdSoyad_Specified;
end;

procedure VwKullaniciKitapListesi.SetTC(Index: Integer; const Astring: string);
begin
  FTC := Astring;
  FTC_Specified := True;
end;

function VwKullaniciKitapListesi.TC_Specified(Index: Integer): boolean;
begin
  Result := FTC_Specified;
end;

procedure VwKullaniciKitapListesi.SetTelefonNumarasi(Index: Integer; const Astring: string);
begin
  FTelefonNumarasi := Astring;
  FTelefonNumarasi_Specified := True;
end;

function VwKullaniciKitapListesi.TelefonNumarasi_Specified(Index: Integer): boolean;
begin
  Result := FTelefonNumarasi_Specified;
end;

procedure VwKullaniciKitapListesi.SetYazar(Index: Integer; const Astring: string);
begin
  FYazar := Astring;
  FYazar_Specified := True;
end;

function VwKullaniciKitapListesi.Yazar_Specified(Index: Integer): boolean;
begin
  Result := FYazar_Specified;
end;

procedure VwKullaniciKitapListesi.SetKonu(Index: Integer; const Astring: string);
begin
  FKonu := Astring;
  FKonu_Specified := True;
end;

function VwKullaniciKitapListesi.Konu_Specified(Index: Integer): boolean;
begin
  Result := FKonu_Specified;
end;

procedure VwKullaniciKitapListesi.SetYay�nEvi(Index: Integer; const Astring: string);
begin
  FYay�nEvi := Astring;
  FYay�nEvi_Specified := True;
end;

function VwKullaniciKitapListesi.Yay�nEvi_Specified(Index: Integer): boolean;
begin
  Result := FYay�nEvi_Specified;
end;

procedure VwKullaniciKitapListesi.SetKonusu(Index: Integer; const Astring: string);
begin
  FKonusu := Astring;
  FKonusu_Specified := True;
end;

function VwKullaniciKitapListesi.Konusu_Specified(Index: Integer): boolean;
begin
  Result := FKonusu_Specified;
end;

procedure VwKullaniciKitapListesi.SetAd(Index: Integer; const Astring: string);
begin
  FAd := Astring;
  FAd_Specified := True;
end;

function VwKullaniciKitapListesi.Ad_Specified(Index: Integer): boolean;
begin
  Result := FAd_Specified;
end;

procedure TblKitaplar.SetYazar(Index: Integer; const Astring: string);
begin
  FYazar := Astring;
  FYazar_Specified := True;
end;

function TblKitaplar.Yazar_Specified(Index: Integer): boolean;
begin
  Result := FYazar_Specified;
end;

procedure TblKitaplar.SetKonu(Index: Integer; const Astring: string);
begin
  FKonu := Astring;
  FKonu_Specified := True;
end;

function TblKitaplar.Konu_Specified(Index: Integer): boolean;
begin
  Result := FKonu_Specified;
end;

procedure TblKitaplar.SetYay�nEvi(Index: Integer; const Astring: string);
begin
  FYay�nEvi := Astring;
  FYay�nEvi_Specified := True;
end;

function TblKitaplar.Yay�nEvi_Specified(Index: Integer): boolean;
begin
  Result := FYay�nEvi_Specified;
end;

procedure TblKitaplar.SetKonusu(Index: Integer; const Astring: string);
begin
  FKonusu := Astring;
  FKonusu_Specified := True;
end;

function TblKitaplar.Konusu_Specified(Index: Integer): boolean;
begin
  Result := FKonusu_Specified;
end;

procedure TblKitaplar.SetAd(Index: Integer; const Astring: string);
begin
  FAd := Astring;
  FAd_Specified := True;
end;

function TblKitaplar.Ad_Specified(Index: Integer): boolean;
begin
  Result := FAd_Specified;
end;

initialization
  { DatalarSoap }
  InvRegistry.RegisterInterface(TypeInfo(DatalarSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(DatalarSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(DatalarSoap), ioDocument);
  { DatalarSoap.HelloWorld }
  InvRegistry.RegisterMethodInfo(TypeInfo(DatalarSoap), 'HelloWorld', '',
                                 '[ReturnName="HelloWorldResult"]', IS_OPTN);
  { DatalarSoap.KullaniciGiris }
  InvRegistry.RegisterMethodInfo(TypeInfo(DatalarSoap), 'KullaniciGiris', '',
                                 '[ReturnName="KullaniciGirisResult"]', IS_OPTN);
  { DatalarSoap.KullaniciKayit }
  InvRegistry.RegisterMethodInfo(TypeInfo(DatalarSoap), 'KullaniciKayit', '',
                                 '[ReturnName="KullaniciKayitResult"]', IS_OPTN);
  { DatalarSoap.KullaniciKitapListem }
  InvRegistry.RegisterMethodInfo(TypeInfo(DatalarSoap), 'KullaniciKitapListem', '',
                                 '[ReturnName="KullaniciKitapListemResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(DatalarSoap), 'KullaniciKitapListem', 'KullaniciKitapListemResult', '',
                                '[ArrayItemName="TblKullaniciKitaplar"]');
  { DatalarSoap.KullaniciKitapListesi1 }
  InvRegistry.RegisterMethodInfo(TypeInfo(DatalarSoap), 'KullaniciKitapListesi1', '',
                                 '[ReturnName="KullaniciKitapListesi1Result"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(DatalarSoap), 'KullaniciKitapListesi1', 'KullaniciKitapListesi1Result', '',
                                '[ArrayItemName="VwKullaniciKitapListesi"]');
  { DatalarSoap.KullaniciKitapEkle }
  InvRegistry.RegisterMethodInfo(TypeInfo(DatalarSoap), 'KullaniciKitapEkle', '',
                                 '[ReturnName="KullaniciKitapEkleResult"]', IS_OPTN);
  { DatalarSoap.KitapListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(DatalarSoap), 'KitapListesi', '',
                                 '[ReturnName="KitapListesiResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(DatalarSoap), 'KitapListesi', 'KitapListesiResult', '',
                                '[ArrayItemName="TblKitaplar"]');
  { DatalarSoap.KitapKategorileri }
  InvRegistry.RegisterMethodInfo(TypeInfo(DatalarSoap), 'KitapKategorileri', '',
                                 '[ReturnName="KitapKategorileriResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(DatalarSoap), 'KitapKategorileri', 'KitapKategorileriResult', '',
                                '[ArrayItemName="TblKategori"]');
  { DatalarSoap.KullaniciListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(DatalarSoap), 'KullaniciListesi', '',
                                 '[ReturnName="KullaniciListesiResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(DatalarSoap), 'KullaniciListesi', 'KullaniciListesiResult', '',
                                '[ArrayItemName="VwKullanicilar"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTblKullaniciKitaplar), 'http://tempuri.org/', 'ArrayOfTblKullaniciKitaplar');
  RemClassRegistry.RegisterXSClass(TCevap, 'http://tempuri.org/', 'TCevap');
  RemClassRegistry.RegisterXSClass(TblKullaniciKitaplar, 'http://tempuri.org/', 'TblKullaniciKitaplar');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfVwKullaniciKitapListesi), 'http://tempuri.org/', 'ArrayOfVwKullaniciKitapListesi');
  RemClassRegistry.RegisterXSClass(TblKategori, 'http://tempuri.org/', 'TblKategori');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfVwKullanicilar), 'http://tempuri.org/', 'ArrayOfVwKullanicilar');
  RemClassRegistry.RegisterXSClass(VwKullanicilar, 'http://tempuri.org/', 'VwKullanicilar');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTblKategori), 'http://tempuri.org/', 'ArrayOfTblKategori');
  RemClassRegistry.RegisterXSClass(VwKullaniciKitapListesi, 'http://tempuri.org/', 'VwKullaniciKitapListesi');
  RemClassRegistry.RegisterXSClass(TblKitaplar, 'http://tempuri.org/', 'TblKitaplar');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTblKitaplar), 'http://tempuri.org/', 'ArrayOfTblKitaplar');

end.
