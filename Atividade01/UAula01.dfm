object FAula01: TFAula01
  Left = 0
  Top = 0
  Caption = 'FAula01'
  ClientHeight = 275
  ClientWidth = 252
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EResultado: TEdit
    Left = 8
    Top = 8
    Width = 239
    Height = 33
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 166
    Width = 41
    Height = 49
    Caption = '1'
    TabOrder = 1
  end
  object Button2: TButton
    Left = 55
    Top = 166
    Width = 41
    Height = 49
    Caption = '2'
    TabOrder = 2
  end
  object Button3: TButton
    Left = 102
    Top = 166
    Width = 41
    Height = 49
    Caption = '3'
    TabOrder = 3
  end
  object Button4: TButton
    Left = 102
    Top = 111
    Width = 41
    Height = 49
    Caption = '6'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 55
    Top = 111
    Width = 41
    Height = 49
    Caption = '5'
    TabOrder = 5
  end
  object Button6: TButton
    Left = 8
    Top = 111
    Width = 41
    Height = 49
    Caption = '4'
    TabOrder = 6
  end
  object Button7: TButton
    Left = 102
    Top = 56
    Width = 41
    Height = 49
    Caption = '9'
    TabOrder = 7
  end
  object Button8: TButton
    Left = 55
    Top = 56
    Width = 41
    Height = 49
    Caption = '8'
    TabOrder = 8
  end
  object Button9: TButton
    Left = 8
    Top = 56
    Width = 41
    Height = 49
    Caption = '7'
    TabOrder = 9
  end
  object Button10: TButton
    Left = 8
    Top = 221
    Width = 41
    Height = 49
    Caption = ','
    TabOrder = 10
  end
  object Button11: TButton
    Left = 55
    Top = 221
    Width = 88
    Height = 49
    Caption = '0'
    TabOrder = 11
  end
  object Bsoma: TButton
    Left = 159
    Top = 56
    Width = 41
    Height = 49
    Caption = '+'
    TabOrder = 12
    OnClick = BsomaClick
  end
  object BClear: TButton
    Left = 206
    Top = 56
    Width = 41
    Height = 49
    Caption = 'C'
    TabOrder = 13
    OnClick = BClearClick
  end
  object BSub: TButton
    Left = 159
    Top = 111
    Width = 41
    Height = 49
    Caption = '-'
    TabOrder = 14
    OnClick = BSubClick
  end
  object Button15: TButton
    Left = 206
    Top = 111
    Width = 41
    Height = 49
    Caption = '+/-'
    TabOrder = 15
  end
  object BDiv: TButton
    Left = 159
    Top = 166
    Width = 41
    Height = 49
    Caption = '/'
    TabOrder = 16
    OnClick = BDivClick
  end
  object BMulti: TButton
    Left = 159
    Top = 221
    Width = 41
    Height = 49
    Caption = '*'
    TabOrder = 17
    OnClick = BMultiClick
  end
  object BIgual: TButton
    Left = 206
    Top = 166
    Width = 41
    Height = 104
    Caption = '='
    TabOrder = 18
    OnClick = BIgualClick
  end
end
