object frmPryse: TfrmPryse
  Left = 426
  Top = 156
  Caption = 'Pryse'
  ClientHeight = 594
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnActivate = FormActivate
  TextHeight = 15
  object lblPrys1: TLabel
    Left = 48
    Top = 40
    Width = 31
    Height = 15
    Caption = 'Prys 1'
  end
  object lblPrys2: TLabel
    Left = 48
    Top = 83
    Width = 31
    Height = 15
    Caption = 'Prys 2'
  end
  object lblPrys3: TLabel
    Left = 48
    Top = 131
    Width = 31
    Height = 15
    Caption = 'Prys 3'
  end
  object edtPrys1: TEdit
    Left = 144
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 0
    Text = '50'
  end
  object edtPrys2: TEdit
    Left = 144
    Top = 80
    Width = 121
    Height = 23
    TabOrder = 1
    Text = '20'
  end
  object edtPrys3: TEdit
    Left = 144
    Top = 128
    Width = 121
    Height = 23
    TabOrder = 2
    Text = '30'
  end
  object btnBereken: TButton
    Left = 96
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Bereken'
    TabOrder = 3
    OnClick = btnBerekenClick
  end
  object redAfvoer: TRichEdit
    Left = 48
    Top = 288
    Width = 537
    Height = 298
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end
