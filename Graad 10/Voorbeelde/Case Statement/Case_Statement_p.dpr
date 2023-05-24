program Case_Statement_p;

uses
  Vcl.Forms,
  Case_Statement_u in 'Case_Statement_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
