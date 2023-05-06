program Aktw11_Nr1_Bl54_Fast_Foods_JJ_p;

uses
  Forms,
  Aktw11_Nr1_Bl54_Fast_Foods_JJ_u in 'Aktw11_Nr1_Bl54_Fast_Foods_JJ_u.pas' {frmFastFood};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmFastFood, frmFastFood);
  Application.Run;
end.
