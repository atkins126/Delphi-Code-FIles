object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 615
  ClientWidth = 196
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object led1: TLabeledEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 23
    EditLabel.Width = 22
    EditLabel.Height = 15
    EditLabel.Caption = 'led1'
    TabOrder = 0
    Text = ''
  end
  object btn1: TButton
    Left = 8
    Top = 53
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 1
    OnClick = btn1Click
  end
  object mem1: TMemo
    Left = 8
    Top = 84
    Width = 180
    Height = 523
    BevelOuter = bvRaised
    Lines.Strings = (
      '')
    TabOrder = 2
  end
end