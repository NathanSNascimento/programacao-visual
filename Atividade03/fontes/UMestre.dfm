object FMestre: TFMestre
  Left = 0
  Top = 0
  Caption = 'Relatorio de Mestre e Detalhes'
  ClientHeight = 427
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGMestre: TDBGrid
    Left = 72
    Top = 32
    Width = 505
    Height = 153
    DataSource = DMConexao.DSMestre
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_mestre'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ds_mestre'
        Title.Caption = 'Descri'#231#227'o'
        Width = 350
        Visible = True
      end>
  end
  object DBGDetalhe: TDBGrid
    Left = 72
    Top = 216
    Width = 505
    Height = 153
    DataSource = DMConexao.DSDetalhe
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_detalhe'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_mestre'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 240
    Top = 385
    Width = 137
    Height = 34
    Caption = 'BitBtn1'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
