object FCadMarcas: TFCadMarcas
  Left = 0
  Top = 0
  Caption = 'Cadastro de Marcas'
  ClientHeight = 201
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PCMarcas: TPageControl
    Left = 0
    Top = 0
    Width = 369
    Height = 201
    ActivePage = TConsulta
    TabOrder = 0
    object TCadastro: TTabSheet
      Caption = 'Cadastro'
      object Label1: TLabel
        Left = 19
        Top = 16
        Width = 15
        Height = 13
        Caption = 'ID:'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 19
        Top = 56
        Width = 31
        Height = 13
        Caption = 'Nome:'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 19
        Top = 31
        Width = 54
        Height = 21
        DataField = 'id_marcas'
        DataSource = DMConnMarca.DSMarcas
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 19
        Top = 72
        Width = 330
        Height = 21
        DataField = 'nm_marcas'
        DataSource = DMConnMarca.DSMarcas
        TabOrder = 1
      end
      object BNovo: TBitBtn
        Left = 19
        Top = 112
        Width = 60
        Height = 25
        Caption = 'Novo'
        TabOrder = 2
        OnClick = BNovoClick
      end
      object BEditar: TBitBtn
        Left = 85
        Top = 112
        Width = 60
        Height = 25
        Caption = 'Editar'
        TabOrder = 3
        OnClick = BEditarClick
      end
      object BSalvar: TBitBtn
        Left = 155
        Top = 112
        Width = 60
        Height = 25
        Caption = 'Salvar'
        TabOrder = 4
        OnClick = BSalvarClick
      end
      object BCancelar: TBitBtn
        Left = 223
        Top = 112
        Width = 60
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 5
        OnClick = BCancelarClick
      end
      object BExcluir: TBitBtn
        Left = 289
        Top = 112
        Width = 60
        Height = 25
        Caption = 'Excluir'
        TabOrder = 6
        OnClick = BExcluirClick
      end
    end
    object TConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object EPesquisar: TEdit
        Left = 16
        Top = 16
        Width = 225
        Height = 21
        TabOrder = 0
      end
      object BPesquisar: TBitBtn
        Left = 247
        Top = 14
        Width = 98
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 1
        OnClick = BPesquisarClick
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 45
        Width = 329
        Height = 120
        DataSource = DSMarcas
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
            FieldName = 'id_marcas'
            Title.Caption = 'ID'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_marcas'
            Title.Caption = 'Nomes'
            Width = 290
            Visible = True
          end>
      end
    end
  end
  object DSMarcas: TDataSource
    DataSet = DMConnMarca.FDQMarcas
    OnStateChange = DSMarcasStateChange
    Left = 332
    Top = 168
  end
end
