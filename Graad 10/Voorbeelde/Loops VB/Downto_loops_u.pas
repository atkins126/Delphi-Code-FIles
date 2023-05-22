unit Downto_loops_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    btnPunte: TButton;
    pnlOutput: TPanel;
    redOutput: TRichEdit;
    procedure btnPunteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  var
    rPunt : Real;
    iTel : Integer;
    cSimbol : Char;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnPunteClick(Sender: TObject);



begin

  rPunt := StrToFloat(InputBox('Enter the percentage',' ',' '));

  if rPunt >= 80 then

    cSimbol := 'A'

  else

     if (rPunt >= 70)  and (rPunt < 80 ) then

         cSimbol := 'B'

     else

        if (rPunt >= 60)  and (rPunt < 70 ) then

            cSimbol := 'C'

        else

           if (rPunt >= 50)  and (rPunt < 60 ) then

                cSimbol := 'D'

           else

               if (rPunt >= 40)  and (rPunt < 50 ) then

                    cSimbol := 'E'

               else

                     if (rPunt >= 35)  and (rPunt < 40 ) then

                          cSimbol := 'F'

                     else

                          cSimbol := 'G';



    pnlOutput.Caption := FloatToStr(rPunt) + '%' + ' simbol: ' + cSimbol;
    Inc(iTel);
    redOutput.Lines.Add('Getal ' + FloatToStr(iTel) + ' is: ' + #9 + FloatToStr(rPunt) + '%' + #13 + 'Simbool: ' + #9 + cSimbol );




end;

procedure TForm1.FormActivate(Sender: TObject);
begin

  redOutput.Paragraph.TabCount := 1;
  redOutput.Paragraph.Tab[0] := 50;

end;

end.
