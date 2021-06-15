unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB, StdCtrls, Buttons, XPMan;

type
  TForm13 = class(TForm)
    qry1: TADOQuery;
    DBGrid1: TDBGrid;
    ds1: TDataSource;
    btn1: TButton;
    DBGrid: TDBGrid;
    qry2: TADOQuery;
    ds2: TDataSource;
    btn2: TBitBtn;
    xpmnfst1: TXPManifest;
    procedure btn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  THackGrid = class(TDBGrid)
public
property Col;
property Row;
end;

var
  Form13: TForm13;

implementation

uses
  Unit3, Unit1, Unit4;

{$R *.dfm}

procedure TForm13.btn1Click(Sender: TObject);
begin
form13.Close;
form3.Show;
end;

procedure TForm13.DBGrid1DblClick(Sender: TObject);
var s:integer;
begin
  for s:=1 to 29 do begin
if (THackGrid(DBGrid1).Col=4) and (THackGrid(DBGrid1).Row=s)
then
begin
 showmessage('Молодечно,  Минск Автостанция "Дружная"');
end;
end;  end;

procedure TForm13.btn2Click(Sender: TObject);
begin
form13.Print;
end;

procedure TForm13.DBGridDblClick(Sender: TObject);
var s:integer;
begin
  for s:=1 to 19 do begin

  if (THackGrid(DBGrid).Col=4) and (THackGrid(DBGrid).Row=s)
then
begin
 showmessage('Молодечно,  Минск Автостанция "Дружная"');
end;
end;
end;

end.
