unit UEx01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    ENome: TEdit;
    EHoras: TEdit;
    EDep: TEdit;
    BCalcular: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  VNome: String;
  VHoras: Integer;
  VDep: Integer;
  salBruto: Integer;
  salLiquido: Double;
  descInss: Double;
  descIR: Double;

implementation

{$R *.dfm}

procedure TForm2.BCalcularClick(Sender: TObject);
begin

    Vnome:= ENome.Text;
    Vhoras:= StrToInt(EHoras.Text);
    VDep:= StrToInt(EDep.Text);

    salBruto:= ((Vhoras * 12) + (vDep * 40));

    descInss:= ((salBruto - 8.5) / 100);
    descIR:= ((salBruto - 5) / 100);

    salLiquido:= salBruto - descInss - descIR;

    ShowMessage('Funcionario: ' + Vnome + '. Desconto de INSS: ' + FloatToStr(descInss) + '. IR: ' + FloatToStr(descIR) + '. Salario Liquido: ' + FloatToStr(salLiquido));

end;

end.
