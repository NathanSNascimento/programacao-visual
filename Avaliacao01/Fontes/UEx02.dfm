object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TPanel: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 201
    Align = alClient
    TabOrder = 0
    object ECalcular: TEdit
      Left = 136
      Top = 80
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object BCalcular: TButton
      Left = 160
      Top = 120
      Width = 81
      Height = 25
      Caption = 'Calcular'
      TabOrder = 1
      OnClick = BCalcularClick
    end
  end
end
