unit frmButtonSize_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnClickMe: TButton;
    procedure btnClickMeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnClickMeClick(Sender: TObject);
begin
  btnClickMe.Height := 600;
  btnClickMe.Width :=600;
  btnClickMe.Font.Size := 30;
  btnClickMe.Caption := 'See how big';
end;

end.
