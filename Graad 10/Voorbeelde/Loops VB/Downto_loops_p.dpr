program Downto_loops_p;

uses
  Vcl.Forms,
  Downto_loops_u in 'Downto_loops_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
