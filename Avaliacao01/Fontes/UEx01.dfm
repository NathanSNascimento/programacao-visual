object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 201
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 8
    object Label1: TLabel
      Left = 75
      Top = 27
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label2: TLabel
      Left = 13
      Top = 64
      Width = 93
      Height = 13
      Caption = 'Horas  Trabalhadas'
    end
    object Label3: TLabel
      Left = 38
      Top = 99
      Width = 68
      Height = 13
      Caption = 'Dependentes:'
    end
    object ENome: TEdit
      Left = 112
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object EHoras: TEdit
      Left = 112
      Top = 61
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object EDep: TEdit
      Left = 112
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object BCalcular: TButton
      Left = 136
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Calcular'
      TabOrder = 3
      OnClick = BCalcularClick
    end
  end
end
