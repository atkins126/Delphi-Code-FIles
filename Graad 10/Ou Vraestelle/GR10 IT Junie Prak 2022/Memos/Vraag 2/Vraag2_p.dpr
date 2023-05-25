program Vraag2_p;

uses
  Forms,
  Vraag2_u in 'Vraag2_u.pas' {frmVraag2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVraag2, frmVraag2);
  Application.Run;
end.
