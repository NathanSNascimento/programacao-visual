program PConexao;

uses
  Vcl.Forms,
  UConexao in 'UConexao.pas' {FConexao},
  UDMConexao in 'UDMConexao.pas' {DMConexao: TDataModule},
  UCadAluno in 'UCadAluno.pas' {FCadAluno};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFConexao, FConexao);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFCadAluno, FCadAluno);
  Application.Run;
end.
