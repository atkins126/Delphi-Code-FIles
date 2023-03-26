unit ButtonSquare_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmSize = class(TForm)
    btnSquare: TButton;
    btnRectangle: TButton;
    procedure btnSquareClick(Sender: TObject);
    procedure btnRectangleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSize: TfrmSize;

implementation

{$R *.dfm}

procedure TfrmSize.btnRectangleClick(Sender: TObject);
begin
  btnSquare.Enabled := True;
  btnRectangle.Enabled := False;
  frmSize.Height := 300;
  frmSize.Width := 100;
end;

procedure TfrmSize.btnSquareClick(Sender: TObject);
begin
  btnRectangle.Enabled := True;
  btnSquare.Enabled := False;
  frmSize.Height := 200;
  frmSize.Width := 200;
end;

end.
