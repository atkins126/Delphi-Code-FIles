unit frmLeftRight_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmLeftRightClick = class(TForm)
    lblColor: TLabel;
    btnLeft: TButton;
    btnRight: TButton;
    procedure btnLeftClick(Sender: TObject);
    procedure btnRightClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLeftRightClick: TfrmLeftRightClick;

implementation

{$R *.dfm}

procedure TfrmLeftRightClick.btnLeftClick(Sender: TObject);
begin
  lblColor.Color := clRed;
  lblColor.Caption := 'Jy het die linkerkantste knoppie geclick';
end;

procedure TfrmLeftRightClick.btnRightClick(Sender: TObject);
begin
  frmLeftRightClick.Color := clRed;

end;

end.
