unit Vraag2_u;   //Naam en Van        DirNr10xx          2022-06-yy

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
//Verklaar toepaslike veranderlikes                                                     {1}
begin
  //Voeg jpu kode hieronder in

end;                                                    {Totaal: 19}

procedure TfrmVraag2.btnKodeClick(Sender: TObject);
//Gegewe kode
var  sKode : string;
     iSyfer, iTel : Integer;
begin
  //Einde gegewe kode
  //Voeg jou kode hieronder in
                                                     {2}
end;                                                                {Totaal: 15}

end.
