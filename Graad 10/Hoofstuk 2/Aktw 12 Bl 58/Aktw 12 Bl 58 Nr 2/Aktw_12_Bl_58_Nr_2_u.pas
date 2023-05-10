unit Aktw_12_Bl_58_Nr_2_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.Buttons, Vcl.ComCtrls;

const
  price = 10;

type
  TForm1 = class(TForm)
    redAfvoer: TRichEdit;
    btnPention: TButton;
    btnLoyalty: TButton;
    bmbClose: TBitBtn;
    bmbNext: TBitBtn;
    sedCost: TSpinEdit;
    btnNoDiscount: TButton;
    sedPay: TSpinEdit;
    lblCost: TLabel;
    lblPay: TLabel;
    procedure btnNoDiscountClick(Sender: TObject);
    procedure btnPentionClick(Sender: TObject);
    procedure btnLoyaltyClick(Sender: TObject);
    procedure bmbNextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  var
    rCost, rPay, rTot, rChange, rTotP  : Real;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bmbNextClick(Sender: TObject);
begin

  redAfvoer.Clear;
  rCost := 0;
  rPay := 0;
  rTot := 0;
  rChange := 0;
  rTotP := 0;

  sedPay.Clear;
  sedCost.Clear;
  sedCost.SetFocus;

end;

procedure TForm1.btnLoyaltyClick(Sender: TObject);
begin

  redAfvoer.Clear;

   rTotP := (sedCost.Value * price) * (5/100);
  rTot := (sedCost.Value * price) - rTotP;
  rPay := sedPay.Value;
  rChange := rPay - rTot;

  redAfvoer.Lines.Add('Total: ' + FloatToStrF(rTot,ffCurrency,10,2));
  redAfvoer.Lines.Add('Payed: ' + FloatToStrF(rPay,ffCurrency,10,2));
  redAfvoer.Lines.Add('Change: ' + FloatToStrF(rChange,ffCurrency,10,2));

end;

procedure TForm1.btnNoDiscountClick(Sender: TObject);
begin

  redAfvoer.Clear;

  rTot := sedCost.Value * price;
  rPay := sedPay.Value;
  rChange := rPay - rTot;

  redAfvoer.Lines.Add('Total: ' + FloatToStrF(rTot,ffCurrency,10,2));
  redAfvoer.Lines.Add('Payed: ' + FloatToStrF(rPay,ffCurrency,10,2));
  redAfvoer.Lines.Add('Change: ' + FloatToStrF(rChange,ffCurrency,10,2));

end;

procedure TForm1.btnPentionClick(Sender: TObject);
begin

  redAfvoer.Clear;

  rTotP := (sedCost.Value * price) * (10/100);
  rTot := (sedCost.Value * price) - rTotP;
  rPay := sedPay.Value;
  rChange := rPay - rTot;

  redAfvoer.Lines.Add('Total: ' + FloatToStrF(rTot,ffCurrency,10,2));
  redAfvoer.Lines.Add('Payed: ' + FloatToStrF(rPay,ffCurrency,10,2));
  redAfvoer.Lines.Add('Change: ' + FloatToStrF(rChange,ffCurrency,10,2));

end;

procedure TForm1.FormActivate(Sender: TObject);
begin

  redAfvoer.Clear;
  rCost := 0;
  rPay := 0;
  rTot := 0;
  rChange := 0;
  rTotP := 0;

  sedPay.Clear;
  sedCost.Clear;
  sedCost.SetFocus;

end;

end.
