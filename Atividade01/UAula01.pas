unit UAula01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFAula01 = class(TForm)
    EResultado: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Bsoma: TButton;
    BClear: TButton;
    BSub: TButton;
    Button15: TButton;
    BDiv: TButton;
    BMulti: TButton;
    BIgual: TButton;
    procedure BsomaClick(Sender: TObject);
    procedure BSubClick(Sender: TObject);
    procedure BMultiClick(Sender: TObject);
    procedure BDivClick(Sender: TObject);
    procedure BIgualClick(Sender: TObject);
    procedure BClearClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAula01: TFAula01;
  valor1 : real;
  valor2 : real;
  operador : Integer;

implementation

{$R *.dfm}

procedure TFAula01.BsomaClick(Sender: TObject);
begin
  valor1 := StrToFloat(EResultado.Text);
  EResultado.Clear;
  operador := 1;
end;

procedure TFAula01.BSubClick(Sender: TObject);
begin
  valor1 := StrToFloat(EResultado.Text);
  EResultado.Clear;
  operador := 2;
end;

procedure TFAula01.BClearClick(Sender: TObject);
begin
  EResultado.Clear;
end;

procedure TFAula01.BDivClick(Sender: TObject);
begin
  valor1 := StrToFloat(EResultado.Text);
  EResultado.Clear;
  operador := 4;
end;

procedure TFAula01.BIgualClick(Sender: TObject);

  var r : real;

begin
  valor2:= StrToFloat(EResultado.Text);

  case (operador) of
    1:
      begin
        r:= valor1 + valor2;
      end;

    2:
      begin
         r := valor1 - valor2;
      end;

    3:
      begin
       r:= valor1 * valor2;
      end;
      
    4:
      begin
        if valor2 <>0 then
          r := valor1 / valor2
        else
          ShowMessage('Divisão por zero');
       end;
    
  end;

  EResultado.Text := FloatToStr(r);
  
end;

procedure TFAula01.BMultiClick(Sender: TObject);
begin
  valor1 := StrToFloat(EResultado.Text);
  EResultado.Clear;
  operador := 3;
end;

end.
