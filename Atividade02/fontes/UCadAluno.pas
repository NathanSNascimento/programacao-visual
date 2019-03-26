unit UCadAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFCadAluno = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BNovo: TButton;
    BSalvar: TButton;
    PCAlunos: TPageControl;
    TCadastro: TTabSheet;
    TConsulta: TTabSheet;
    BEditar: TButton;
    BCancelar: TButton;
    BExcluir: TButton;
    PSQL: TPanel;
    EPesquisar: TEdit;
    BPesquisar: TButton;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DSAlunos: TDataSource;
    procedure BNovoClick(Sender: TObject);
    procedure BSalvarClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DSAlunosStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadAluno: TFCadAluno;

implementation

{$R *.dfm}

uses UDMConexao;




procedure TFCadAluno.BCancelarClick(Sender: TObject);
begin
  DMConexao.FDQAlunos.Cancel;
end;

procedure TFCadAluno.BEditarClick(Sender: TObject);
begin
  DMConexao.FDQAlunos.Edit;
end;

procedure TFCadAluno.BExcluirClick(Sender: TObject);
begin
  DMConexao.FDQAlunos.Delete;
end;

procedure TFCadAluno.BNovoClick(Sender: TObject);
begin
  DMConexao.FDQAlunos.Insert;
end;

procedure TFCadAluno.BPesquisarClick(Sender: TObject);
begin
  with dmconexao do
  begin
    FDQAlunos.Close;
    FDQAlunos.SQL.Clear;
    FDQAlunos.SQL.Add('select * from cad_aluno where name like :PNome ');
    //FDQAlunos.ParamByName('Pnome').AsString := EPesquisar.Text; //especificado o tipo do vlaor recebido
    FDQAlunos.ParamByName('Pnome').Value := '%'+EPesquisar.Text+'%';
    FDQAlunos.Open;
  end;
end;

procedure TFCadAluno.BSalvarClick(Sender: TObject);
begin
  DMConexao.FDQAlunos.Post;
end;

procedure TFCadAluno.DBGrid1DblClick(Sender: TObject);
begin
  PCAlunos.ActivePage := TCadastro;
end;

procedure TFCadAluno.DSAlunosStateChange(Sender: TObject);
begin

    BNovo.Enabled := DSAlunos.State in [dsBrowse];
    BSalvar.Enabled := DSAlunos.State in [dsInsert, dsEdit];
    BCancelar.Enabled := Bsalvar.Enabled;
    BEditar.Enabled := (BNovo.Enabled) and (not(DMConexao.FDQAlunos.IsEmpty));
    BExcluir.Enabled := BEditar.Enabled;

end;

procedure TFCadAluno.FormActivate(Sender: TObject);
begin
  with dmconexao do
  begin
    FDQAlunos.Close;
    FDQAlunos.SQL.Clear;
    FDQAlunos.SQL.Add('select * from cad_aluno where id = :Pid');
    FDQAlunos.ParamByName('pid').Value := 0;
    FDQAlunos.Open;
  end;

  PCAlunos.ActivePage := TCadastro;

end;

end.