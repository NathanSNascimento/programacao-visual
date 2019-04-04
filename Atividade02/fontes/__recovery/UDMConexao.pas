unit UDMConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDMConexao = class(TDataModule)
    FDConnection: TFDConnection;
    FDDriverLink: TFDPhysPgDriverLink;
    FDQAlunos: TFDQuery;
    DSAlunos: TDataSource;
    FDQAlunosid: TIntegerField;
    FDQAlunosname: TWideStringField;
    FDQAlunosdt_nasc: TDateField;
    FDQAlunoscpf: TWideStringField;
    FDQAlunoscep: TWideStringField;
    FDQAlunosendereco: TWideStringField;
    FDQAlunosbairro: TWideStringField;
    FDQAlunosfone: TWideStringField;
    FDQAlunoscelular: TWideStringField;
    FDQAlunosid_cidade: TIntegerField;
    FDQEstados: TFDQuery;
    FDQEstadosid_estado: TIntegerField;
    FDQEstadossigla_uf: TWideStringField;
    FDQEstadosnm_estado: TWideStringField;
    FDQCidades: TFDQuery;
    FDQCidadesid_cidade: TIntegerField;
    FDQCidadesid_estado: TIntegerField;
    FDQCidadesnm_cidade: TWideStringField;
    FDQComboEstados: TFDQuery;
    FDQComboEstadosid_estado: TIntegerField;
    FDQComboEstadossigla_uf: TWideStringField;
    FDQComboEstadosnm_estado: TWideStringField;
    FDQComboEstadossigla_nome: TStringField;
    FDQComboCidades: TFDQuery;
    FDQComboCidadesid_cidade: TIntegerField;
    FDQComboCidadesid_estado: TIntegerField;
    FDQComboCidadesnm_cidade: TWideStringField;
    procedure FDQComboEstadosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConexao: TDMConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UCadAluno;

{$R *.dfm}

procedure TDMConexao.FDQComboEstadosCalcFields(DataSet: TDataSet);
begin
  FDQComboEstadossigla_nome.Value :=
  FDQComboEstadossigla_uf.Value + ' - ' + FDQComboEstadosnm_estado.Value
end;

end.
