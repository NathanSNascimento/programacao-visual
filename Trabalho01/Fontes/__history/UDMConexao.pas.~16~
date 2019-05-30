unit UDMConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.ConsoleUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDMConexao = class(TDataModule)
    FDConexao: TFDConnection;
    FDQCarros: TFDQuery;
    FDDriverLink: TFDPhysPgDriverLink;
    DSCarros: TDataSource;
    FDQCarrosnr_chassi: TIntegerField;
    FDQCarrosid_marca: TIntegerField;
    FDQCarrosid_cor: TIntegerField;
    FDQCarrosmodelo: TWideStringField;
    FDQCarrosqtde_portas: TIntegerField;
    FDQCarrosano: TIntegerField;
    FDQCarrosdescricao: TWideStringField;
    FDQComboCor: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConexao: TDMConexao;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses UCadCarros, UDMPesquisa;

{$R *.dfm}

end.
