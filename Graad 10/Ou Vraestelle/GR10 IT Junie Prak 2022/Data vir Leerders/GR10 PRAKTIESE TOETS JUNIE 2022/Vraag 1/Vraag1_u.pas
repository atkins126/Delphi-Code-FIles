unit Vraag1_u;        //Naam en Van      IT1015     2023-05-25       {1}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Vcl.Mask;

type
  TfrmVraag1 = class(TForm)
    btnSportspan: TButton;
    ledVan: TLabeledEdit;
    pnlAfvoer: TPanel;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    lblNaam: TLabel;
    edtNaam: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVraag1: TfrmVraag1;

implementation

{$R *.dfm}

end.
