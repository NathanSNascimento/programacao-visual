object FPesquisa: TFPesquisa
  Left = 0
  Top = 0
  Caption = 'Consulta Geral'
  ClientHeight = 223
  ClientWidth = 494
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
  object PCPesquisa: TPageControl
    Left = 0
    Top = 0
    Width = 494
    Height = 223
    ActivePage = TPesquisar
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 447
    ExplicitHeight = 211
    object TPesquisar: TTabSheet
      Caption = 'Pesquisar'
      ExplicitLeft = 8
      ExplicitTop = 16
      ExplicitWidth = 549
      ExplicitHeight = 257
      object LResultados: TLabel
        Left = 24
        Top = 172
        Width = 66
        Height = 13
        Caption = 'Resultados: 0'
      end
      object EPesquisar: TEdit
        Left = 24
        Top = 7
        Width = 360
        Height = 21
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 24
        Top = 34
        Width = 457
        Height = 124
        DataSource = DSSearch
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'nr_chassi'
            Title.Caption = 'N'#186' Chassi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modelo'
            Title.Caption = 'Modelo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_marcas'
            Title.Caption = 'Marca'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtde_portas'
            Title.Caption = 'Portas'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ano'
            Title.Caption = 'Ano'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 150
            Visible = True
          end>
      end
      object BPesquisar: TBitBtn
        Left = 390
        Top = 3
        Width = 91
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 2
        OnClick = BPesquisarClick
      end
    end
  end
  object DSSearch: TDataSource
    DataSet = DMPesquisa.FDQPesquisa
    Left = 240
    Top = 192
  end
end
