unit Pounds_to_Rands_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    lblExchangeRate: TLabel;
    lblAmountInPounds: TLabel;
    redAfvoer: TRichEdit;
    edtExchangeRate: TEdit;
    btnCalculate: TButton;
    edtAmounInPounds: TEdit;
    procedure btnCalculateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalculateClick(Sender: TObject);
var rExchangeRate, rAmountInPounds : Real;

begin
  rExchangeRate := StrToFloat(edtExchangeRate.Text);
  rAmountInPounds := StrToFloat(edtAmounInPounds.Text);

  redAfvoer.Lines.Add(FloatToStrF(rAmountInPounds*rExchangeRate,ffCurrency,10,2));
end;

end.
