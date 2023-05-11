unit Aktw12_Bl59_Nr4_CollegeStudents_JJ_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Vcl.ComCtrls, Vcl.Mask;

type
  TfrmCollegeStudents = class(TForm)
    ledName: TLabeledEdit;
    ledSurname: TLabeledEdit;
    ledGr12Mark: TLabeledEdit;
    btnDistinction: TButton;
    btnResidence: TButton;
    btnBursary: TButton;
    btnRegister: TButton;
    bmbNext: TBitBtn;
    bmbClose: TBitBtn;
    pnlFees: TPanel;
    redAfvoer: TRichEdit;
    procedure FormActivate(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure btnDistinctionClick(Sender: TObject);
    procedure btnResidenceClick(Sender: TObject);
    procedure btnBursaryClick(Sender: TObject);
    procedure bmbNextClick(Sender: TObject);
  private

  var
    rFees, rAvg, rDDis, rDBus, rTot, rTotD, rTotB, rTotR : Real;
    sName, sSurname : String;
    bDis, bRes, bBus : Boolean;

  public
    { Public declarations }
  end;

var
  frmCollegeStudents: TfrmCollegeStudents;

implementation

{$R *.dfm}

procedure TfrmCollegeStudents.bmbNextClick(Sender: TObject);
begin

  redAfvoer.Clear;

  ledName.Clear;
  ledSurname.Clear;
  ledGr12Mark.Clear;

  rFees := 0;
  rAvg := 0;
  rDDis := 0;
  rDBus := 0;
  rTot := 0;
  rTotD := 0;
  rTotR := 0;
  rTotB := 0;

  sName := ' ';
  sSurname := ' ';

  bDis := False;
  bRes := False;
  bBus := False;

  ledName.SetFocus;

  pnlFees.Caption := 'Total Fees: R50000.00';

end;

procedure TfrmCollegeStudents.btnBursaryClick(Sender: TObject);
begin

  rDBus := rTot * (80/100);
  bBus := True;

  rTot := rTot - rDBus;

  pnlFees.Caption := 'Total fees: ' + FloatToStrF(rTot,ffCurrency,10,2);

end;

procedure TfrmCollegeStudents.btnDistinctionClick(Sender: TObject);
begin

  rDDis := rFees * (10/100);
  bDis := True;

  rTotD := rFees - rDDis;
  pnlFees.Caption := 'Total fees: ' + FloatToStrF(rTotD,ffCurrency,10,2);

end;

procedure TfrmCollegeStudents.btnRegisterClick(Sender: TObject);
begin

  sName := ledName.Text;
  sSurname := ledSurname.Text;
  rAvg := StrToFloat(ledGr12Mark.Text);

  redAfvoer.Lines.Add('Name: ' + sName);
  redAfvoer.Lines.Add('Surname: ' + sSurname);
  redAfvoer.Lines.Add('Grade 12 Mark: ' + FloatToStr(rAvg) + '%');
  redAfvoer.Lines.Add('Initial Fees: R25000.00');

 if bDis = True then

  redAfvoer.Lines.Add('Distinction: Yes' + #12 + 'Distinction discount: ' + FloatToStrF(rDDis,ffCurrency,10,2) )


 else

  redAfvoer.Lines.Add('Distinction: No' + #12 + 'Distinction discount: ' + FloatToStrF(rDDis,ffCurrency,10,2));

 if bRes = True then

  redAfvoer.Lines.Add('Residence: Yes' + #12 + 'Residence Fee: ' + FloatToStrF(rTotR,ffCurrency,10,2))

 else

  redAfvoer.Lines.Add('Residence: No' + #12 + 'Residence Fee: ' + FloatToStrF(rTotR,ffCurrency,10,2));

 if bBus = True then

  redAfvoer.Lines.Add('Busary: Yes' + #12 + 'Busuary discount: ' + FloatToStrF(rDBus,ffCurrency,10,2))

 else

  redAfvoer.Lines.Add('Busary: No' + #12 + 'Busuary discount: ' + FloatToStrF(rDBus,ffCurrency,10,2));


  redAfvoer.Lines.Add('Total Fees: ' + FloatToStrF(rTot,ffCurrency,10,2));




end;

procedure TfrmCollegeStudents.btnResidenceClick(Sender: TObject);
begin

  bRes := True;

  rTot := rTot + 50000;
  rTotR := 50000;

  pnlFees.Caption := 'Total fees: ' + FloatToStrF(rTot,ffCurrency,10,2);

end;

procedure TfrmCollegeStudents.FormActivate(Sender: TObject);
begin
  rFees := 25000;

  pnlFees.Caption := 'Total fees: ' + FloatToStrF(rFees,ffCurrency,10,2);

end;

end.
