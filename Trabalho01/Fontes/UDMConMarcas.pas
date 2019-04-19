unit UDMConMarcas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMConnMarca = class(TDataModule)
    FDQMarcas: TFDQuery;
    DSMarcas: TDataSource;
    FDQMarcasid_marcas: TIntegerField;
    FDQMarcasnm_marcas: TWideStringField;
    FDQComboMarcas: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConnMarca: TDMConnMarca;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDMConexao;

{$R *.dfm}

end.
