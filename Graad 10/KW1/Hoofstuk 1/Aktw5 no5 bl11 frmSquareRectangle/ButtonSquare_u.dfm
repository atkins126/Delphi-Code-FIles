object frmSize: TfrmSize
  Left = 755
  Top = 408
  Caption = 'Size'
  ClientHeight = 80
  ClientWidth = 97
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object btnSquare: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Square'
    TabOrder = 0
    OnClick = btnSquareClick
  end
  object btnRectangle: TButton
    Left = 8
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Rectangle'
    TabOrder = 1
    OnClick = btnRectangleClick
  end
end
