program PMestre;

uses
  Vcl.Forms,
  UMestre in 'UMestre.pas' {FMestre},
  UDMConexao in 'UDMConexao.pas' {DMConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMestre, FMestre);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.Run;
end.
