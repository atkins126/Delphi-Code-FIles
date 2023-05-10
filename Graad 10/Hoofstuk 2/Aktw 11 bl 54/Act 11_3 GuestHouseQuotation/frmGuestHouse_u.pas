unit frmGuestHouse_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TfrmGuestHouse = class(TForm)
    btnRooms: TButton;
    btnBreakfasts: TButton;
    btnDinners: TButton;
    pnlRooms: TPanel;
    pnlBreakfast: TPanel;
    pnlDinner: TPanel;
    pnlHeading: TPanel;
    pnlTotal: TPanel;
    pnlTotalMsg: TPanel;
    btnNewGuest: TBitBtn;
    bmbClose: TBitBtn;
    lblMessage: TLabel;
    procedure btnRoomsClick(Sender: TObject);
    procedure btnBreakfastsClick(Sender: TObject);
    procedure btnDinnersClick(Sender: TObject);
    procedure pnlHeadingClick(Sender: TObject);
    procedure pnlTotalMsgClick(Sender: TObject);
    procedure btnNewGuestClick(Sender: TObject);
  private

    var rRooms, rBreakfasts, rDinners, rRoomsR, rBreakfastsR, rDinnersR, rTot : Real;

  public
    { Public declarations }
  end;

var
  frmGuestHouse: TfrmGuestHouse;

implementation

{$R *.dfm}

procedure TfrmGuestHouse.btnBreakfastsClick(Sender: TObject);
begin

  rBreakfasts := StrToFloat(InputBox('How many breakfasts would you like to book? ', ' ',' ' ));
  rBreakfastsR := rBreakfasts * 60;

end;

procedure TfrmGuestHouse.btnDinnersClick(Sender: TObject);
begin

  rDinners := StrToFloat(InputBox('How many dinners would you like to book? ', ' ',' ' ));
  rDinnersR := rDinners * 120;

end;

procedure TfrmGuestHouse.btnNewGuestClick(Sender: TObject);
begin

  rRooms := 0;
  rBreakfasts := 0;
  rDinners := 0;
  rRoomsR := 0;
  rBreakfastsR := 0;
  rDinnersR := 0;
  rTot := 0;

  pnlBreakfast.Caption := ' ';
  pnlDinner.Caption := ' ';
  pnlRooms.Caption := ' ';
  pnlTotal.Caption := ' ';

end;

procedure TfrmGuestHouse.btnRoomsClick(Sender: TObject);
begin

  rRooms := StrToFloat(InputBox('How many rooms would you like to book? ', ' ',' ' ));
  rRoomsR := rRooms * 450;

end;

procedure TfrmGuestHouse.pnlHeadingClick(Sender: TObject);
begin

  pnlBreakfast.Caption := FloatToStrF(rBreakfastsR,ffCurrency,10,2);
  pnlDinner.Caption := FloatToStrF(rDinnersR,ffCurrency,10,2);
  pnlRooms.Caption := FloatToStrF(rRoomsR,ffCurrency,10,2);
end;

procedure TfrmGuestHouse.pnlTotalMsgClick(Sender: TObject);
begin

  rTot := rBreakfastsR + rDinnersR + rRoomsR;
  pnlTotal.Caption := FloatToStrF(rTot,ffCurrency,10,2);


end;

end.
