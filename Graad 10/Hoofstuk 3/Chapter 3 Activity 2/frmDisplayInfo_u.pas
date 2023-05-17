unit frmDisplayInfo_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

const
  CurrentYear = 2023;

type
  TfrmDisplayInfo = class(TForm)
    btnDisplay: TButton;
    edtName: TEdit;
    edtSurname: TEdit;
    edtYear: TEdit;
    lblName: TLabel;
    lblSurname: TLabel;
    lblYearOfBirth: TLabel;
    memOutput: TMemo;
    bmbClose: TBitBtn;
    bmbReset: TBitBtn;
    procedure bmbResetClick(Sender: TObject);
    procedure btnDisplayClick(Sender: TObject);
  private

  var
    sName, sSurname, sYear, sAge  : string;
    myDate : TDateTime;
    rYear : Real;

  public
    { Public declarations }
  end;

var
  frmDisplayInfo: TfrmDisplayInfo;

implementation

{$R *.dfm}

procedure TfrmDisplayInfo.bmbResetClick(Sender: TObject);
begin

  edtName.Clear;
  edtSurname.Clear;
  edtYear.Clear;
  memOutput.Clear;

  edtName.SetFocus;

end;

procedure TfrmDisplayInfo.btnDisplayClick(Sender: TObject);
begin

  sName := edtName.Text;
  sSurname := edtSurname.Text;
  sYear := edtYear.Text;
  sAge := FloatToStr(CurrentYear - StrToInt(sYear));





  memOutput.Lines.Add('Date of query: ' + SysUtils.DateToStr(Date) );
  memOutput.Lines.Add('Name & Surname: ' + UpperCase(sName) + ' ' + UpperCase(sSurname));
  memOutput.Lines.Add('Your age is: ' + sAge);




end;


end.

