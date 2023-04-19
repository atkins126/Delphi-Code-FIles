unit Aktw7_Nr6_Bl46_SteneGewig_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Vcl.Mask, Vcl.Buttons;

type
  TfrmStene = class(TForm)
    ledStone: TLabeledEdit;
    ledMax: TLabeledEdit;
    btnVerwerk: TButton;
    redAfvoer: TRichEdit;
    bmbClose: TBitBtn;
    bmbReset: TBitBtn;
    ledCount: TLabeledEdit;
    procedure btnVerwerkClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStene: TfrmStene;

implementation

{$R *.dfm}

procedure TfrmStene.bmbResetClick(Sender: TObject);
begin
   redAfvoer.Clear;
   ledStone.Clear;
   ledMax.Clear;
   ledCount.Clear;
   ledStone.SetFocus;
end;

procedure TfrmStene.btnVerwerkClick(Sender: TObject);
var rStone, rMaxT, rSafe, rMargin, rMaxK, rAantal, rWeight : Real;
    bSafe : Boolean;

begin

  rStone := StrToFloat(ledStone.Text);
  rMaxT := StrToFloat(ledMax.Text);
  rAantal := StrToFloat(ledCount.Text);
  rMaxK := rMaxT * 1000;

  rMargin := 105/100;

  rWeight := rStone * rAantal;

  rSafe := (rWeight/1000) * rMargin;


  if rSafe < rMaxK then

  begin
    redAfvoer.Lines.Add('Aantal Stene: ' + FloatToStr(rAantal));
    redAfvoer.Lines.Add('Gewig per steen (kg): ' + FloatToStr(rStone));
    redAfvoer.Lines.Add('Maksimum kapasiteit (Ton): ' + FloatToStr(rMaxT));
    redAfvoer.Lines.Add('Totale gewig (kg): ' + FloatToStr(rWeight));
    redAfvoer.Lines.Add('Totale gewig (Ton): ' + FloatToStr(rWeight/1000));
    redAfvoer.Lines.Add('The load is safe');

  end

  else

  begin
    redAfvoer.Lines.Add('Aantal Stene: ' + FloatToStr(rAantal));
    redAfvoer.Lines.Add('Gewig per steen (kg): ' + FloatToStr(rStone));
    redAfvoer.Lines.Add('Maksimum kapasiteit (Ton): ' + FloatToStr(rMaxT));
    redAfvoer.Lines.Add('Totale gewig (kg): ' + FloatToStr(rWeight));
    redAfvoer.Lines.Add('Totale gewig (Ton): ' + FloatToStr(rWeight/1000));
    redAfvoer.Lines.Add('The load is not safe');
  end;





end;

end.
