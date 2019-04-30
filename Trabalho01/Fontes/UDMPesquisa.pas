unit UDMPesquisa;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TDMPesquisa = class(TDataModule)
    FDQPesquisa: TFDQuery;
    FRPesquisaCarros: TfrxReport;
    FRDSPesquisaCarros: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPesquisa: TDMPesquisa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDMConexao;

{$R *.dfm}

end.
