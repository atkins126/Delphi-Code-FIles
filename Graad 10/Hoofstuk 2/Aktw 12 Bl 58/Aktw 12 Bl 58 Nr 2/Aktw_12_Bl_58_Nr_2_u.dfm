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
  OnActivate = FormActivate
  TextHeight = 15
  object lblCost: TLabel
    Left = 48
    Top = 40
    Width = 144
    Height = 15
    Caption = 'Enter The Amount Of Items'
  end
  object lblPay: TLabel
    Left = 48
    Top = 275
    Width = 185
    Height = 15
    Caption = 'Enter How Much They Want To Pay'
  end
  object redAfvoer: TRichEdit
    Left = 280
    Top = 80
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
  object btnPention: TButton
    Left = 48
    Top = 88
    Width = 113
    Height = 25
    Caption = 'Pentioner'
    TabOrder = 1
    OnClick = btnPentionClick
  end
  object btnLoyalty: TButton
    Left = 48
    Top = 111
    Width = 113
    Height = 25
    Caption = 'Loyalty Card'
    TabOrder = 2
    OnClick = btnLoyaltyClick
  end
  object bmbClose: TBitBtn
    Left = 48
    Top = 180
    Width = 113
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
  object bmbNext: TBitBtn
    Left = 48
    Top = 157
    Width = 113
    Height = 25
    Caption = '&Next Customer'
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 4
    OnClick = bmbNextClick
  end
  object sedCost: TSpinEdit
    Left = 280
    Top = 37
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 0
  end
  object btnNoDiscount: TButton
    Left = 48
    Top = 134
    Width = 113
    Height = 25
    Caption = 'No Discount'
    TabOrder = 6
    OnClick = btnNoDiscountClick
  end
  object sedPay: TSpinEdit
    Left = 280
    Top = 272
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 7
    Value = 0
  end
end
