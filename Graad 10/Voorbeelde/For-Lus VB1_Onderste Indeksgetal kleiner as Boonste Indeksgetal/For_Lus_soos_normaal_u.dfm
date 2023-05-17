object frmForLus: TfrmForLus
  Left = 0
  Top = 0
  Caption = 'Normale For-Lus'
  ClientHeight = 332
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object btnGetalle: TButton
    Left = 104
    Top = 32
    Width = 113
    Height = 25
    Caption = 'Met Getalle'
    TabOrder = 0
    OnClick = btnGetalleClick
  end
  object btnChar: TButton
    Left = 288
    Top = 32
    Width = 99
    Height = 25
    Caption = 'Met Chars'
    TabOrder = 1
    OnClick = btnCharClick
  end
  object redAfvoer: TRichEdit
    Left = 80
    Top = 96
    Width = 329
    Height = 209
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
