program PTrabalho;

uses
  Vcl.Forms,
  UCadCarros in 'UCadCarros.pas' {FCadCarros},
  UDMConexao in 'UDMConexao.pas' {DMConexao: TDataModule},
  UDMConCor in 'UDMConCor.pas' {DMConnCor: TDataModule},
  UCadCores in 'UCadCores.pas' {FCadCores},
  UCadMarca in 'UCadMarca.pas' {FCadMarcas},
  UDMConMarcas in 'UDMConMarcas.pas' {DMConnMarca: TDataModule},
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UPesquisar in 'UPesquisar.pas' {FPesquisa},
  UDMPesquisa in 'UDMPesquisa.pas' {DMPesquisa: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
