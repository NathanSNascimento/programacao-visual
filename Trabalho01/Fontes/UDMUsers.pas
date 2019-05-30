unit UDMUsers;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMUsers = class(TDataModule)
    FDQUsers: TFDQuery;
    FDQUserslogin: TWideStringField;
    FDQUserssenha: TWideStringField;
    FDQUsersnivel_acesso: TWideStringField;
    FDQUsersid_usuario: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMUsers: TDMUsers;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDMConexao;

{$R *.dfm}

end.
