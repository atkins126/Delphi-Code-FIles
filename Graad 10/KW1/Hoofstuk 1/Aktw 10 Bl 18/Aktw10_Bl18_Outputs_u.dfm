object Form10: TForm10
  Left = 613
  Top = 225
  Caption = 'Form10'
  ClientHeight = 225
  ClientWidth = 236
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesigned
  TextHeight = 13
  object Button1: TButton
    Left = 56
    Top = 24
    Width = 120
    Height = 25
    Caption = '3 + 5 x 4'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 56
    Top = 72
    Width = 120
    Height = 25
    Caption = '(50 + 5) '#247' 11'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 56
    Top = 120
    Width = 120
    Height = 25
    Caption = '(3+50)'#178
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 56
    Top = 168
    Width = 120
    Height = 25
    Caption = 'The value of Pi'
    TabOrder = 3
    OnClick = Button4Click
  end
end
