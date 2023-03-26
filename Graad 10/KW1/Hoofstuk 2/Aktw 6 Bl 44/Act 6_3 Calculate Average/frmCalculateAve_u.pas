      unit frmCalculateAve_u;

      interface

      uses
        Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
        Dialogs, Buttons, StdCtrls, Spin, ExtCtrls, ComCtrls;

      type
        TfrmMarks = class(TForm)
          pnlProject: TPanel;
          btnCalculate: TButton;
          bmbClose: TBitBtn;
          bmbReset: TBitBtn;
          edtName: TEdit;
          edtMark1: TEdit;
          lblName: TLabel;
          lblMark1: TLabel;
          lblMark2: TLabel;
          lblMark3: TLabel;
          edtMark2: TEdit;
          edtMark3: TEdit;
          memOutput: TMemo;
          procedure btnCalculateClick(Sender: TObject);
          procedure bmbResetClick(Sender: TObject);


        private
          { Private declarations }
        public
          { Public declarations }
        end;

      var
        frmMarks: TfrmMarks;

      implementation

      {$R *.dfm}

      procedure TfrmMarks.bmbResetClick(Sender: TObject);
      begin
        memOutput.Lines.Clear;
        edtName.Clear;
        edtMark1.Clear;
        edtMark2.Clear;
        edtMark3.Clear;
        edtName.SetFocus;
      end;

      procedure TfrmMarks.btnCalculateClick(Sender: TObject);

        var rMark1, rMark2, rMark3, rAvg : Real;

      begin
        memOutput.Lines.Add(edtName.Text);

        rMark1 := StrToFloat(edtMark1.Text);
        rMark2 := StrToFloat(edtMark2.Text);
        rMark3 := StrToFloat(edtMark3.Text);

        rAvg := (rMark1 + rMark2 + rMark3)/3;

        memOutput.Lines.Add('Mark 1 =' + #9 + edtMark1.Text + '%');
        memOutput.Lines.Add('Mark 2 =' + #9 + edtMark2.Text + '%');
        memOutput.Lines.Add('Mark 3 =' + #9 + edtMark3.Text + '%');
        memOutput.Lines.Add('Average =' + #9 + FloatToStrF(rAvg,ffFixed,10,2) + '%');



      end;





      end.
