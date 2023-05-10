object frmParkingArea: TfrmParkingArea
  Left = 192
  Top = 179
  Caption = 'Parking Area Control'
  ClientHeight = 321
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 16
  object pnlVotes: TPanel
    Left = 7
    Top = 7
    Width = 317
    Height = 271
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 0
    object lblMessage: TLabel
      Left = 46
      Top = 16
      Width = 179
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Click on Enter or Leave button:'
    end
    object lblVehicles: TLabel
      Left = 16
      Top = 115
      Width = 231
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Number of vehicles in the parking area:'
    end
    object bmbReset: TBitBtn
      Left = 23
      Top = 223
      Width = 94
      Height = 39
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = '&Reset'
      Kind = bkRetry
      NumGlyphs = 2
      TabOrder = 0
      OnClick = bmbResetClick
    end
    object bmbClose: TBitBtn
      Left = 202
      Top = 223
      Width = 93
      Height = 39
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 1
    end
    object pnlTotal: TPanel
      Left = 115
      Top = 146
      Width = 79
      Height = 55
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = '0'
      TabOrder = 2
    end
    object btnEnter: TButton
      Left = 23
      Top = 46
      Width = 72
      Height = 48
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = '&Enter'
      TabOrder = 3
      OnClick = btnEnterClick
    end
    object btnLeave: TButton
      Left = 215
      Top = 46
      Width = 72
      Height = 48
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = '&Leave'
      TabOrder = 4
      OnClick = btnLeaveClick
    end
  end
end
