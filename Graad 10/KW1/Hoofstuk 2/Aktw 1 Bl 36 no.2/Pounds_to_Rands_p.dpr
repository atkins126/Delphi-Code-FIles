program Pounds_to_Rands_p;

uses
  Vcl.Forms,
  Pounds_to_Rands_u in 'Pounds_to_Rands_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
