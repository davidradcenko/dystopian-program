unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, XPMan;

type
  TForm16 = class(TForm)
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
    dbedt3: TDBEdit;
    dbedt4: TDBEdit;
    dbedt5: TDBEdit;
    btn2: TButton;
    dbedt6: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    xpmnfst1: TXPManifest;
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

uses Unit15;

{$R *.dfm}

procedure TForm16.btn2Click(Sender: TObject);
begin
if (dbedt1.Text='') and (dbedt2.Text='') and (dbedt3.Text='') and (dbedt4.Text='') and (dbedt5.Text='') and
(dbedt6.Text='') then exit ;
if Form15.qry1.modified then
  Form15.qry1.post;
  Form16.Close;
Form15.show;
  end;



end.
