unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, ADODB, Buttons, XPMan;

type
  TForm10 = class(TForm)
    btn1: TButton;
    qry2: TADOQuery;
    ds2: TDataSource;
    DBGrid1: TDBGrid;
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
  Form10: TForm10;

implementation

uses Unit3, Unit8, Unit1, Unit4;

{$R *.dfm}

procedure TForm10.btn1Click(Sender: TObject);
begin
form8.show;
form10.Close;
end;

procedure TForm10.btn2Click(Sender: TObject);
begin
Form10.Print;
end;

end.
