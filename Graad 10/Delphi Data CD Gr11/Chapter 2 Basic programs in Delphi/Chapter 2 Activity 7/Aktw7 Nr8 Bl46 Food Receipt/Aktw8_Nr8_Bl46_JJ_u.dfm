object frmFood: TfrmFood
  Left = 0
  Top = 0
  Caption = 'Food Receipt'
  ClientHeight = 350
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object btnCalculate: TButton
    Left = 64
    Top = 72
    Width = 75
    Height = 25
    Caption = '&Calculate'
    TabOrder = 0
  end
  object ledWeight: TLabeledEdit
    Left = 64
    Top = 24
    Width = 121
    Height = 21
    EditLabel.Width = 78
    EditLabel.Height = 13
    EditLabel.Caption = 'Weight of Food:'
    TabOrder = 1
    Text = ''
  end
  object redAfvoer: TRichEdit
    Left = 32
    Top = 128
    Width = 393
    Height = 145
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object bmbReset: TBitBtn
    Left = 80
    Top = 304
    Width = 75
    Height = 25
    Caption = '&Reset'
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 3
  end
  object bmbClose: TBitBtn
    Left = 288
    Top = 304
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 4
  end
end
