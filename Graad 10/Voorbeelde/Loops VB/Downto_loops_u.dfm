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
  object btnPunte: TButton
    Left = 128
    Top = 72
    Width = 321
    Height = 25
    Caption = 'Lees Punt en Bepaal Simbool'
    TabOrder = 0
    OnClick = btnPunteClick
  end
  object pnlOutput: TPanel
    Left = 112
    Top = 184
    Width = 185
    Height = 41
    TabOrder = 1
  end
  object redOutput: TRichEdit
    Left = 48
    Top = 272
    Width = 568
    Height = 161
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 2
  end
end
