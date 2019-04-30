unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus, Vcl.ButtonGroup,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Carros1: TMenuItem;
    N2: TMenuItem;
    Marcas1: TMenuItem;
    N3: TMenuItem;
    Cores1: TMenuItem;
    BCadCarros: TBitBtn;
    TPanel: TPanel;
    BMarcas: TBitBtn;
    BCores: TBitBtn;
    Image1: TImage;
    StatusBar1: TStatusBar;
    BPesquisar: TBitBtn;
    Pesquisar: TMenuItem;
    BExit: TMenuItem;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure BCadCarrosClick(Sender: TObject);
    procedure BMarcasClick(Sender: TObject);
    procedure BCoresClick(Sender: TObject);
    procedure Carros1Click(Sender: TObject);
    procedure Marcas1Click(Sender: TObject);
    procedure Cores1Click(Sender: TObject);
    procedure BPesquisarClick(Sender: TObject);
    procedure PesquisarClick(Sender: TObject);
    procedure BExitClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses UDMConexao, UCadCarros, UCadCores, UCadMarca, UDMConCor, UDMConMarcas,
  UDMPesquisa, UPesquisar;

procedure TFPrincipal.BCadCarrosClick(Sender: TObject);
begin
    if not Assigned (DMConexao) then
    application.CreateForm(TDMConexao, DMConexao);

    if not Assigned (DMConnMarca) then
    application.CreateForm(TDMConnMarca, DMConnMarca );

    if not Assigned (DMConnCor) then
    application.CreateForm(TDMConnCor, DMConnCor );

    if not Assigned (FCadCarros) then
    application.CreateForm(TFCadCarros, FCadCarros);

    FCadCarros.Show;
end;

procedure TFPrincipal.BCoresClick(Sender: TObject);
begin
  if not Assigned (DMConnCor) then
  application.CreateForm(TDMConnCor, DMConnCor);

  if not Assigned (FCadCores) then
  application.CreateForm(TFCadCores, FCadCores);

  FCadCores.Show;

end;

procedure TFPrincipal.BExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFPrincipal.BMarcasClick(Sender: TObject);
begin
  if not Assigned (DMConnMarca) then
  application.CreateForm(TDMConnMarca, DMConnMarca);

  if not Assigned (FCadMarcas)then
  application.CreateForm(TFCadMarcas, FCadMarcas);

  FCadMarcas.Show;

end;

procedure TFPrincipal.BPesquisarClick(Sender: TObject);
begin
   if not Assigned (DMPesquisa) then
    application.CreateForm(TDMPesquisa, DMPesquisa);

   if not Assigned (FPesquisa) then
    application.CreateForm(TFPesquisa, FPesquisa);

    FPesquisa.Show;

end;

procedure TFPrincipal.Carros1Click(Sender: TObject);
begin
    if not Assigned (DMConexao) then
    application.CreateForm(TDMConexao, DMConexao);

    if not Assigned (DMConnMarca) then
    application.CreateForm(TDMConnMarca, DMConnMarca );

    if not Assigned (DMConnCor) then
    application.CreateForm(TDMConnCor, DMConnCor );

    if not Assigned (FCadCarros) then
    application.CreateForm(TFCadCarros, FCadCarros);

    FCadCarros.Show;
end;

procedure TFPrincipal.Cores1Click(Sender: TObject);
begin
  if not Assigned (DMConnCor) then
  application.CreateForm(TDMConnCor, DMConnCor);

  if not Assigned (FCadCores) then
  application.CreateForm(TFCadCores, FCadCores);

  FCadCores.Show;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  //with dmconexao do
  //begin
    //FDConexao.Params.Values['Server'] := 'localhost';
    //FDConexao.Params.Values['Port'] := '5432';
    //FDConexao.Params.Database := 'Trabalho1';
    //FDConexao.Params.UserName := 'postgres';
    //FDConexao.Params.Password := 'admin';

    //try
      //FDConexao.Connected := true;

    //except on E: Exception do
      //ShowMessage('N�o foi possivel conectar' + E.Message);
    //end;
  //end;
end;

procedure TFPrincipal.Marcas1Click(Sender: TObject);
begin
  if not Assigned (DMConnMarca) then
  application.CreateForm(TDMConnMarca, DMConnMarca);

  if not Assigned (FCadMarcas)then
  application.CreateForm(TFCadMarcas, FCadMarcas);

  FCadMarcas.Show;
end;

procedure TFPrincipal.PesquisarClick(Sender: TObject);
begin
    if not Assigned (DMPesquisa) then
    application.CreateForm(TDMPesquisa, DMPesquisa);

   if not Assigned (FPesquisa) then
    application.CreateForm(TFPesquisa, FPesquisa);

    FPesquisa.Show;

end;

procedure TFPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[2].text := DateToStr(Date) + ' ' + TimeToStr(time);
end;

end.
