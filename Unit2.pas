unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, ComCtrls, Shellapi, XPMan;

type
  TForm2 = class(TForm)
    btn2: TButton;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    redt1: TRichEdit;
    btn1: TButton;
    btn3: TButton;
    N1: TMenuItem;
    xpmnfst1: TXPManifest;
    procedure N2Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TForm2.N2Click(Sender: TObject);
begin
form1.close;
end;

 procedure TForm2.btn2Click(Sender: TObject);
  var r:TmodalResult;
begin
 r:=messagedlg ('Убедительная просьба сообщить об ошибках в расписании',mtwarning,[mbok],0);
 if r=mrok then begin
 form3.show;
 form2.Close;
 end;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
try
  redt1.Lines.LoadFromFile('t11.dat');
  except
    on e:exception do begin
  Showmessage ('Не найден файл "t11.dat"');
end;
  end;
  end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  try
  redt1.Lines.LoadFromFile('t12.txt');
  except
    on e:exception do begin
  Showmessage ('Не найден файл "t12.txt"');
end;
  end;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
  try
 ShellExecute(0,PChar('Open'),Pchar('Help.chm'), nil, nil, SW_Show);
 except  on e:exception   do
  Showmessage ('не найдена справка');

end;
 end;
end.
      
