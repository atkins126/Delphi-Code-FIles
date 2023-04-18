unit Aktw_7_Bl_45_Nr_4_A_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Samples.Spin, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    redAfvoer: TRichEdit;
    btnCalculate: TButton;
    bmbClose: TBitBtn;
    bmbReset: TBitBtn;
    rgSuur: TRadioGroup;
    lblLemoensap: TLabel;
    procedure btnCalculateClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bmbResetClick(Sender: TObject);
begin
  //sedAmount.Clear;
  //sedAmount.SetFocus;
  redAfvoer.Lines.Clear;
  rgSuur.ItemIndex := -1;
end;

procedure TForm1.btnCalculateClick(Sender: TObject);
const Lemon = 125;

var rAmount, rCremoraTot, rWaterTot, rKondensmelkTot, rLemonTot, rLemonSize, rRes : Real;

begin

 // rAmount := sedAmount.Value;
  rLemonSize := StrToFloat(rgSuur.Items[rgSuur.ItemIndex]);
  rAmount := rLemonSize div Lemon;
  rRes := rLemonSize mod Lemon;




  //rCremoraTot := rCremora * rAmount;
 // rWaterTot := rWater * rAmount;
  //rKondensmelkTot := rKondensmelk * rAmount;
 // rLemonTot := Lemon * rAmount;

  //redAfvoer.Lines.Add('Totale aantal terte: ' + #9 + FloatToStr(rAmount) + 'Tert(e)'  );
  //redAfvoer.Lines.Add('Totale aantal Cremora: ' + #9 + FloatToStr(rCremoraTot) + 'ml');
  //redAfvoer.Lines.Add('Totale aantal Kook Water: ' + #9 + FloatToStr(rWaterTot) + 'ml');
 // redAfvoer.Lines.Add('Totale aantal Kondensmelk: ' + #9 + FloatToStr(rKondensmelkTot) + 'g');
  //redAfvoer.Lines.Add('Totale aantal Suurlemoen sap: ' + #9 + FloatToStr(rLemonTot) + 'ml');
  redAfvoer.Lines.Clear;
  redAfvoer.Lines.Add('Sy kan' +FloatToStr(rAmount) + 'terte bak');
  redAfvoer.Lines.Add('Daar sal' + FloatToStr(rRes) + ' ml suurlemoensap oorbly');
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
   redAfvoer.Paragraph.TabCount := 2;
   redAfvoer.Paragraph.Tab[0] := 0;
   redAfvoer.Paragraph.Tab[1] := 150;
end;

end.
