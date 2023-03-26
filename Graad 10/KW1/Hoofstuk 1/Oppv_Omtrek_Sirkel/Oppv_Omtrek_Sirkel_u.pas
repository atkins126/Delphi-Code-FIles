unit Oppv_Omtrek_Sirkel_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmSirkel = class(TForm)
    btnBereken: TButton;
    edtRadius: TEdit;
    lblRadius: TLabel;
    redAfvoer: TRichEdit;
    //procedure RadiusChange(Sender: TObject);
    procedure btnBerekenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSirkel: TfrmSirkel;

implementation

{$R *.dfm}

procedure TfrmSirkel.btnBerekenClick(Sender: TObject);
var rRadius, rOmtrek, rOppv, rVol : Real;
begin

     rRadius := StrtoFloat(edtRadius.Text);

     rOmtrek := 2 * Pi * rRadius;
     rOppv := Pi * Sqr(rRadius);
     rVol := 4/3 * Pi * rRadius * rRadius * rRadius;

     redAfvoer.Lines.Add('Die omtrek is :'+ FloatToStrF(rOmtrek,ffFixed,10,2) +
                         ' eenhede. ');

      redAfvoer.Lines.Add('Die Oppv is :' + FloatToStrF(rOppv,ffFixed,10,2) +
                         ' vierkante eenhede. ');

      redAfvoer.Lines.Add('Die volume is :'+ FloatToStrF(rVol,ffFixed,10,2) +
                         ' kubieke eenhede. ');
end;

end.
