unit frmMarks_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Vcl.ComCtrls;

type
  TfrmMarks = class(TForm)
    edtLearnerScore: TEdit;
    edtTestMark: TEdit;
    btnAdd: TButton;
    lblMarkMsg: TLabel;
    lblLearnermark: TLabel;
    btnNextClass: TBitBtn;
    bmbClose: TBitBtn;
    redClassAvg: TRichEdit;
    redPercentage: TRichEdit;
    redNumMarks: TRichEdit;
    procedure btnNextClassClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

   var rTestMark, rLearnerScore, rPersentage, rNumMarks, rClassAvg, rTotMarks,
       rTotLearners : Real;

  public
    { Public declarations }
  end;

var
  frmMarks: TfrmMarks;

implementation

{$R *.dfm}

procedure TfrmMarks.btnAddClick(Sender: TObject);
begin



  rTestMark := StrToFloat(edtTestMark.Text);
  rLearnerScore := StrToFloat(edtLearnerScore.Text);
  rNumMarks := rNumMarks + 1;
  rTotMarks := rTotMarks + rLearnerScore;

  redPercentage.Lines.Add('Percentage for learner: ' + FloatToStr(rLearnerScore) + '%');
  redNumMarks.Lines.Add('Total marks added: ' + FloatToStr(rNumMarks));

  rClassAvg := rTotMarks / rNumMarks ;
  redClassAvg.Lines.Add('The class average is: ' + FloatToStrF(rClassAvg,ffFixed,10,2) + '%');

  edtLearnerScore.Clear;



end;

procedure TfrmMarks.btnNextClassClick(Sender: TObject);
begin
  redPercentage.Clear;
  redNumMarks.Clear;
  redClassAvg.Clear;

  edtTestMark.Clear;
  edtLearnerScore.Clear;
  edtTestMark.SetFocus;
end;

procedure TfrmMarks.FormActivate(Sender: TObject);
begin
  rTestMark := 0;
  rLearnerScore := 0;
  rPersentage := 0;
  rNumMarks := 0;
  rClassAvg := 0;
  rTotMarks := 0;
  rTotLearners := 0;
end;

end.
