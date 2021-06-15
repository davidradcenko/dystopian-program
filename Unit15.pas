unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, Mask, DB, ADODB,
  ComCtrls, Menus, XPMan, Shellapi;

type
  TForm15 = class(TForm)
    dbnvgr1: TDBNavigator;
    ds1: TDataSource;
    btn2: TButton;
    qry1: TADOQuery;
    DBGrid1: TDBGrid;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    xpmnfst1: TXPManifest;
    N3: TMenuItem;
    procedure btn2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

uses Unit3, Unit16, Unit1, Unit4;

{$R *.dfm}

procedure TForm15.btn2Click(Sender: TObject);
begin
  if DBGrid1.EditorMode or DBGrid1.DataSource.DataSet.Modified then
  DBGrid1.DataSource.DataSet.Post;
  form3.Show;
form15.Close;
end;

procedure TForm15.N2Click(Sender: TObject);
begin
   if dbgrid1.DataSource.DataSet.IsEmpty then   begin
  showmessage('расписание Должно иметь хотябы одно поле'); exit; end else
 qry1.Delete;
end;

procedure TForm15.N1Click(Sender: TObject);
begin
Form15.qry1.append;
form16.show;
form15.Hide;
end;

procedure TForm15.N3Click(Sender: TObject);
begin
  try
 ShellExecute(0,PChar('Open'),Pchar('Help.chm'), nil, nil, SW_Show);
 except  on e:exception   do
  Showmessage ('не найдена справка');

end;
end;

end.
