object FCadCores: TFCadCores
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cores'
  ClientHeight = 210
  ClientWidth = 347
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
  object PCCores: TPageControl
    Left = 0
    Top = 0
    Width = 345
    Height = 209
    ActivePage = TCadastro
    TabOrder = 0
    object TCadastro: TTabSheet
      Caption = 'Cadastro'
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 29
        Height = 13
        Caption = 'id_cor'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 35
        Height = 13
        Caption = 'nm_cor'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 35
        Height = 21
        DataField = 'id_cor'
        DataSource = DSCores
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 75
        Width = 177
        Height = 21
        DataField = 'nm_cor'
        DataSource = DSCores
        TabOrder = 1
      end
      object BNovo: TBitBtn
        Left = 3
        Top = 120
        Width = 60
        Height = 25
        Caption = 'Novo'
        TabOrder = 2
        OnClick = BNovoClick
      end
      object BEditar: TBitBtn
        Left = 69
        Top = 120
        Width = 60
        Height = 25
        Caption = 'Editar'
        TabOrder = 3
        OnClick = BEditarClick
      end
      object BSalvar: TBitBtn
        Left = 135
        Top = 120
        Width = 60
        Height = 25
        Caption = 'Salvar'
        TabOrder = 4
        OnClick = BSalvarClick
      end
      object BCancelar: TBitBtn
        Left = 201
        Top = 120
        Width = 60
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 5
        OnClick = BCancelarClick
      end
      object BExcluir: TBitBtn
        Left = 267
        Top = 120
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object EPesquisar: TEdit
        Left = 16
        Top = 16
        Width = 217
        Height = 21
        TabOrder = 0
      end
      object BPesquisar: TBitBtn
        Left = 239
        Top = 14
        Width = 82
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 1
        OnClick = BPesquisarClick
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 43
        Width = 305
        Height = 135
        DataSource = DSCores
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
            FieldName = 'id_cor'
            Title.Caption = 'ID'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_cor'
            Title.Caption = 'Nome'
            Width = 265
            Visible = True
          end>
      end
    end
  end
  object DSCores: TDataSource
    DataSet = DMConnCor.FDQCores
    OnStateChange = DSCoresStateChange
    Left = 288
    Top = 128
  end
end
