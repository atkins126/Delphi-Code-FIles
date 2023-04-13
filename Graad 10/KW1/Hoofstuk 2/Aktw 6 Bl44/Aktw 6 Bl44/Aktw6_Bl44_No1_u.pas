unit Aktw6_Bl44_No1_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.Buttons;

type
  TForm1 = class(TForm)
    btnCalculate: TButton;
    seddValue: TSpinEdit;
    bmb1: TBitBtn;
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

       var rValue : Real;


begin

  rValue := seddValue.Value;
  ShowMessage(FloatToStrF(rValue,ffExponent,9,12));

end;

end.
