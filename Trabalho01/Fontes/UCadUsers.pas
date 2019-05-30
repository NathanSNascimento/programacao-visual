unit UCadUsers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, System.ImageList, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids;

type
    TFCadUsers = class(TForm)
    PCUsuarios: TPageControl;
    Cadastro: TTabSheet;
    TConsulta: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    BNovo: TBitBtn;
    BEditar: TBitBtn;
    BSalvar: TBitBtn;
    BCancelar: TBitBtn;
    BExcluir: TBitBtn;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    BDireitos: TBitBtn;
    BitBtn2: TBitBtn;
    tv: TTreeView;
    procedure BNovoClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BSalvarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BDireitosClick(Sender: TObject);
    function  remove_caractere(texto:string):string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadUsers: TFCadUsers;

implementation

{$R *.dfm}

uses UDMUsers, UPrincipal;

procedure TFCadUsers.BCancelarClick(Sender: TObject);
begin
  DMUsers.FDQUsers.Cancel;
end;

function TFCadUsers.remove_caractere(texto:string):string;
var
  p: integer;
begin
  p:= Pos('&', texto);
  if p = 0 then
    text := texto
  else
    texto := Copy(texto, 1, p - 1) +
             Copy(texto, p+1, texto.length);
    result := texto;

end;

procedure TFCadUsers.BDireitosClick(Sender: TObject);
var
  npos, i, ix, iz: integer;
  texto, snivel : string;
  tn1, tn2, tn3 : TTreeNode;

begin
  with tv.Items do
  begin
    Clear;
    npos := 1;

    //Nivel 1
    if not DMUsers.FDQUsers.IsEmpty then
    begin
      snivel := DMUsers.FDQUsersnivel_acesso.Value;

      for i := 0 to FPrincipal.Menu.Items.Count - 1 do
      begin
        texto := FPrincipal.Menu.Items[i].Caption;
        texto := remove_caractere(texto);
        if texto <> '-' then
        begin

          tn1 := Add(nil, texto);
          tn1.ImageIndex := 0;
          tn1.SelectedIndex := 0;

          if copy(snivel,npos,1) = 'S' then
            tn1.StateIndex := 2
          else
            tn1.StateIndex := 1;

          npos := npos+1;

        end;
      end;

    end;
  end;
end;

procedure TFCadUsers.BEditarClick(Sender: TObject);
begin
  DMUsers.FDQUsers.Edit;
end;

procedure TFCadUsers.BExcluirClick(Sender: TObject);
begin
  DMUsers.FDQUsers.Delete;
end;

procedure TFCadUsers.BNovoClick(Sender: TObject);
begin
  DMUsers.FDQUsers.Insert;
end;

procedure TFCadUsers.BSalvarClick(Sender: TObject);
begin
  DMUsers.FDQUsers.Post;
end;

end.
