unit frmParkingArea_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TfrmParkingArea = class(TForm)
    pnlVotes: TPanel;
    lblMessage: TLabel;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    pnlTotal: TPanel;
    btnEnter: TButton;
    btnLeave: TButton;
    lblVehicles: TLabel;
    procedure btnEnterClick(Sender: TObject);
    procedure btnLeaveClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  var rTot : Real;

  public
    { Public declarations }
  end;

var
  frmParkingArea: TfrmParkingArea;

implementation

{$R *.dfm}

procedure TfrmParkingArea.bmbResetClick(Sender: TObject);
begin

  rTot := 0;
  pnlTotal.Caption := ' ';

end;

procedure TfrmParkingArea.btnEnterClick(Sender: TObject);
begin

  rTot := rTot + 1;
  pnlTotal.Caption := FloatToStr(rTot);

end;

procedure TfrmParkingArea.btnLeaveClick(Sender: TObject);
begin

  if rTot = 0 then

   rTot := 0


  else

  rTot := rTot - 1;
  pnlTotal.Caption := FloatToStr(rTot);


end;

procedure TfrmParkingArea.FormActivate(Sender: TObject);
begin

  rTot := 0;
  pnlTotal.Caption := ' ';

end;

end.
