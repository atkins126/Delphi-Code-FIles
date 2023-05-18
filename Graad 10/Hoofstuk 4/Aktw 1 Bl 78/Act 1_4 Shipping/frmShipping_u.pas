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
    procedure FormActivate(Sender: TObject);
    procedure rbRoadClick(Sender: TObject);
    procedure rbTrainClick(Sender: TObject);
    procedure rbAirClick(Sender: TObject);
    procedure rbShipClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
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



procedure TfrmShipping.bmbResetClick(Sender: TObject);
begin

  lbledtWeight.Clear;
  lbledtDistance.Clear;

  rbAir.Checked := False;
  rbRoad.Checked := False;
  rbTrain.Checked := False;
  rbShip.Checked := False;

  chkInsure.Checked := False;
  chkPriority.Checked := False;

  redOutput.Clear;

  lbledtWeight.SetFocus;

  chkInsure.Enabled := False;
  chkPriority.Enabled := False;

end;

procedure TfrmShipping.btnCalcClick(Sender: TObject);

var rInsure, rPriority, rTotC, rVat, rTot : Real;

begin

  rWeight := StrToFloat(lbledtWeight.Text);
  rDistance := StrToFloat(lbledtDistance.Text);

  rWeightCost := rWeight * 1.23;



  if rbRoad.Checked = True then

    rTransportCost := rDistance * (15/100);


  if rbAir.Checked = True then

    rTransportCost := rDistance * (36/100);


  if rbShip.Checked = true then

    rTransportCost := rDistance * (25/100);


  if rbShip.Checked = True then

  rTransportCost := rDistance * (12/100);


  
   rTot := rWeightCost + rTransportCost;

  if chkInsure.Enabled = True then

      rInsure := rTot * (11/100);

  if chkPriority.Checked = True then

    rPriority := rTot * (15/100);

  rTotC := rTot + rInsure + rPriority;

  rVat := rTotC * 15/100;

  redOutput.Lines.Add('Total cost: ' + FloatToStrF(rTotC,ffCurrency,10,2) );
  redOutput.Lines.Add('Weight Cost: ' + FloatToStrF(rWeightCost,ffCurrency,10,2));
  redOutput.Lines.Add('Transport Cost: ' + FloatToStrF(rTransportCost,ffCurrency,10,2));
  redOutput.Lines.Add('Insurance Fee: ' + FloatToStrF(rInsure,ffCurrency,10,2));
  redOutput.Lines.Add('Priority Transport Fee: ' + FloatToStrF(rPriority,ffCurrency,10,2));
  redOutput.Lines.Add('Vat: ' + FloatToStrF(rVat,ffCurrency,10,2));








end;

procedure TfrmShipping.FormActivate(Sender: TObject);
begin

  chkInsure.Enabled := False;
  chkPriority.Enabled := False;

end;

procedure TfrmShipping.rbAirClick(Sender: TObject);
begin

  chkInsure.Enabled := True;
  chkPriority.Enabled := True;

end;

procedure TfrmShipping.rbRoadClick(Sender: TObject);
begin

  chkInsure.Enabled := True;
  chkPriority.Enabled := True;

end;

procedure TfrmShipping.rbShipClick(Sender: TObject);
begin

  chkInsure.Enabled := True;
  chkPriority.Enabled := True;

end;

procedure TfrmShipping.rbTrainClick(Sender: TObject);
begin

  chkInsure.Enabled := True;
  chkPriority.Enabled := True;

end;

end.
