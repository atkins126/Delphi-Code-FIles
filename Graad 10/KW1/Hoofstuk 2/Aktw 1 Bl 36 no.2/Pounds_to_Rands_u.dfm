object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblExchangeRate: TLabel
    Left = 48
    Top = 40
    Width = 77
    Height = 15
    Caption = 'Exchange Rate'
  end
  object lblAmountInPounds: TLabel
    Left = 48
    Top = 88
    Width = 100
    Height = 15
    Caption = 'Amount In Pounds'
  end
  object redAfvoer: TRichEdit
    Left = 168
    Top = 272
    Width = 185
    Height = 89
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtExchangeRate: TEdit
    Left = 200
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object btnCalculate: TButton
    Left = 80
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Calculate'
    TabOrder = 2
    OnClick = btnCalculateClick
  end
  object edtAmounInPounds: TEdit
    Left = 200
    Top = 85
    Width = 121
    Height = 23
    TabOrder = 3
  end
end
