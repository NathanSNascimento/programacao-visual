object FCadCidades: TFCadCidades
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cidades'
  ClientHeight = 201
  ClientWidth = 445
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
  object PCCidades: TPageControl
    Left = 0
    Top = 0
    Width = 445
    Height = 201
    ActivePage = TConsulta
    Align = alClient
    TabOrder = 0
    object TCadastro: TTabSheet
      Caption = 'Cadastro'
      object Label1: TLabel
        Left = 19
        Top = 64
        Width = 37
        Height = 13
        Caption = 'Cidade:'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 25
        Top = 16
        Width = 17
        Height = 13
        Caption = 'UF:'
      end
      object BNovo: TButton
        Left = 3
        Top = 129
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 0
        OnClick = BNovoClick
      end
      object BSalvar: TButton
        Left = 180
        Top = 129
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 1
        OnClick = BSalvarClick
      end
      object BEditar: TButton
        Left = 92
        Top = 129
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 2
        OnClick = BEditarClick
      end
      object BCancelar: TButton
        Left = 261
        Top = 129
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = BCancelarClick
      end
      object BExcluir: TButton
        Left = 354
        Top = 129
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 4
        OnClick = BExcluirClick
      end
      object DBEdit1: TDBEdit
        Left = 19
        Top = 83
        Width = 198
        Height = 21
        DataField = 'nm_cidade'
        DataSource = DSCidade
        TabOrder = 5
      end
      object CBSigla: TDBLookupComboBox
        Left = 19
        Top = 37
        Width = 145
        Height = 21
        DataField = 'id_estado'
        DataSource = DSCidade
        KeyField = 'id_estado'
        ListField = 'sigla_nome'
        ListSource = DSEstadoNome
        TabOrder = 6
      end
    end
    object TConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object PSQL: TPanel
        Left = 3
        Top = 0
        Width = 433
        Height = 169
        TabOrder = 0
        object Label3: TLabel
          Left = 160
          Top = 72
          Width = 37
          Height = 13
          Caption = 'sigla_uf'
        end
        object Label4: TLabel
          Left = 128
          Top = 128
          Width = 53
          Height = 13
          Caption = 'sigla_nome'
        end
        object EPesquisar: TEdit
          Left = 0
          Top = 14
          Width = 319
          Height = 21
          TabOrder = 0
        end
        object BPesquisar: TButton
          Left = 325
          Top = 10
          Width = 101
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 1
          OnClick = BPesquisarClick
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 41
          Width = 433
          Height = 120
          DataSource = DSCidade
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'id_cidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'id_estado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_cidade'
              Title.Caption = 'Cidade'
              Width = 270
              Visible = True
            end>
        end
      end
    end
  end
  object DSCidade: TDataSource
    DataSet = DMConexao.FDQCidades
    OnStateChange = DSCidadeStateChange
    Left = 384
    Top = 72
  end
  object DSEstadoNome: TDataSource
    DataSet = DMConexao.FDQComboEstados
    Left = 312
    Top = 24
  end
end
