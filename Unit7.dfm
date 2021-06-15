object Form7: TForm7
  Left = 454
  Top = 138
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1086#1084#1086#1097#1100' '#1080' '#1087#1086#1076#1076#1077#1088#1078#1082#1072
  ClientHeight = 102
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 48
    Width = 54
    Height = 13
    Caption = #1042#1082#1086#1085#1090#1072#1082#1090#1077
    OnClick = Label1Click
    OnMouseDown = Label1MouseDown
    OnMouseUp = Label1MouseUp
  end
  object Label2: TLabel
    Left = 32
    Top = 8
    Width = 52
    Height = 23
    Caption = #1055#1086#1095#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TButton
    Left = 0
    Top = 76
    Width = 75
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 0
    OnClick = btn1Click
  end
  object edt1: TEdit
    Left = 96
    Top = 8
    Width = 177
    Height = 21
    ReadOnly = True
    TabOrder = 1
    Text = 'davidrdavidradchenko@yandex.by'
  end
  object xpmnfst1: TXPManifest
    Left = 320
    Top = 32
  end
end
