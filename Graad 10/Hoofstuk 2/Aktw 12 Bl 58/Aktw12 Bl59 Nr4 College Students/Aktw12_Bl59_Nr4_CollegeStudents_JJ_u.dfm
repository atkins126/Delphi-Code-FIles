object frmCollegeStudents: TfrmCollegeStudents
  Left = 0
  Top = 0
  Caption = 'Registration of College Students'
  ClientHeight = 296
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 13
  object ledName: TLabeledEdit
    Left = 32
    Top = 24
    Width = 121
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = 'Name:'
    TabOrder = 0
    Text = 'Marlu'
  end
  object ledSurname: TLabeledEdit
    Left = 184
    Top = 24
    Width = 121
    Height = 21
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'Surname:'
    TabOrder = 1
    Text = 'Potgieter'
  end
  object ledGr12Mark: TLabeledEdit
    Left = 344
    Top = 24
    Width = 121
    Height = 21
    EditLabel.Width = 53
    EditLabel.Height = 13
    EditLabel.Caption = 'Gr12 Mark:'
    TabOrder = 2
    Text = '94'
  end
  object btnDistinction: TButton
    Left = 32
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Distinction'
    TabOrder = 3
    OnClick = btnDistinctionClick
  end
  object btnResidence: TButton
    Left = 32
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Residence'
    TabOrder = 4
    OnClick = btnResidenceClick
  end
  object btnBursary: TButton
    Left = 32
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Bursary'
    TabOrder = 5
    OnClick = btnBursaryClick
  end
  object btnRegister: TButton
    Left = 32
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Register'
    TabOrder = 6
    OnClick = btnRegisterClick
  end
  object bmbNext: TBitBtn
    Left = 32
    Top = 168
    Width = 75
    Height = 25
    Caption = '&Next'
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 7
    OnClick = bmbNextClick
  end
  object bmbClose: TBitBtn
    Left = 32
    Top = 192
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 8
  end
  object pnlFees: TPanel
    Left = 152
    Top = 57
    Width = 313
    Height = 32
    TabOrder = 9
  end
  object redAfvoer: TRichEdit
    Left = 152
    Top = 104
    Width = 313
    Height = 184
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
end
