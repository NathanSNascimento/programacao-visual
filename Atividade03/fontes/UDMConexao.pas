unit UDMConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TDMConexao = class(TDataModule)
    FDConnection: TFDConnection;
    FDPgDriverLink: TFDPhysPgDriverLink;
    FDQMestre: TFDQuery;
    FDQDetalhes: TFDQuery;
    DSDetalhe: TDataSource;
    DSMestre: TDataSource;
    FDQMestreid_mestre: TIntegerField;
    FDQMestreds_mestre: TWideStringField;
    FDQDetalhesid_detalhe: TIntegerField;
    FDQDetalhesid_mestre: TIntegerField;
    FDQDetalhesvalor: TFMTBCDField;
    FRReport: TfrxReport;
    FRDMestre: TfrxDBDataset;
    FRDetalhe: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConexao: TDMConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
