program Aktw_12_Bl_58_Nr_2_p;

uses
  Vcl.Forms,
  Aktw_12_Bl_58_Nr_2_u in 'Aktw_12_Bl_58_Nr_2_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
