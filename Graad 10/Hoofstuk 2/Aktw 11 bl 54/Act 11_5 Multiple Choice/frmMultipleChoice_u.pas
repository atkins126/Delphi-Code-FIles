unit frmMultipleChoice_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TfrmMultipleChoice = class(TForm)
    lblMessage: TLabel;
    pnlNo1Option1: TPanel;
    pnlNo1Option2: TPanel;
    pnlNo1Option3: TPanel;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    lblQuest2: TLabel;
    lblQuest3: TLabel;
    lblQuest1: TLabel;
    pnlNo2Option1: TPanel;
    pnlNo2Option2: TPanel;
    pnlNo2Option3: TPanel;
    pnlNo3Option1: TPanel;
    pnlNo3Option2: TPanel;
    pnlNo3Option3: TPanel;
    pnlScore: TPanel;
    lblTotal: TLabel;
    btnDone: TButton;
    pnlQ1: TPanel;
    pnlQ2: TPanel;
    pnlQ3: TPanel;
    procedure pnlNo1Option1Click(Sender: TObject);
    procedure pnlNo1Option2Click(Sender: TObject);
    procedure pnlNo1Option3Click(Sender: TObject);
    procedure pnlNo2Option1Click(Sender: TObject);
    procedure pnlNo2Option2Click(Sender: TObject);
    procedure pnlNo2Option3Click(Sender: TObject);
    procedure pnlNo3Option2Click(Sender: TObject);
    procedure pnlNo3Option1Click(Sender: TObject);
    procedure pnlNo3Option3Click(Sender: TObject);
    procedure btnDoneClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
  private

  var rCorrect, rTot : Real;

  public
    { Public declarations }
  end;

var
  frmMultipleChoice: TfrmMultipleChoice;

implementation

{$R *.dfm}


procedure TfrmMultipleChoice.bmbResetClick(Sender: TObject);
begin

  pnlScore.Caption := ' ';

  rCorrect := 0;
  rTot := 0;

  pnlNo1Option1.Color := clMenu;
  pnlNo1Option2.Color := clMenu;
  pnlNo1Option3.Color := clMenu;

  pnlQ1.Enabled := True;

end;

procedure TfrmMultipleChoice.btnDoneClick(Sender: TObject);
begin

   pnlScore.Caption := FloatToStr(rCorrect);

end;

procedure TfrmMultipleChoice.pnlNo1Option1Click(Sender: TObject);
begin

  if rCorrect > 1 then

  rCorrect := rCorrect - 1



  else

  rCorrect := 0;



  pnlNo1Option1.Color := clRed;

  pnlQ1.Enabled := False;


end;

procedure TfrmMultipleChoice.pnlNo1Option2Click(Sender: TObject);
begin

  rCorrect := rCorrect + 1;

  pnlNo1Option2.Color := clGreen;

  pnlQ1.Enabled := False;

end;

procedure TfrmMultipleChoice.pnlNo1Option3Click(Sender: TObject);
begin

if rCorrect > 1 then

  rCorrect := rCorrect - 1

  else

  rCorrect := 0;

  pnlNo1Option3.Color := clRed;

  pnlQ1.Enabled := False;


end;

procedure TfrmMultipleChoice.pnlNo2Option1Click(Sender: TObject);
begin

  rCorrect := rCorrect + 1;

  pnlNo2Option1.Color := clGreen;

  pnlQ2.Enabled := False;
end;

procedure TfrmMultipleChoice.pnlNo2Option2Click(Sender: TObject);
begin

 if rCorrect > 1 then

  rCorrect := rCorrect - 1

  else

  rCorrect := 0;

  pnlNo2Option2.Color := clRed;

  pnlQ2.Enabled := False;

end;

procedure TfrmMultipleChoice.pnlNo2Option3Click(Sender: TObject);
begin

  if rCorrect > 1 then

  rCorrect := rCorrect - 1

  else

  rCorrect := 0;

  pnlNo2Option3.Color := clRed;

  pnlQ2.Enabled := False;

end;

procedure TfrmMultipleChoice.pnlNo3Option1Click(Sender: TObject);
begin

 if rCorrect > 1 then

  rCorrect := rCorrect - 1

  else

  rCorrect := 0;

  pnlNo3Option1.Color := clRed;

  pnlQ3.Enabled := False;

end;

procedure TfrmMultipleChoice.pnlNo3Option2Click(Sender: TObject);
begin

  rCorrect := rCorrect + 1;

  pnlNo3Option2.Color := clGreen;

  pnlQ3.Enabled := False;

end;

procedure TfrmMultipleChoice.pnlNo3Option3Click(Sender: TObject);
begin

  if rCorrect > 1 then

  rCorrect := rCorrect - 1

  else

  rCorrect := 0;

  pnlNo3Option3.Color := clRed;

  pnlQ3.Enabled := False;

end;

end.
