unit Aktw11_Nr1_Bl54_Fast_Foods_JJ_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Vcl.ComCtrls, Vcl.Imaging.jpeg;

type
  TfrmFastFood = class(TForm)
    imgCooldrink: TImage;
    imgPizza: TImage;
    bmbNextCustomer: TBitBtn;
    bmbClose: TBitBtn;
    redAfvoer: TRichEdit;
    imgHamburger: TImage;
    btnCalculate: TButton;
    procedure imgCooldrinkClick(Sender: TObject);
    procedure imgPizzaClick(Sender: TObject);
    procedure imgHamburgerClick(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
    procedure bmbNextCustomerClick(Sender: TObject);
  private
    rCount, rTotDue, rTotB, rTotP, rTotC, rTotBR, rTotPR, rTotCR : Real;

  public
    { Public declarations }
  end;

var
  frmFastFood: TfrmFastFood;

implementation

{$R *.dfm}

const
  Hamburger = 35.60;
  Pizza = 22.40;
  Drink = 12.30;

procedure TfrmFastFood.bmbNextCustomerClick(Sender: TObject);
begin

  redAfvoer.Clear;
  rCount := 0;
  rTotDue := 0;
  rTotB := 0;
  rTotP := 0;
  rTotC := 0;
  rTotBR := 0;
  rTotPR := 0;
  rTotCR := 0;

end;

procedure TfrmFastFood.btnCalculateClick(Sender: TObject);



begin

  rTotBR := rTotB * Hamburger;
  rTotPR := rTotP * Pizza;
  rTotCR := rTotC * Drink;

  rCount := rTotB + rTotP + rTotP;

  rTotDue := rTotBR + rTotCR + rTotPR;

  redAfvoer.Lines.Add('The total amount of Burgers: ' + FloatToStr(rTotB));
  redAfvoer.Lines.Add('The total amount of Pizzas:  ' + FloatToStr(rTotP));
  redAfvoer.Lines.Add('The total amount of Drinks:  ' + FloatToStr(rTotC));
  redAfvoer.Lines.Add('The total amount of Items:  ' + FloatToStr(rCount));
  redAfvoer.Lines.Add(' ');
  redAfvoer.Lines.Add('The total for Burgers is: ' + FloatToStrF(rTotBR,ffCurrency,10,2));
  redAfvoer.Lines.Add('The total for Pizzas is: ' + FloatToStrF(rTotPR,ffCurrency,10,2));
  redAfvoer.Lines.Add('The total for Drinks is: ' + FloatToStrF(rTotCR,ffCurrency,10,2));
  redAfvoer.Lines.Add('The subtotal is: ' + FloatToStrF(rTotDue,ffCurrency,10,2));

end;

procedure TfrmFastFood.imgCooldrinkClick(Sender: TObject);
begin

  rTotC := StrToFloat(InputBox('Drinks:','How many drinks do you want to buy?',''));

end;

procedure TfrmFastFood.imgHamburgerClick(Sender: TObject);
begin

  rTotB := StrToFloat(InputBox('Hamburgers:','How many hamburgers do you want to buy?',''));

end;

procedure TfrmFastFood.imgPizzaClick(Sender: TObject);
begin

  rTotP := StrToFloat(InputBox('Pizza:','How many pizzas do you want to buy?',''));

end;

end.
