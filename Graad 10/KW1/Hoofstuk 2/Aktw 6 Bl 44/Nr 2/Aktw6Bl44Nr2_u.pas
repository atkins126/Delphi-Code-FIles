unit Aktw6Bl44Nr2_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmPryse = class(TForm)
    lblPrys1: TLabel;
    lblPrys2: TLabel;
    lblPrys3: TLabel;
    edtPrys1: TEdit;
    edtPrys2: TEdit;
    edtPrys3: TEdit;
    btnBereken: TButton;
    redAfvoer: TRichEdit;
    procedure btnBerekenClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPryse: TfrmPryse;

implementation

{$R *.dfm}

procedure TfrmPryse.btnBerekenClick(Sender: TObject);

  var rPrys1, rPrys2, rPrys3, rTot, rBTW, rBTWBedrag, rBTWTot, rBTWIngesluit : Real;

begin
     redAfvoer.Lines.Clear;
     rPrys1 := StrToFloat(edtPrys1.Text);
     rPrys2 := StrToFloat(edtPrys2.Text);
     rPrys3 := StrToFloat(edtPrys3.Text);

     rTot := rPrys1 + rPrys2 + rPrys3;

     redAfvoer.Lines.Add('Kasregister-strokie' + #9 + DateToStr(Date()));
     redAfvoer.Lines.Add(' ');
     redAfvoer.Lines.Add( 'Prys van artikel 1' + #9 + FloatToStrF(rPrys1,ffCurrency,10,2));
     redAfvoer.Lines.Add(' ');
     redAfvoer.Lines.Add( 'Prys van artikel 2' + #9 + FloatToStrF(rPrys2,ffCurrency,10,2));
     redAfvoer.Lines.Add(' ');
     redAfvoer.Lines.Add( 'Prys van artikel 3' + #9 + FloatToStrF(rPrys3,ffCurrency,10,2));
     redAfvoer.Lines.Add(' ');

     redAfvoer.Lines.Add('Totale Prys Voor BTW' + #9 + FloatToStrF(rTot,ffCurrency,10,2));
     redAfvoer.Lines.Add(' ');

     rBTWBedrag := rTot * (15/100);

     rBTWIngesluit := rBTWBedrag + rTot;

     redAfvoer.Lines.Add('BTW Bedrag is:' + #9 + FloatToStrF(rBTWBedrag,ffCurrency,10,2));
     redAfvoer.Lines.Add(' ');

     redAfvoer.Lines.Add('Totale prys met BTW ingesluit' + #9 + FloatToStrF(rBTWIngesluit,ffCurrency,10,2));
     redAfvoer.Lines.Add(' ');



end;

procedure TfrmPryse.FormActivate(Sender: TObject);
begin
  redAfvoer.Paragraph.TabCount := 2;
  redAfvoer.Paragraph.Tab[0] := 0;
  redAfvoer.Paragraph.Tab[1] := 100;
end;

end.
