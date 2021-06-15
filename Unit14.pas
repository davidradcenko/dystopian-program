unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, Buttons, XPMan;

type
  TForm14 = class(TForm)
    DBGrid1: TDBGrid;
    qry1: TADOQuery;
    ds1: TDataSource;
    btn1: TButton;
    btn2: TBitBtn;
    xpmnfst1: TXPManifest;
    procedure btn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
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
  Form14: TForm14;

implementation

uses
  Unit3, Unit1, Unit4;

{$R *.dfm}

procedure TForm14.btn1Click(Sender: TObject);
begin
form14.Close;
form3.Show;
end;

procedure TForm14.DBGrid1DblClick(Sender: TObject);
var s:integer;
begin
  for s:=1 to 9 do begin
 if (THackGrid(DBGrid1).Col=4) and (THackGrid(DBGrid1).Row=s) then
showmessage('Минск Автостанция "Дружная" , Молодечно');
   end;
end;

procedure TForm14.btn2Click(Sender: TObject);
begin
form14.Print;
end;

end.


