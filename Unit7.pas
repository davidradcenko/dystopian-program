unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent, IdMessage,
  StdCtrls, IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient,
  IdSMTP, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, Shellapi, XPMan
  ;

type
  TForm7 = class(TForm)
    btn1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edt1: TEdit;
    xpmnfst1: TXPManifest;
    procedure btn1Click(Sender: TObject);
   
    procedure Label1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  Const
    link=clblue;
    alink=clred;
    vlink=clpurple;

implementation

uses Unit3, Unit6;

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
Form3.show;
form7.Close;
end;

procedure TForm7.Label1Click(Sender: TObject);
begin
Shellexecute(handle, 'open', 'https://vk.com/dradchenko2001', nil,nil, sw_show);
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
Label1.Font.Color:=link;
Label2.Font.Color:=link;
end;

procedure TForm7.Label1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
label1.Font.Color:=alink;
end;

procedure TForm7.Label1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Label1.Font.Color:=vlink;
end;

end.

