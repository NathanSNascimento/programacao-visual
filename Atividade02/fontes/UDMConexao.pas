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
    FDQAlunoscidade: TWideStringField;
    FDQAlunosuf: TWideStringField;
    FDQAlunosfone: TWideStringField;
    FDQAlunoscelular: TWideStringField;
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

end.
