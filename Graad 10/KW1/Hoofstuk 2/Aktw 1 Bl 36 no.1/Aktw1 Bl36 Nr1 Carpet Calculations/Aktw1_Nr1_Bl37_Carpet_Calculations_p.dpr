program Aktw1_Nr1_Bl37_Carpet_Calculations_p;

uses
  Vcl.Forms,
  Aktw1_Nr1_Bl37_Carpet_Calculations_u in 'Aktw1_Nr1_Bl37_Carpet_Calculations_u.pas' {frmCarpet};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCarpet, frmCarpet);
  Application.Run;
end.
