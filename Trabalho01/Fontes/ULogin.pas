unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFLogin = class(TForm)
    Image1: TImage;
    EUser: TEdit;
    Image2: TImage;
    Esenha: TEdit;
    BEntrar: TBitBtn;
    BSair: TBitBtn;
    procedure BSairClick(Sender: TObject);
    procedure BEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    user:integer;
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

uses UDMConexao, UDMUsers;

procedure TFLogin.BEntrarClick(Sender: TObject);
begin
  ModalResult := 0; //mrNone;
  with DMConexao do
  begin
    if (EUser.Text = '') or (Esenha.Text = '') then
      ShowMessage('Preencha todos os campos!!!')
    else
    begin
      DMUsers.FDQUsers.Close;
      DMUsers.FDQUsers.ParamByName('plogin').Value := Euser.Text;
      DMUsers.FDQUsers.Open;
      if not DMUsers.FDQUsers.IsEmpty then
      begin
        if DMUsers.FDQUserssenha.Value <> ESenha.Text then
          ShowMessage('Senha Invalida')
        else
        begin
          user := DMUsers.FDQUsersid_usuario.Value;
          ModalResult := mrok;
        end;
      end
      else
          ShowMessage('Usu�rio n�o encontrado');

    end;

  end;

end;

procedure TFLogin.BSairClick(Sender: TObject);
begin
  Close;
end;

end.
