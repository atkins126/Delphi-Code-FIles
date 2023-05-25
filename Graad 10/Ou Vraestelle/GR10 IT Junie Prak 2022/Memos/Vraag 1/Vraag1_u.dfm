object frmVraag1: TfrmVraag1
  Left = 0
  Top = 0
  Caption = 'Vraag 1'
  ClientHeight = 291
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNaam: TLabel
    Left = 40
    Top = 20
    Width = 31
    Height = 13
    Caption = 'Naam:'
  end
  object btnSportspan: TButton
    Left = 160
    Top = 72
    Width = 175
    Height = 25
    Caption = '&Bepaal Sportspan'
    TabOrder = 2
    OnClick = btnSportspanClick
  end
  object ledVan: TLabeledEdit
    Left = 384
    Top = 17
    Width = 121
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = 'Van:'
    LabelPosition = lpLeft
    TabOrder = 1
  end
  object pnlAfvoer: TPanel
    Left = 160
    Top = 144
    Width = 175
    Height = 33
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 5
  end
  object bmbReset: TBitBtn
    Left = 88
    Top = 232
    Width = 75
    Height = 25
    Caption = '&Reset'
    Enabled = False
    Kind = bkRetry
    TabOrder = 3
  end
  object bmbClose: TBitBtn
    Left = 336
    Top = 232
    Width = 75
    Height = 25
    Kind = bkClose
    TabOrder = 4
  end
  object edtNaam: TEdit
    Left = 104
    Top = 17
    Width = 121
    Height = 21
    TabOrder = 0
  end
end
