unit For_Lus_soos_normaal_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmForLus = class(TForm)
    btnGetalle: TButton;
    btnChar: TButton;
    redAfvoer: TRichEdit;
    procedure btnGetalleClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmForLus: TfrmForLus;

implementation

{$R *.dfm}

procedure TfrmForLus.btnGetalleClick(Sender: TObject);
var k : Integer;     {Beheer veranderlike vir For-Lus met getalle}
begin
  {Aantal herhalings: (Boonste Indeksgetal - Onderste Indeksgetal) + 1
                      = (15 - 4) + 1
                      = 11 + 1
                      = 12}
  {Vertoon die 12 getalle}
  for k:= 4 to 15 do
    redAfvoer.Lines.Add('Getal ' + IntToStr(k-3) + ' : ' + #9 + IntToStr(k));
end;

procedure TfrmForLus.btnCharClick(Sender: TObject);
var   cLet : Char;     {Beheer veranderlike vir For-Lus met letters}
      iTel : Integer;  {Teller}
begin
  {Aantal herhalings: (Boonste Indeksgetal - Onderste Indeksgetal) + 1
                      = (10 - 5) + 1        'J' is 10de letter van alfabet
                      = 5 + 1               'E' is 5de letter van alfabet
                      = 6}
  {Vertoon die 6 getalle}
  redAfvoer.Clear;
  iTel := 1;
  for cLet:= 'E' to 'J' do
    begin
      redAfvoer.Lines.Add('Getal ' + IntToStr(iTel) + ' : ' + #9 + cLet);
      Inc(iTel);
    end;
end;

procedure TfrmForLus.FormActivate(Sender: TObject);
begin
  redAfvoer.Paragraph.TabCount := 1;
  redAfvoer.Paragraph.Tab[0] := 50;
end;

end.
