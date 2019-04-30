unit UMestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TFMestre = class(TForm)
    DBGMestre: TDBGrid;
    DBGDetalhe: TDBGrid;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMestre: TFMestre;

implementation

{$R *.dfm}

uses UDMConexao;

procedure TFMestre.BitBtn1Click(Sender: TObject);
begin
  DMConexao.FRReport.PrepareReport;
  DMCOnexao.FRReport.ShowPreparedReport;
end;

end.
