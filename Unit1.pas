unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls, DB, ADODB, XPMan;

type
  TForm1 = class(TForm)
    img1: TImage;
    btn1: TButton;
    btn2: TButton;
    Label1: TLabel;
    xpmnfst1: TXPManifest;
    tmr1: TTimer;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit8, Unit9, Unit10, Unit13, Unit11, Unit14, Unit15, Unit3,
  Unit4;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
form4.show;
form1.hide;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
form1.Close;
end;



end.

