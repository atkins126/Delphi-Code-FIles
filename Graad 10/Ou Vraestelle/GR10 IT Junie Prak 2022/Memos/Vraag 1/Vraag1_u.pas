unit Vraag1_u;        //Mnr J S Joubert      IT10xx     2022-06-03   {Vr1.1 - 1}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmVraag1 = class(TForm)
    btnSportspan: TButton;
    ledVan: TLabeledEdit;
    pnlAfvoer: TPanel;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    lblNaam: TLabel;
    edtNaam: TEdit;
    procedure btnSportspanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVraag1: TfrmVraag1;

implementation

{$R *.dfm}

//ledVan se Caption verander na: Van:
//ledVan se LabelPosition verander na: Left                          {Vr1.2 - 2}
//edtNaam se Text-property skoongemaak/uitgevee                      {Vr1.3 - 1}
//btnSportSpan se Caption verander na: &Bepaal Sportspan           {Vr1.4.1 - 1}

//Eventhandler geskep vir btnSportSpan
procedure TfrmVraag1.btnSportspanClick(Sender: TObject);
begin
  pnlAfvoer.Caption := 'Mnr Johan Joubert';                        {Vr1.4.2 - 3}
end;

//pnlAfvoer se kleur(color) verander na: SkyBlue                   {Vr1.5.1 - 2}
//pnlAfvoer se Left verander na 160
//pnlAfvoer se Width verander na 175                               {Vr1.5.2 - 2}

//bmbReset se Kind verander vanaf bkAll na bkReset
//bmbReset se Caption verander na Reset                            {Vr1.6.1 - 2}
//bmbReset se Enabled-property verander na: False                  {Vr1.6.2 - 2}
end.                                                      {Totaal Vr1: 16 PUNTE}
