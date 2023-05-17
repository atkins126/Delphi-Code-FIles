unit frmInternetCafe_u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Math, Buttons;

 const
  Cost = 25;

type
  TfrmInternetCafe = class(TForm)
    lblHeading: TLabel;
    pnlOn: TPanel;
    pnlOff: TPanel;
    lblOnHour: TLabel;
    lblOnMin: TLabel;
    lblOffHour: TLabel;
    lblOffMin: TLabel;
    lblClients: TLabel;
    lblInDay: TLabel;
    lblAvgSession: TLabel;
    lblBusyFor: TLabel;
    lblCostSes: TLabel;
    edtOnHour: TEdit;
    edtOnMin: TEdit;
    edtOffHour: TEdit;
    edtOffMin: TEdit;
    btnCalculate: TButton;
    btnReset: TButton;
    lblNumClients: TLabel;
    lblDayTakings: TLabel;
    lblAveTakings: TLabel;
    lblTime: TLabel;
    lblCost: TLabel;
    bmbClose: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    procedure btnCalculateClick(Sender: TObject);
  private

    var
      rClients,rAvgEarnings, rEarningsTot, rBusy, rSessionTot, rHourB, rMinB, rHourE, rMinE, rMinBTot, rMinETot,
      rTimeTot, rTotCost  : integer;
      iDes, iInt, iTimeTot : Integer;


  public
    { Public declarations }
  end;

var
  frmInternetCafe: TfrmInternetCafe;

implementation

{$R *.DFM}


procedure TfrmInternetCafe.btnCalculateClick(Sender: TObject);
begin

  rClients := rClients + 1;
  lblNumClients.Caption := 'No of clients: ' + IntToStr(rClients);

  rHourB := StrToInt(edtOnHour.Text);
  rMinB := StrToInt(edtOnMin.Text);

  rHourE := StrToInt(edtOffHour.Text);
  rMinE := StrToInt(edtOffMin.Text);

  rMinBTot := (rHourB * 60) + rMinB;
  rMinETot := ( rHourE * 60) + rMinE;

  iTimeTot := rMinETot + rMinBTot;



  iDes := iTimeTot mod 60;


  iInt := iTimeTot div 60;

  if iDes > 0 then

  iInt := iInt + 1

  else

  iInt := iInt + 0;


  lblTime.Caption := 'This client was busy for: ' + IntToStr(iInt);


  edtOnHour.Clear;
  edtOnMin.Clear;
  edtOffMin.Clear;
  edtOffHour.Clear;







  {rHourB := StrToInt(edtOnHour.Text);
  rMinB := StrToInt(edtOnMin.Text);

  rHourE := StrToInt(edtOffHour.Text);
  rMinE := StrToInt(edtOffMin.Text);

  rMinBTot := (rHourB * 60) + rMinB;
  rMinETot := ( rHourE * 60) + rMinE;

  iTimeTot := rMinETot + rMinBTot;



  iDes := iTimeTot mod 60;


  iInt := iTimeTot div 60;


  edtOnHour.Clear;
  edtOnMin.Clear;
  edtOffMin.Clear;
  edtOffHour.Clear; }








end;

end.

