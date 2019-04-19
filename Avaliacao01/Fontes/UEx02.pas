unit UEx02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    TPanel: TPanel;
    ECalcular: TEdit;
    BCalcular: TButton;
    procedure BCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  valor: Integer;


implementation

{$R *.dfm}

procedure TForm1.BCalcularClick(Sender: TObject);
var
  cedula: array[0..5] of Integer;
begin
  cedula[0] := 100;
  cedula[1] := 50;
  cedula[2] := 20;
  cedula[3] := 10;
  cedula[4] := 5;
  cedula[5] := 2;
end;

end.
