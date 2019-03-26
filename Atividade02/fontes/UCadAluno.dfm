object FCadAluno: TFCadAluno
  Left = 0
  Top = 0
  Caption = 'Cadastro de Alunos'
  ClientHeight = 242
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PCAlunos: TPageControl
    Left = 0
    Top = 0
    Width = 558
    Height = 242
    ActivePage = TCadastro
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 568
    object TCadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitWidth = 560
      object Label1: TLabel
        Left = 16
        Top = 23
        Width = 8
        Height = 13
        Caption = 'id'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 49
        Top = 23
        Width = 31
        Height = 13
        Caption = 'Nome:'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 266
        Top = 23
        Width = 85
        Height = 13
        Caption = 'Data Nascimento:'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 406
        Top = 23
        Width = 23
        Height = 13
        Caption = 'CPF:'
        FocusControl = DBEdit4
      end
      object Label8: TLabel
        Left = 16
        Top = 115
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
      end
      object Label9: TLabel
        Left = 221
        Top = 115
        Width = 28
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 285
        Top = 69
        Width = 37
        Height = 13
        Caption = 'Cidade:'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 516
        Top = 69
        Width = 17
        Height = 13
        Caption = 'UF:'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 435
        Top = 115
        Width = 23
        Height = 13
        Caption = 'CEP:'
        FocusControl = DBEdit8
      end
      object Label5: TLabel
        Left = 136
        Top = 69
        Width = 37
        Height = 13
        Caption = 'Celular:'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 16
        Top = 69
        Width = 28
        Height = 13
        Caption = 'Fone:'
        FocusControl = DBEdit6
      end
      object BNovo: TButton
        Left = 14
        Top = 169
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 0
        OnClick = BNovoClick
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 42
        Width = 15
        Height = 21
        DataField = 'id'
        DataSource = DMConexao.DSAlunos
        Enabled = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 49
        Top = 42
        Width = 200
        Height = 21
        DataField = 'name'
        DataSource = DSAlunos
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 266
        Top = 42
        Width = 134
        Height = 21
        DataField = 'dt_nasc'
        DataSource = DSAlunos
        TabOrder = 3
      end
      object BSalvar: TButton
        Left = 233
        Top = 169
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 4
        OnClick = BSalvarClick
      end
      object BEditar: TButton
        Left = 123
        Top = 169
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 5
        OnClick = BEditarClick
      end
      object BCancelar: TButton
        Left = 354
        Top = 169
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 6
        OnClick = BCancelarClick
      end
      object BExcluir: TButton
        Left = 475
        Top = 169
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 7
        OnClick = BExcluirClick
      end
      object DBEdit4: TDBEdit
        Left = 406
        Top = 42
        Width = 140
        Height = 21
        DataField = 'cpf'
        DataSource = DSAlunos
        MaxLength = 14
        TabOrder = 8
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 134
        Width = 188
        Height = 21
        DataField = 'cep'
        DataSource = DSAlunos
        MaxLength = 9
        TabOrder = 9
      end
      object DBEdit9: TDBEdit
        Left = 221
        Top = 134
        Width = 196
        Height = 21
        DataField = 'bairro'
        DataSource = DSAlunos
        TabOrder = 10
      end
      object DBEdit10: TDBEdit
        Left = 285
        Top = 88
        Width = 213
        Height = 21
        DataField = 'cidade'
        DataSource = DSAlunos
        TabOrder = 11
      end
      object DBEdit11: TDBEdit
        Left = 516
        Top = 88
        Width = 30
        Height = 21
        DataField = 'uf'
        DataSource = DSAlunos
        TabOrder = 12
      end
      object DBEdit8: TDBEdit
        Left = 435
        Top = 134
        Width = 111
        Height = 21
        DataField = 'cep'
        DataSource = DSAlunos
        MaxLength = 9
        TabOrder = 13
      end
      object DBEdit5: TDBEdit
        Left = 136
        Top = 88
        Width = 124
        Height = 21
        DataField = 'celular'
        DataSource = DSAlunos
        MaxLength = 15
        TabOrder = 14
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 88
        Width = 110
        Height = 21
        DataField = 'fone'
        DataSource = DSAlunos
        MaxLength = 14
        TabOrder = 15
      end
    end
    object TConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      ExplicitWidth = 560
      object PSQL: TPanel
        Left = 3
        Top = 3
        Width = 433
        Height = 214
        TabOrder = 0
        object EPesquisar: TEdit
          Left = 16
          Top = 12
          Width = 241
          Height = 21
          TabOrder = 0
        end
        object BPesquisar: TButton
          Left = 263
          Top = 10
          Width = 101
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 1
          OnClick = BPesquisarClick
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 47
          Width = 433
          Height = 162
          DataSource = DMConexao.DSAlunos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
        end
      end
    end
  end
  object DSAlunos: TDataSource
    AutoEdit = False
    DataSet = DMConexao.FDQAlunos
    OnStateChange = DSAlunosStateChange
    Left = 232
    Top = 144
  end
end
