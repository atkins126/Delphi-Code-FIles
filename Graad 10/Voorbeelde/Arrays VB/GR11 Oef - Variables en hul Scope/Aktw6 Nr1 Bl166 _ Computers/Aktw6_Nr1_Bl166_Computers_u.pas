unit Aktw6_Nr1_Bl166_Computers_u;

interface

uses  // <--uses clause
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

const
  iMAX = 25;  // const is global

type
  TfrmComputers = class(TForm)
    btnRead: TButton;
    btnWinner: TButton;
    pnlWinner: TPanel;
    redGr11: TRichEdit;
    procedure btnReadClick(Sender: TObject);
    procedure btnWinnerClick(Sender: TObject);
  private //net DIE unit se var's
          //Global-Variables
          //Duration-- solank die program run [in ram]
    arrGr11 : array[1..iMAX] of string;
    iCount : Integer;

  public
    { Public declarations }
    //enige ander units [in uses clause is] het access  ^^^^^ kyk op
    //Global-Variables
    //Duration-- solank die program run [in ram]

  end;

var
  frmComputers: TfrmComputers;       //global-variable -- unit scope
                                    // bestaan in ram

implementation

{$R *.dfm}
{$R+}

procedure TfrmComputers.btnReadClick(Sender: TObject);
{ const
      rWenner = 15;          -- net die een procedure kan gebruik         }

var MyLeer : TextFile; //local var's
    k : Integer;       // method scope [net die een procedure]
                       // bestaan in ram
begin
  AssignFile(MyLeer,'Gr11.txt');    {LW! Die teksl�er moet in die WIN32/DEBUG-folder l�}
  try
    Reset(myLeer);
  except
    ShowMessage('Gr11.txt does not exist');
    Exit;
  end;

  iCount := 0;
  while not Eof{<-end of .txt}(MyLeer) and (iCount < iMAX) do
    begin
      Inc(iCount);
      Readln(MyLeer,arrGr11[iCount]);
      redGr11.Lines.Add(arrGr11[iCount]);
    end;
  btnRead.Visible := False;
  pnlWinner.Visible := True;
end;

procedure TfrmComputers.btnWinnerClick(Sender: TObject);
var sWinner : string;
    iPos : Integer;
begin
  Randomize;
  iPos := Random(iCount){iCount van 20 posiesies 0 tot 19} + 1; //array het nie posiesie 0 nie
  sWinner := arrGr11[iPos];
  pnlWinner.Caption := 'The winner of the iPad is: ' + sWinner;
end;

end.
