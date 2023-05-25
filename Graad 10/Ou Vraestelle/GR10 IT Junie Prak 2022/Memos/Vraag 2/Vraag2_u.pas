unit Vraag2_u;        //Mnr J S Joubert        DirNr10xx          2022-06-03

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrmVraag2 = class(TForm)
    btnGetalle: TButton;
    redAfvoer: TRichEdit;
    gbx1: TGroupBox;
    lblKode: TLabel;
    edtKode: TEdit;
    btnKode: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btnGetalleClick(Sender: TObject);
    procedure btnKodeClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVraag2: TfrmVraag2;

implementation

{$R *.dfm}
//Gegewe Kode
procedure TfrmVraag2.FormActivate(Sender: TObject);
begin
  redAfvoer.Clear;
  redAfvoer.Paragraph.TabCount := 1;
  redAfvoer.Paragraph.Tab[0] := 60;
end;
//Einde van Gegewe Kode

procedure TfrmVraag2.btnGetalleClick(Sender: TObject);
var iGetal, k, iTotaal : Integer;                                       {2}
    rGemiddeld : Real;                                                       {1}
begin
  iTotaal := 0;                                                              {1}
  for k := 1 to 5 do                                                    {2}
    begin
      iGetal := StrToInt(InputBox('Getal ' + IntToStr(k),
                                  'Tik getal ' + IntToStr(k) + ' in',''));{4}
      iTotaal :=  iTotaal + iGetal;                                          {2}
      //of inc(iTotaal,iGetal);
      redAfvoer.Lines.Add('Getal ' + IntToStr(k) + ':'
                                                 + #9 + IntToStr(iGetal));{2}
    end;
  rGemiddeld := iTotaal/5;                                                   {1}
  redAfvoer.Lines.Add('');                                                   {1}
  redAfvoer.Lines.Add('Totaal: ' + #9 + IntToStr(iTotaal));                  {2}
  redAfvoer.Lines.Add('Gemiddeld: ' +
                      #9 + FloatToStrF(rGemiddeld,ffFixed,10,1));            {2}
end;                                                                {Totaal: 19}

procedure TfrmVraag2.btnKodeClick(Sender: TObject);
//Gegewe kode
var  sKode : string;
     iSyfer, iTel : Integer;
begin
  //Einde gegewe kode
  sKode := '';       iTel := 0;                                              {2}
  repeat
    iSyfer := Random(6) +10;                                                 {3}
    sKode :=  sKode + Chr(90-iSyfer) + IntToStr(iSyfer);                     {5}
    inc(iTel);                                                               {1}
  until (iTel = 3);                                                          {2}
  edtKode.Text := sKode;                                                     {2}
end;                                                                {Totaal: 15}


end.
