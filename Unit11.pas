unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, Buttons, XPMan;

type
  TForm11 = class(TForm)
    DBGrid1: TDBGrid;
    ds1: TDataSource;
    qry1: TADOQuery;
    btn1: TButton;
    btn2: TBitBtn;
    xpmnfst1: TXPManifest;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit9, Unit1, Unit4;

{$R *.dfm}

procedure TForm11.btn1Click(Sender: TObject);
begin
Form11.Close;
form9.Show;
end;

procedure TForm11.btn2Click(Sender: TObject);
begin
form11.Print;
end;

end.
