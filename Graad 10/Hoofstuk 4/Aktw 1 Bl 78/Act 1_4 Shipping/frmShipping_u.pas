unit frmShipping_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmShipping = class(TForm)
    lbledtWeight: TLabeledEdit;
    lbledtDistance: TLabeledEdit;
    btnCalc: TButton;
    rgTransport: TRadioGroup;
    rbRoad: TRadioButton;
    rbTrain: TRadioButton;
    rbAir: TRadioButton;
    rbShip: TRadioButton;
    chkInsure: TCheckBox;
    chkPriority: TCheckBox;
    redOutput: TRichEdit;
    bmbClose: TBitBtn;
    bmbReset: TBitBtn;
    procedure btnCalcClick(Sender: TObject);
  private

  var
    rWeight, rDistance, rWeightCost, rTransportCost : Real;

  public
    { Public declarations }
  end;

var
  frmShipping: TfrmShipping;

implementation

{$R *.dfm}



procedure TfrmShipping.btnCalcClick(Sender: TObject);
begin

  rWeight := StrToFloat(lbledtWeight.Text);
  rDistance := StrToFloat(lbledtDistance.Text);

  rWeightCost := rWeight * 1.23;

  if rbRoad.Checked = True then

    rTransportCost := rDistance * 0.15;

  if rbAir.Checked = True then

    rTransportCost := rDistance * 0.36;

  if rbShip.Checked = true then

    rTransportCost := rDistance * 0.25;

  if rbShip.Checked = True then

    rTransportCost := rDistance * 0.12;




end;

end.