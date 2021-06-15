unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, DB, Grids, DBGrids, ADODB, ComCtrls,
  Mask, DBCtrls, jpeg,Shellapi, XPMan;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    DBGrid11: TDBGrid;
    StatusBar1: TStatusBar;
    N3: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    tmr1: TTimer;
    qry1: TADOQuery;
    ds1: TDataSource;
    pgc1: TPageControl;
    ts1: TTabSheet;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    ts2: TTabSheet;
    ts4: TTabSheet;
    cbb4: TComboBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    ts3: TTabSheet;
    Label2: TLabel;
    cbb5: TComboBox;
    cbb6: TComboBox;
    btn2: TButton;
    ts5: TTabSheet;
    btn4: TButton;
    img1: TImage;
    Label1: TLabel;
    N4: TMenuItem;
    grp1: TGroupBox;
    cbb8: TComboBox;
    cbb7: TComboBox;
    cbb9: TComboBox;
    Label5: TLabel;
    btn5: TButton;
    grp2: TGroupBox;
    Label6: TLabel;
    N5: TMenuItem;
    N9: TMenuItem;
    grp3: TGroupBox;
    edt3: TEdit;
    Label4: TLabel;
    edt2: TEdit;
    Label7: TLabel;
    btn1: TButton;
    xpmnfst1: TXPManifest;
    Label3: TLabel;
    procedure N2Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure cbb4Change(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure cbb9Change(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure edt2Change(Sender: TObject);
    procedure edt3Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure edt3KeyPress(Sender: TObject; var Key: Char);
    procedure edt2KeyPress(Sender: TObject; var Key: Char);

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
  Form3: TForm3;

implementation

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit13, 
  Unit14, Unit15;

{$R *.dfm}

procedure TForm3.N2Click(Sender: TObject);
begin
form1.close;
end;

procedure TForm3.tmr1Timer(Sender: TObject);
begin
 form3.StatusBar1.Panels[0].Text:=TimeToStr(Time);
 form3.StatusBar1.Panels[1].Text:=DateToStr(Date);
end;

procedure TForm3.N4Click(Sender: TObject);
begin
form2.btn2.Caption:='Назад';
form2.show;
form3.Close ;
end;

procedure TForm3.cbb4Change(Sender: TObject);
begin
  if (cbb4.ItemIndex=0) and (rb1.Checked) then
 begin
 with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by otpravlenie ')  ;
   open;
 end;
 end;
 if  (cbb4.ItemIndex=1) and (rb1.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by pribtie ')  ;
   open;
 end;
 end;
 if  (cbb4.ItemIndex=0) and (rb2.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by otpravlenie DESC')  ;
   open;
 end;
 end;
 if  (cbb4.ItemIndex=1) and (rb2.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by pribtie DESC')  ;
   open;
 end;
 end;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
if   (cbb5.ItemIndex=-1) and (cbb6.itemindex=-1) then
showmessage('Вы не указали Расписание и Рейс') ;
 if   (cbb5.ItemIndex=-1) and (cbb6.itemindex=0) then
showmessage('Вы не указали Расписание') ;
if   (cbb5.ItemIndex=-1) and (cbb6.itemindex=1) then
showmessage('Вы не указали Расписание') ;
  if   (cbb5.ItemIndex=0) and (cbb6.itemindex=-1) then
showmessage('Вы не указали Рейс') ;
if   (cbb5.ItemIndex=1) and (cbb6.itemindex=-1) then
showmessage('Вы не указали Рейс') ;

  if   (cbb5.ItemIndex=0) and (cbb6.itemindex=0) then
 begin
   unit8.form8.qry1.Filtered:=false;
   unit8.form8.qry1.filter:='reic like %молодечно-% and racpisanie like %рас% ';
   unit8.form8.qry1.Filtered:=true;
   form8.show;
   form3.close;
 end;

 if   (cbb5.ItemIndex=0) and (cbb6.itemindex=1) then
 begin
   form9.qry1.Filtered:=false;
   form9.qry1.filter:='reic like %Минск-% and racpisanie like %рас% ';
   form9.qry1.Filtered:=true;
   form9.show;
   form3.close;
 end;
 if   (cbb5.ItemIndex=1) and (cbb6.itemindex=0) then
 begin
    form13.show;
   form3.close;
   Form13.qry1.Filtered:=false;
   form13.qry1.Filter:=' reic like %Молодечно-% and racpisanie like %авто% and  delenie like %1%  ';
   Form13.qry1.Filtered:=true;
     Form13.qry2.Filtered:=false;
   form13.qry2.Filter:=' reic like %Молодечно-% and racpisanie like %авто% and  delenie like %2%  ';
   Form13.qry2.Filtered:=true;
 end;
 if   (cbb5.ItemIndex=1) and (cbb6.itemindex=1) then
 begin
   Form14.qry1.Filtered:=false;
   form14.qry1.Filter:=' reic like %Минск-% and racpisanie like %авто%   ';
   Form14.qry1.Filtered:=true;
   form14.show;
   form3.close;
 end;
end;

procedure TForm3.rb1Click(Sender: TObject);
begin
  if (cbb4.ItemIndex=0) and (rb1.Checked) then
 begin
 with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by otpravlenie ')  ;
   open;
 end;

 end;
 if  (cbb4.ItemIndex=1) and (rb1.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by pribtie ')  ;
   open;
 end;
 end;
 if  (cbb4.ItemIndex=0) and (rb2.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by otpravlenie DESC')  ;
   open;
 end;
 end;
 if  (cbb4.ItemIndex=1) and (rb2.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by pribtie DESC')  ;
   open;
 end;
 end;
end;

procedure TForm3.rb2Click(Sender: TObject);
begin
begin
  if (cbb4.ItemIndex=0) and (rb1.Checked) then
 begin
 with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by otpravlenie ')  ;
   open;
 end;

 end;
 if  (cbb4.ItemIndex=1) and (rb1.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by pribtie ')  ;
   open;
 end;
 end;
 if  (cbb4.ItemIndex=0) and (rb2.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by otpravlenie DESC')  ;
   open;
 end;
 end;
 if  (cbb4.ItemIndex=1) and (rb2.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by pribtie DESC')  ;
   open;
 end;
 end;
end;begin
  if (cbb4.ItemIndex=0) and (rb1.Checked) then
 begin
 with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by otpravlenie ')  ;
   open;
 end;

 end;
 if  (cbb4.ItemIndex=1) and (rb1.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by pribtie ')  ;
   open;
 end;
 end;
 if  (cbb4.ItemIndex=0) and (rb2.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by otpravlenie DESC')  ;
   open;
 end;
 end;
 if  (cbb4.ItemIndex=1) and (rb2.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by pribtie DESC')  ;
   open;
 end;
 end;
end;begin
  if (cbb4.ItemIndex=0) and (rb1.Checked) then
 begin
 with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by otpravlenie ')  ;
   open;
 end;

 end;
 if  (cbb4.ItemIndex=1) and (rb1.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by pribtie ')  ;
   open;
 end;
 end;
 if  (cbb4.ItemIndex=0) and (rb2.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by otpravlenie DESC')  ;
   open;
 end;
 end;
 if  (cbb4.ItemIndex=1) and (rb2.Checked) then
 begin
  with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by pribtie DESC')  ;
   open;
 end;
 end;
end;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
with form3.qry1 do
 begin
   close;
   sql.Clear;
   sql.Add('select * from общая order by otpravlenie ')  ;
   open;
 end;
 qry1.Filtered:=false;
 qry1.Filter:='';
 qry1.Filtered:=true;
end;

procedure TForm3.cbb9Change(Sender: TObject);
begin
if cbb9.ItemIndex=0 then      begin
cbb7.Items.Clear;
cbb7.text:='';
 cbb8.Text:='';
cbb7.Items.Add('Молодечно');
 cbb7.Items.Add('Фестивальный');
 cbb7.Items.Add('Криница');
 cbb7.Items.Add('Татарщизна');
 cbb7.Items.Add('Мясота');
 cbb7.Items.Add('Уша');
 cbb7.Items.Add('Лоси');
 cbb7.Items.Add('Бояры');
 cbb7.Items.Add('Олехновичи');
 cbb7.Items.Add('Романы');
 cbb7.Items.Add('Дубравы');
 cbb7.Items.Add('Пралески');
 cbb7.Items.Add('Вязанка');
 cbb7.Items.Add('Радашковичи');
 cbb7.Items.Add('Анусино');
 cbb7.Items.Add('Хмелево');
 cbb7.Items.Add('Беларусь');
 cbb7.Items.Add('Зеленое');
 cbb7.Items.Add('Крыжовка');
 cbb7.Items.Add('Ратомка');
 cbb7.Items.Add('Минское Море');
 cbb7.Items.Add('Ждановичи');
 cbb7.Items.Add('Лебяжи');
 cbb7.Items.Add('Масиковщина');
 cbb7.Items.Add('Минск-Северный');
 cbb7.Items.Add('Минск-Пасс.');
  cbb8.Items.Clear;
 cbb8.Items.Add('Молодечно');
 cbb8.Items.Add('Фестивальный');
 cbb8.Items.Add('Криница');
 cbb8.Items.Add('Татарщизна');
 cbb8.Items.Add('Мясота');
 cbb8.Items.Add('Уша');
 cbb8.Items.Add('Лоси');
 cbb8.Items.Add('Бояры');
 cbb8.Items.Add('Олехновичи');
 cbb8.Items.Add('Романы');
 cbb8.Items.Add('Дубравы');
 cbb8.Items.Add('Пралески');
 cbb8.Items.Add('Вязанка');
 cbb8.Items.Add('Радашковичи');
 cbb8.Items.Add('Анусино');
 cbb8.Items.Add('Хмелево');
 cbb8.Items.Add('Беларусь');
 cbb8.Items.Add('Зеленое');
 cbb8.Items.Add('Крыжовка');
 cbb8.Items.Add('Ратомка');
 cbb8.Items.Add('Минское Море');
 cbb8.Items.Add('Ждановичи');
 cbb8.Items.Add('Лебяжи');
 cbb8.Items.Add('Масиковщина');
 cbb8.Items.Add('Минск-Северный');
 cbb8.Items.Add('Минск-Пасс.');
end;
 if cbb9.ItemIndex=1 then      begin
 cbb7.Items.Clear;
 cbb7.text:='';
 cbb8.Text:='';
 cbb7.Items.Add('Минск-Пасс.');
 cbb7.Items.Add('Минск-Северный');
 cbb7.Items.Add('Масюковщина');
 cbb7.Items.Add('Лебяжий');
 cbb7.Items.Add('Ждановичи');
 cbb7.Items.Add('Минское Море');
 cbb7.Items.Add('Ратомкаи');
 cbb7.Items.Add('Крыжовка');
 cbb7.Items.Add('Зеленое');
 cbb7.Items.Add('Беларусь');
 cbb7.Items.Add('Хмелевка');
 cbb7.Items.Add('Анусино');
 cbb7.Items.Add('Радошковичи');
 cbb7.Items.Add('Вязынка');
 cbb7.Items.Add('Пралески');
 cbb7.Items.Add('Дубравы');
 cbb7.Items.Add('Романы');
 cbb7.Items.Add('Олехновичи');
 cbb7.Items.Add('Бояры');
 cbb7.Items.Add('Лоси');
 cbb7.Items.Add('Уша');
 cbb7.Items.Add('Мясота');
 cbb7.Items.Add('Татарщизна');
 cbb7.Items.Add('Криница');
 cbb7.Items.Add('Фестивальный');
 cbb7.Items.Add('Молодечно');
 cbb8.Items.Clear;
 cbb8.Items.Add('Минск-Пасс.');
 cbb8.Items.Add('Минск-Северный');
 cbb8.Items.Add('Масюковщина');
 cbb8.Items.Add('Лебяжий');
 cbb8.Items.Add('Ждановичи');
 cbb8.Items.Add('Минское Море');
 cbb8.Items.Add('Ратомкаи');
 cbb8.Items.Add('Крыжовка');
 cbb8.Items.Add('Зеленое');
 cbb8.Items.Add('Беларусь');
 cbb8.Items.Add('Хмелевка');
 cbb8.Items.Add('Анусино');
 cbb8.Items.Add('Радошковичи');
 cbb8.Items.Add('Вязынка');
 cbb8.Items.Add('Пралески');
 cbb8.Items.Add('Дубравы');
 cbb8.Items.Add('Романы');
 cbb8.Items.Add('Олехновичи');
 cbb8.Items.Add('Бояры');
 cbb8.Items.Add('Лоси');
 cbb8.Items.Add('Уша');
 cbb8.Items.Add('Мясота');
 cbb8.Items.Add('Татарщизна');
 cbb8.Items.Add('Криница');
 cbb8.Items.Add('Фестивальный');
 cbb8.Items.Add('Молодечно');
 end;
end;
  function calc(n,b:integer;q:extended):extended;
  external 'Project2.dll';
procedure TForm3.btn5Click(Sender: TObject);
var r,b,n:integer; q:extended;
rub:string;
begin
  if (cbb9.ItemIndex=-1) or (cbb7.ItemIndex=-1) or (cbb8.ItemIndex=-1) then
   begin
   showmessage('Вы ввели не все данные'); exit;  end
   else begin
if cbb9.ItemIndex=0 then begin
    if cbb7.ItemIndex=0 then n:=0;
    if cbb7.ItemIndex=1 then n:=4;
    if cbb7.ItemIndex=2 then n:=8;
    if cbb7.ItemIndex=3 then n:=10;
    if cbb7.ItemIndex=4 then n:=13;
    if cbb7.ItemIndex=5 then n:=17;
    if cbb7.ItemIndex=6 then n:=22;
    if cbb7.ItemIndex=7 then n:=25;
    if cbb7.ItemIndex=8 then n:=30;
    if cbb7.ItemIndex=9 then n:=33;
    if cbb7.ItemIndex=10 then n:=36;
    if cbb7.ItemIndex=11 then n:=37;
    if cbb7.ItemIndex=12 then n:=40;
    if cbb7.ItemIndex=13 then n:=43;
    if cbb7.ItemIndex=14 then n:=45;
    if cbb7.ItemIndex=15 then n:=49;
    if cbb7.ItemIndex=16 then n:=51;
    if cbb7.ItemIndex=17 then n:=54;
    if cbb7.ItemIndex=18 then n:=58;
    if cbb7.ItemIndex=19 then n:=61;
    if cbb7.ItemIndex=20 then n:=63;
    if cbb7.ItemIndex=21 then n:=66;
    if cbb7.ItemIndex=22 then n:=68;
    if cbb7.ItemIndex=23 then n:=70;
    if cbb7.ItemIndex=24 then n:=75;
    if cbb7.ItemIndex=25 then n:=77;
    if cbb8.ItemIndex=0 then b:=0 ;
    if cbb8.ItemIndex=1 then b:=4 ;
    if cbb8.ItemIndex=2 then b:=8 ;
    if cbb8.ItemIndex=3 then b:=10 ;
    if cbb8.ItemIndex=4 then b:=13 ;
    if cbb8.ItemIndex=5 then b:=17 ;
    if cbb8.ItemIndex=6 then b:=22 ;
    if cbb8.ItemIndex=7 then b:=25 ;
    if cbb8.ItemIndex=8 then b:=30 ;
    if cbb8.ItemIndex=9 then b:=33 ;
    if cbb8.ItemIndex=10 then b:=36 ;
    if cbb8.ItemIndex=11 then b:=37 ;
    if cbb8.ItemIndex=12 then b:=40 ;
    if cbb8.ItemIndex=13 then b:=43 ;
    if cbb8.ItemIndex=14 then b:=45 ;
    if cbb8.ItemIndex=15 then b:=49 ;
    if cbb8.ItemIndex=16 then b:=51 ;
    if cbb8.ItemIndex=17 then b:=54 ;
    if cbb8.ItemIndex=18 then b:=58 ;
    if cbb8.ItemIndex=19 then b:=61 ;
    if cbb8.ItemIndex=20 then b:=63 ;
    if cbb8.ItemIndex=21 then b:=66 ;
    if cbb8.ItemIndex=22 then b:=68 ;
    if cbb8.ItemIndex=23 then b:=70 ;
    if cbb8.ItemIndex=24 then b:=75 ;
    if cbb8.ItemIndex=25 then b:=77 ;
end;
if cbb9.ItemIndex=1 then begin
  if cbb7.ItemIndex=0 then n:=0;
    if cbb7.ItemIndex=1 then n:=2;
    if cbb7.ItemIndex=2 then n:=7;
    if cbb7.ItemIndex=3 then n:=8;
    if cbb7.ItemIndex=4 then n:=11;
    if cbb7.ItemIndex=5 then n:=14;
    if cbb7.ItemIndex=6 then n:=16;
    if cbb7.ItemIndex=7 then n:=19;
    if cbb7.ItemIndex=8 then n:=23;
    if cbb7.ItemIndex=9 then n:=26;
    if cbb7.ItemIndex=10 then n:=28;
    if cbb7.ItemIndex=11 then n:=32;
    if cbb7.ItemIndex=12 then n:=34;
    if cbb7.ItemIndex=13 then n:=37;
    if cbb7.ItemIndex=14 then n:=40;
    if cbb7.ItemIndex=15 then n:=41;
    if cbb7.ItemIndex=16 then n:=44;
    if cbb7.ItemIndex=17 then n:=47;
    if cbb7.ItemIndex=18 then n:=52;
    if cbb7.ItemIndex=19 then n:=55;
    if cbb7.ItemIndex=20 then n:=60;
    if cbb7.ItemIndex=21 then n:=64;
    if cbb7.ItemIndex=22 then n:=67;
    if cbb7.ItemIndex=23 then n:=69;
    if cbb7.ItemIndex=24 then n:=73;
    if cbb7.ItemIndex=25 then n:=77;
     if cbb8.ItemIndex=0 then b:=0;
    if cbb8.ItemIndex=1 then b:=2;
    if cbb8.ItemIndex=2 then b:=7;
    if cbb8.ItemIndex=3 then b:=8;
    if cbb8.ItemIndex=4 then b:=11;
    if cbb8.ItemIndex=5 then b:=14;
    if cbb8.ItemIndex=6 then b:=16;
    if cbb8.ItemIndex=7 then b:=19;
    if cbb8.ItemIndex=8 then b:=23;
    if cbb8.ItemIndex=9 then b:=26;
    if cbb8.ItemIndex=10 then b:=28;
    if cbb8.ItemIndex=11 then b:=32;
    if cbb8.ItemIndex=12 then b:=34;
    if cbb8.ItemIndex=13 then b:=37;
    if cbb8.ItemIndex=14 then b:=40;
    if cbb8.ItemIndex=15 then b:=41;
    if cbb8.ItemIndex=16 then b:=44;
    if cbb8.ItemIndex=17 then b:=47;
    if cbb8.ItemIndex=18 then b:=52;
    if cbb8.ItemIndex=19 then b:=55;
    if cbb8.ItemIndex=20 then b:=60;
    if cbb8.ItemIndex=21 then b:=64;
    if cbb8.ItemIndex=22 then b:=67;
    if cbb8.ItemIndex=23 then b:=69;
    if cbb8.ItemIndex=24 then b:=73;
    if cbb8.ItemIndex=25 then b:=77;
end;
   if n>b then begin showmessage('Вы не правельно не выбрали путь');   exit;   end;
   if n=b then begin showmessage('Вы не правельно указали место отправления или место прибытия'); exit ;   end;
    label5.caption:='';
     rub:= '  бел.руб.';
  label5.caption:=floattostr((calc(n,b,q)))+(rub);
 end;

 end;

procedure TForm3.FormCreate(Sender: TObject);
begin
 label1.Height:=33;
if cbb9.ItemIndex=-1 then begin
 cbb7.Items.Clear;
 cbb8.Items.Clear;
end;
  end;

procedure TForm3.N10Click(Sender: TObject);
begin
Form15.show;
form3.Close;
end;

procedure TForm3.N6Click(Sender: TObject);
begin
shellexecute(handle,'open','https://kiwitaxi.ru/belarus/minsk->maladzyechna', nil, nil, Sw_show);
end;

procedure TForm3.N7Click(Sender: TObject);
begin
 shellexecute(handle,'open','http://molodechno-minsk.by', nil, nil, Sw_show);
end;

procedure TForm3.N9Click(Sender: TObject);
begin
form7.Show;
form3.Close;
end;

procedure TForm3.edt2Change(Sender: TObject);
var s2,s1:string;
begin
 s1:=edt2.text+label4.caption+edt3.Text;
  begin
   with form3.qry1 do
 begin
   s1:='%'+s1+'%';
   s2:=quotedstr(s1);
   close;
   sql.Clear;
   sql.Add('select * from общая where otpravlenie like '+s2+'')  ;
   open;
 end;
  end;
end;

procedure TForm3.edt3Change(Sender: TObject);
var s2,s1:string;
begin
 s1:=edt2.text+label4.caption+edt3.Text;
  begin
   with form3.qry1 do
 begin
   s1:='%'+s1+'%';
   s2:=quotedstr(s1);
   close;
   sql.Clear;
   sql.Add('select * from общая where otpravlenie like '+s2+'')  ;
   open;
 end;
  end;
end;

procedure TForm3.btn1Click(Sender: TObject);
var i:integer;
begin

begin
  i:=cbb3.ItemIndex;
 case i of
 -1: begin
   if (cbb1.ItemIndex=-1) and (cbb2.ItemIndex=-1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='';
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=0) and (cbb2.ItemIndex=-1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='Racpisanie like %эл% ' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=1) and (cbb2.ItemIndex=-1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='Racpisanie like %авт% ' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=0) and (cbb2.ItemIndex=0) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='Racpisanie like %эл% and reic like %молодечно-% ' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=1) and (cbb2.ItemIndex=1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='Racpisanie like %авт% and reic like %молодечно-% ' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=-1) and (cbb2.ItemIndex=0) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='reic like %молодечно-% ' ;
   form3.qry1.Filtered:=true;
 end ;

 if (cbb1.ItemIndex=-1) and (cbb2.ItemIndex=1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='reic like %минск-% ' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=0) and (cbb2.ItemIndex=1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='reic like %минск-% and Racpisanie like %эл%  ';
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=1) and (cbb2.ItemIndex=1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='reic like %минск-% and Racpisanie like %авт%  ';
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=1) and (cbb2.ItemIndex=0) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='reic like %молодечно-% and Racpisanie like %авт%  ';
   form3.qry1.Filtered:=true;
 end ;
 end;
 0: begin
 if (cbb1.ItemIndex=-1) and (cbb2.ItemIndex=-1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='grafik like %ежеднев%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=0) and (cbb2.ItemIndex=-1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='Racpisanie like %эл% and grafik like %ежеднев%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=1) and (cbb2.ItemIndex=-1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='Racpisanie like %авт% and grafik like %ежеднев%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=0) and (cbb2.ItemIndex=0) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='Racpisanie like %эл% and reic like %молодечно-% and grafik like %ежеднев%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=1) and (cbb2.ItemIndex=0) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='Racpisanie like %авт% and reic like %молодечно-% and grafik like %ежеднев%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=-1) and (cbb2.ItemIndex=0) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='reic like %молодечно-% and grafik like %ежеднев%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=-1) and (cbb2.ItemIndex=1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='reic like %минск-% and grafik like %ежеднев%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=0) and (cbb2.ItemIndex=1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='reic like %минск-% and grafik like %ежеднев% and racpisanie like %рас% ';
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=1) and (cbb2.ItemIndex=1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='reic like %минск-% and grafik like %ежеднев% and racpisanie like %авт% ';
   form3.qry1.Filtered:=true;
 end ;
 end;
  1: begin
  if (cbb1.ItemIndex=-1) and (cbb2.ItemIndex=-1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='grafik like %особ%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=0) and (cbb2.ItemIndex=-1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='Racpisanie like %эл% and grafik like %особ%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=1) and (cbb2.ItemIndex=-1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='Racpisanie like %авт% and grafik like %особ%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=0) and (cbb2.ItemIndex=0) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='Racpisanie like %эл% and reic like %молодечно-% and grafik like %особ%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=1) and (cbb2.ItemIndex=0) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='Racpisanie like %авт% and reic like %молодечно-% and grafik like %особ%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=-1) and (cbb2.ItemIndex=0) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='reic like %молодечно-% and grafik like %особ%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=-1) and (cbb2.ItemIndex=1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='reic like %минск-% and grafik like %осо%' ;
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=0) and (cbb2.ItemIndex=1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='reic like %минск-% and grafik like %осо% and racpisanie like %рас% ';
   form3.qry1.Filtered:=true;
 end ;
 if (cbb1.ItemIndex=1) and (cbb2.ItemIndex=1) then
 begin
   form3.qry1.Filtered:=false;
   form3.qry1.filter:='reic like %минск-% and grafik like %осо% and racpisanie like %авт% ';
   form3.qry1.Filtered:=true;
 end ;
 end;
 end;
   end;
end;

procedure TForm3.N5Click(Sender: TObject);
begin
  try
 ShellExecute(0,PChar('Open'),Pchar('Help.chm'), nil, nil, SW_Show);
 except  on e:exception   do
  Showmessage ('не найдена справка');

end;
end;

procedure TForm3.edt3KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
        '0'..'9', #8: ;
        #13: Edt2.SetFocus;
      else Key := #0;
    end;
end;

procedure TForm3.edt2KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
        '0'..'9', #8: ;
        #13: Edt3.SetFocus;
      else Key := #0;
    end;
end;

end.




