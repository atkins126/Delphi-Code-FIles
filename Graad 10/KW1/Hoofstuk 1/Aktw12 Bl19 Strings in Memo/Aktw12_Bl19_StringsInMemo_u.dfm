object frmStringInMemo: TfrmStringInMemo
  Left = 0
  Top = 0
  Caption = 'Info'
  ClientHeight = 356
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object pnlNameSurname: TPanel
    Left = 24
    Top = 32
    Width = 178
    Height = 137
    TabOrder = 0
    object lblName: TLabel
      Left = 24
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Name'
    end
    object lblSurname: TLabel
      Left = 24
      Top = 80
      Width = 42
      Height = 13
      Caption = 'Surname'
    end
    object edtName: TEdit
      Left = 72
      Top = 21
      Width = 100
      Height = 21
      TabOrder = 0
    end
    object edtSurname: TEdit
      Left = 78
      Top = 77
      Width = 100
      Height = 21
      TabOrder = 1
    end
  end
  object pnlInfo: TPanel
    Left = 208
    Top = 32
    Width = 209
    Height = 137
    TabOrder = 1
    object lblTel: TLabel
      Left = 12
      Top = 24
      Width = 50
      Height = 13
      Caption = 'Telephone'
    end
    object lblCell: TLabel
      Left = 12
      Top = 56
      Width = 17
      Height = 13
      Caption = 'Cell'
    end
    object lblEmail: TLabel
      Left = 12
      Top = 96
      Width = 28
      Height = 13
      Caption = 'E-mail'
    end
    object edtTel: TEdit
      Left = 70
      Top = 24
      Width = 120
      Height = 21
      TabOrder = 0
    end
    object edtCell: TEdit
      Left = 70
      Top = 64
      Width = 120
      Height = 21
      TabOrder = 1
    end
    object edtEmail: TEdit
      Left = 70
      Top = 91
      Width = 120
      Height = 21
      TabOrder = 2
    end
  end
  object memOutput: TMemo
    Left = 24
    Top = 192
    Width = 161
    Height = 137
    TabOrder = 2
  end
  object pnlButtons: TPanel
    Left = 240
    Top = 190
    Width = 142
    Height = 139
    TabOrder = 3
    object btnAdd: TButton
      Left = 40
      Top = 16
      Width = 75
      Height = 25
      Hint = 'Tik eers alle info in Edit-komponente in'
      Caption = 'Add'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnAddClick
    end
    object bmbReset: TBitBtn
      Left = 40
      Top = 64
      Width = 75
      Height = 25
      Caption = '&Reset'
      Kind = bkRetry
      NumGlyphs = 2
      TabOrder = 1
      OnClick = bmbResetClick
    end
    object bmbClose: TBitBtn
      Left = 40
      Top = 104
      Width = 75
      Height = 25
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 2
    end
  end
end
