unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DB, Grids, DBGrids, ADODB, Buttons, ExtCtrls,
  XPMan, Shellapi;

type
  TForm4 = class(TForm)
    btn1: TButton;
    edt1: TEdit;
    Label1: TLabel;
    dlgOpen1: TOpenDialog;
    con1: TADOConnection;
    mm1: TMainMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    cghfdrf1: TMenuItem;
    N4: TMenuItem;
    xpmnfst1: TXPManifest;
    procedure N2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure cghfdrf1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit3, Unit8, Unit9, Unit10, Unit15, Unit13, Unit11, Unit14,
  Unit2;

{$R *.dfm}

procedure TForm4.N2Click(Sender: TObject);
Var f1:textfile ;
begin
  assignfile(f1,'tt.txt');
rewrite(f1);
IF form4.dlgopen1.Execute then form4.edt1.Text:= form4.dlgopen1.FileName;
write(f1,edt1.text);
closefile(f1);
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
try
if edt1.Text='' then
begin  showmessage('Вы не подключили базу данных'); exit; end  else begin
  form3.qry1.Active:=false;
  form3.qry1.Active:=false;
  form8.qry1.Active:=false;
  form9.qry1.Active:=false;
  form10.qry2.Active:=false;
  form15.qry1.Active:=false;
  form13.qry1.Active:=false;
  form13.qry2.Active:=false;
  form11.qry1.Active:=false;
  form14.qry1.Active:=false;
  form13.qry1.Active:=false;
Form4.con1.Close;
form4.con1.ConnectionString:='Provider=Microsoft.Jet.OlEDB.4.0;Data Source='+Form4.edt1.Text+';Persist Security info=false;';
 Form4.con1.Open();
 form3.qry1.Active:=true;;
  form3.qry1.Active:=true;
  form8.qry1.Active:=true;
  form9.qry1.Active:=true;
  form10.qry2.Active:=true;
  form15.qry1.Active:=true;
  form13.qry1.Active:=true;
  form13.qry2.Active:=true;
  form11.qry1.Active:=true;
  form14.qry1.Active:=true;
  form13.qry1.Active:=true;
form2.show;
form4.Close;
end;
  except
    on e:exception do begin
  Showmessage ('Выбрана не та база данных');
  form3.qry1.Active:=false;
  form3.qry1.Active:=false;
  form8.qry1.Active:=false;
  form9.qry1.Active:=false;
  form10.qry2.Active:=false;
  form15.qry1.Active:=false;
  form13.qry1.Active:=false;
  form13.qry2.Active:=false;
  form11.qry1.Active:=false;
  form14.qry1.Active:=false;
  form13.qry1.Active:=false;
Form4.con1.Close;
end;
   end;
end;

procedure TForm4.N3Click(Sender: TObject);
var
f : TextFile;
s : String;
begin
  try
AssignFile(f, 'tt.txt');
Reset(f);
while (not EOF(f)) do begin
Readln(f, s);
edt1.Text:=(s);
end;
CloseFile(f);
 except
    on e:exception do begin  Showmessage ('Ошибка при открыти ');
end;
 end;
 end;

procedure TForm4.N4Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm4.cghfdrf1Click(Sender: TObject);
begin
                                                 try
 ShellExecute(0,PChar('Open'),Pchar('Help.chm'), nil, nil, SW_Show);
 except  on e:exception   do
  Showmessage ('не найдена справка');

end;
end;

end.








