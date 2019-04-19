unit UCadCarros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Firedac.VCLUI.Wait, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFCadCarros = class(TForm)
    PCCarros: TPageControl;
    TCadastro: TTabSheet;
    TConsulta: TTabSheet;
    BNovo: TBitBtn;
    BEditar: TBitBtn;
    BSalvar: TBitBtn;
    BCancelar: TBitBtn;
    BExcluir: TBitBtn;
    EPesquisar: TEdit;
    BBuscar: TBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DSCarros: TDataSource;
    DSMarca: TDataSource;
    CBMarca: TDBLookupComboBox;
    CBCores: TDBLookupComboBox;
    DSCores: TDataSource;
    procedure BNovoClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BSalvarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BBuscarClick(Sender: TObject);
    procedure DSCarrosStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCarros: TFCadCarros;

implementation

{$R *.dfm}

uses UDMConexao, UCadCores, UCadMarca, UDMConCor, UDMConMarcas;

procedure TFCadCarros.BEditarClick(Sender: TObject);
begin
  DMConexao.FDQCarros.Edit;
end;

procedure TFCadCarros.BBuscarClick(Sender: TObject);
begin
  with dmconexao do
  begin
    FDQCarros.Close;
    FDQCarros.SQL.Clear;
    FDQCarros.SQL.Add('select * from cad_carros where modelo like :Pmodelo ');
    FDQCarros.ParamByName('Pmodelo').Value := '%'+EPesquisar.Text+'%';
    FDQCarros.Open;
  end;
end;

procedure TFCadCarros.BCancelarClick(Sender: TObject);
begin
    DMConexao.FDQCarros.Cancel;
end;

procedure TFCadCarros.BExcluirClick(Sender: TObject);
begin
    DMConexao.FDQCarros.Delete;
end;

procedure TFCadCarros.BNovoClick(Sender: TObject);
begin
  DMConexao.FDQCarros.Insert;
end;

procedure TFCadCarros.BSalvarClick(Sender: TObject);
begin
  DMConexao.FDQCarros.Post;
end;

procedure TFCadCarros.DBGrid1DblClick(Sender: TObject);
begin
  PcCarros.ActivePage := TCadastro;
end;

procedure TFCadCarros.DSCarrosStateChange(Sender: TObject);
begin
    BNovo.Enabled := DSCarros.State in [dsBrowse];
    BSalvar.Enabled := DSCarros.State in [dsInsert, dsEdit];
    BCancelar.Enabled := Bsalvar.Enabled;
    BEditar.Enabled := (BNovo.Enabled) and (not(DMConexao.FDQCarros.IsEmpty));
    BExcluir.Enabled := BEditar.Enabled;
end;

procedure TFCadCarros.FormActivate(Sender: TObject);
begin
  with DMConexao do
  begin
    FDQCarros.Close;
    FDQCarros.SQL.Clear;
    FDQCarros.SQL.Add('select * from cad_carros where nr_chassi = :Pchassi');
    FDQCarros.ParamByName('pchassi').Value := 0;
    FDQCarros.Open;
  end;

  PCCarros.ActivePage:= TCadastro;
  DMConexao.FDQComboCor.Open();
  DMConnMarca.FDQComboMarcas.Open();
  DMConnCor.FDQComboCores.Open();
end;

procedure TFCadCarros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FCadCarros.Destroy;
end;

end.
