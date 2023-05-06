unit Aktw_7_Bl_46_Nr_8_Catering_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, ExtCtrls, Vcl.Mask;

  const


type
  TfrmFood = class(TForm)
    btnCalculate: TButton;
    ledWeight: TLabeledEdit;
    redAfvoer: TRichEdit;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    rgDIshes: TRadioGroup;
    rbMeat: TRadioButton;
    rbSalad: TRadioButton;
    rbSide: TRadioButton;
    rbDesert: TRadioButton;
    procedure btnCalculateClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);



 private


    var rMass, rFull, rTot, rMeat, rSide, rSalad, rDesert, rPeople, rRest : Real;


  public
    { Public declarations }
  end;

var
    frmFood: TfrmFood;

implementation

    {$R *.dfm}



procedure TfrmFood.bmbResetClick(Sender: TObject);
begin
    ledWeight.Clear;
    redAfvoer.Clear;
    ledWeight.SetFocus;
end;




procedure TfrmFood.btnCalculateClick(Sender: TObject);



begin




    if rbMeat.Checked then rMeat := StrToFloat(ledWeight.Text);
    if rbSide.Checked then rSide := StrToFloat(ledWeight.Text);
    if rbSalad.Checked then rSalad := StrToFloat(ledWeight.Text);
    if rbDesert.Checked then rDesert := StrToFloat(ledWeight.Text);


    if rbMeat.Checked then

    begin
        rMeat := StrToFloat(ledWeight.Text);
        rPeople := rMeat div Meat;
        rRest := rMeat mod Meat;
        redAfvoer.Lines.Add(FloatToStr(rMeat) + ' can make ' + FloatToStr(rPeople) + ' meals with ' + FloatToStr(rRest) + ' g as leftovers');
    end;


    if rbSide.Checked then

    begin
        rSide := StrToFloat(ledWeight.Text);
        rPeople := rSide div Side;
        rRest := rSide mod Side;
        redAfvoer.Lines.Add(FloatToStr(rSide) + ' can make ' + FloatToStr(rPeople) + ' meals with ' + FloatToStr(rRest) + ' g as leftovers');
    end;


    if rbSalad.Checked then

    begin
        rSalad := StrToFloat(ledWeight.Text);
        rPeople := rSalad div Salad;
        rRest := rSalad mod Salad;
        redAfvoer.Lines.Add(FloatToStr(rSalad) + ' can make ' + FloatToStr(rPeople) + ' meals with ' + FloatToStr(rRest) + ' g as leftovers');
    end;


    if rbDesert.Checked then

    begin
        rDesert := StrToFloat(ledWeight.Text);
        rPeople := rDesert div Dessert;
        rRest := rDesert mod Dessert;
        redAfvoer.Lines.Add(FloatToStr(rDesert) + ' can make ' + FloatToStr(rPeople) + ' meals with ' + FloatToStr(rRest) + ' g as leftovers');
    end;







end;

end.



