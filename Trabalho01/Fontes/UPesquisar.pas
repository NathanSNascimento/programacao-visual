unit UPesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TFPesquisa = class(TForm)
    PCPesquisa: TPageControl;
    EPesquisar: TEdit;
    BPesquisar: TBitBtn;
    DBGrid1: TDBGrid;
    DSSearch: TDataSource;
    LResultados: TLabel;
    TPesquisar: TTabSheet;
    procedure BPesquisarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisa: TFPesquisa;

implementation

{$R *.dfm}

uses UDMConCor, UDMConexao, UDMConMarcas, UDMPesquisa;

procedure TFPesquisa.BPesquisarClick(Sender: TObject);
begin

  with DMPesquisa do
  begin
    FDQPesquisa.Close;
    FDQPesquisa.SQL.Clear;
    FDQPesquisa.SQL.Add(
    'SELECT * FROM CAD_CARROS ' +
    'INNER JOIN CAD_MARCAS ON CAD_CARROS.ID_MARCA = CAD_MARCAS.ID_MARCAS ' +
    'INNER JOIN CAD_CORES ON CAD_CORES.ID_COR = CAD_CARROS.ID_COR '+
    'WHERE MODELO like :Pnome or NM_MARCAS like :Pnome or nm_cor like :Pnome ');
    FDQPesquisa.ParamByName('Pnome').Value := '%' + EPesquisar.Text + '%';
    FDQPesquisa.Open;

    FDQPesquisa.Last;
    LResultados.Caption := 'Resultados: ' + IntToStr(FDQPesquisa.RecordCount);
  end;

end;

procedure TFPesquisa.FormActivate(Sender: TObject);
begin
  PCPesquisa.ActivePage := TPesquisar;
end;

end.
