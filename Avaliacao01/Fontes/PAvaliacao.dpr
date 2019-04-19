program PAvaliacao;

uses
  Vcl.Forms,
  UEx02 in 'UEx02.pas' {Form1},
  UDMConexao in 'UDMConexao.pas' {DataModule2: TDataModule},
  UEx01 in 'UEx01.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
