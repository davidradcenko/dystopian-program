unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ADODB, Shellapi, Buttons, XPMan;

type
  TForm9 = class(TForm)
    btn1: TButton;
    qry1: TADOQuery;
    ds1: TDataSource;
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
  Form9: TForm9;

implementation

uses Unit3, Unit10, Unit8, Unit11, Unit1, Unit4;

{$R *.dfm}

procedure TForm9.btn1Click(Sender: TObject);
begin
form3.show;
form9.Close;
end;

procedure TForm9.DBGrid1DblClick(Sender: TObject);
var s1,s2:string;
begin
  if (THackGrid(DBGrid1).Col=4) and (THackGrid(DBGrid1).Row=8) then
begin
 shellexecute(handle,'open','http://elektrichki.net/dni-sledovania/minsk-pass~gudogaj~6117/', nil, nil, Sw_show);
end;
if (THackGrid(DBGrid1).Col=4) and (THackGrid(DBGrid1).Row=9) then
begin
 shellexecute(handle,'open','http://elektrichki.net/dni-sledovania/minsk-pass~molodechno~6117/', nil, nil, Sw_show);
end;
if (THackGrid(DBGrid1).Col=4) and (THackGrid(DBGrid1).Row=10) then
begin
 shellexecute(handle,'open','http://elektrichki.net/dni-sledovania/minsk-pass~molodechno~6119/', nil, nil, Sw_show);
end;
 if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=1) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло0030 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=2) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло0440 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
 if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=3) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло0525 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=4) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло0625 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=5) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло0723 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=6) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло0848 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=7) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло0952 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=8) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло1110 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=9) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло11102 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=10) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло1300 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=11) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло1406 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=12) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло1530 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=13) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло1622 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=14) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло1734 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=15) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло1811 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=16) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло1817 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=17) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло1918 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=18) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло2045 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
if (THackGrid(DBGrid1).Col=5) and (THackGrid(DBGrid1).Row=19) then
begin

 with form11.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from минмоло2215 order by otpravlenie ')  ;
   open;
 end; form11.show;
   form8.Close;
end;
 end;

procedure TForm9.btn2Click(Sender: TObject);
begin
Form9.Print;
end;

end.


