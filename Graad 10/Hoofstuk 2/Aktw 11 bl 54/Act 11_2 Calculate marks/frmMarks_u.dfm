object frmMarks: TfrmMarks
  Left = 192
  Top = 146
  Caption = 'Class average calculator'
  ClientHeight = 360
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OnActivate = FormActivate
  TextHeight = 16
  object lblMarkMsg: TLabel
    Left = 24
    Top = 19
    Width = 256
    Height = 16
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Enter the maximum marks for the test:'
  end
  object lblLearnermark: TLabel
    Left = 26
    Top = 59
    Width = 169
    Height = 16
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Enter the learner'#39's mark:'
  end
  object edtLearnerScore: TEdit
    Left = 338
    Top = 52
    Width = 96
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 0
  end
  object edtTestMark: TEdit
    Left = 338
    Top = 14
    Width = 96
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 1
  end
  object btnAdd: TButton
    Left = 136
    Top = 93
    Width = 161
    Height = 33
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = '&Add mark'
    TabOrder = 2
    OnClick = btnAddClick
  end
  object btnNextClass: TBitBtn
    Left = 14
    Top = 280
    Width = 132
    Height = 34
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Next class'
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 3
    OnClick = btnNextClassClick
  end
  object bmbClose: TBitBtn
    Left = 306
    Top = 280
    Width = 132
    Height = 34
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 4
  end
  object redClassAvg: TRichEdit
    Left = 48
    Top = 215
    Width = 386
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object redPercentage: TRichEdit
    Left = 48
    Top = 128
    Width = 386
    Height = 34
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object redNumMarks: TRichEdit
    Left = 48
    Top = 168
    Width = 386
    Height = 41
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
end
