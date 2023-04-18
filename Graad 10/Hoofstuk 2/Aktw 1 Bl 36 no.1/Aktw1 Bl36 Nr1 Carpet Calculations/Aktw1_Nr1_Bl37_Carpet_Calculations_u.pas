unit Aktw1_Nr1_Bl37_Carpet_Calculations_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCarpet = class(TForm)
    lblRadius: TLabel;
    lblCost: TLabel;
    edtRadius: TEdit;
    edtCost: TEdit;
    btnBereken: TButton;
    lblOmtrek: TLabel;
    lblOppv: TLabel;
    lblTrimCost: TLabel;
    procedure btnBerekenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarpet: TfrmCarpet;

implementation

{$R *.dfm}

procedure TfrmCarpet.btnBerekenClick(Sender: TObject);
var rRadius, rCostPerMeter, rOmtrek, rOppv, rTrimmings : Real;
begin
  {T}
  rRadius := StrToFloat(edtRadius.Text);
  rCostPerMeter := StrToFloat(edtCost.Text);

  {V}
  rOmtrek := 2 * Pi * rRadius;
  rOppv := Pi * Sqr(rRadius);
  rTrimmings := rOmtrek * rCostPerMeter;

  {A}
  lblOmtrek.Caption := 'Omtrek is: ' + FloatToStrF(rOmtrek,ffFixed,10,2);
  lblOppv.Caption := 'Oppv is: ' + FloatToStrF(rOppv,ffFixed,10,2);
  lblTrimCost.Caption := 'TrimmingCost is: ' + FloatToStrF(rTrimmings,ffCurrency,10,2);
end;

end.
