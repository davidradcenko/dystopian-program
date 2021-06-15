unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB, StdCtrls, ComCtrls, Shellapi, Buttons,
  XPMan;

type
  TForm8 = class(TForm)
    qry1: TADOQuery;
    ds1: TDataSource;
    btn1: TButton;
    DBGrid1: TDBGrid;
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
  Form8: TForm8;

implementation

uses Unit3, Unit10, Unit1, Unit4;

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
begin
form3.show;
form8.Close;
end;

procedure TForm8.DBGrid1DblClick(Sender: TObject);
var s1,s2:string;
begin
  if (THackGrid(DBGrid1).Col=4) and (THackGrid(DBGrid1).Row=3) then
begin
 shellexecute(handle,'open','http://elektrichki.net/dni-sledovania/molodechno~minsk-pass~6106/', nil, nil, Sw_show);
end;
if (THackGrid(DBGrid1).Col=4) and (THackGrid(DBGrid1).Row=14) then
begin
 shellexecute(handle,'open','http://elektrichki.net/dni-sledovania/molodechno~minsk-pass~6124/', nil, nil, Sw_show);
end;
if (THackGrid(DBGrid1).Col=4) and (THackGrid(DBGrid1).Row=16) then
begin
 shellexecute(handle,'open','http://elektrichki.net/dni-sledovania/molodechno~minsk-pass~6128/', nil, nil, Sw_show);
end;
if (THackGrid(DBGrid1).Col=4) and (THackGrid(DBGrid1).Row=17) then
begin
 shellexecute(handle,'open','http://elektrichki.net/dni-sledovania/gudogaj~minsk-pass~6128/', nil, nil, Sw_show);
end;
 if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=1) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин1 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=2) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин2 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=3) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин3 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=4) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин4 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=5) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин645 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=6) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин711 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=7) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин733 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=8) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин901 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=9) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин946 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=10) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин1046 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
  if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=11) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин10462 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=12) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин1300 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=13) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин13002 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=14) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин1456 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=15) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин1613 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=16) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин1647 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=17) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин16472 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=18) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин1731 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=19) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин1912 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=20) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин1948 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=21) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин2032 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=22) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин2128 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=23) then
begin

 with form10.qry2 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from моломин2222 order by otpravlenie ')  ;
   open;
 end; form10.show;
   form8.Close;
end;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
Form8.Print;
end;

end.

