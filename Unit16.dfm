object Form16: TForm16
  Left = 552
  Top = 402
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100
  ClientHeight = 155
  ClientWidth = 306
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 14
    Top = 6
    Width = 58
    Height = 13
    Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077
  end
  object Label2: TLabel
    Left = 41
    Top = 34
    Width = 23
    Height = 13
    Caption = #1056#1077#1081#1089
  end
  object Label3: TLabel
    Left = 6
    Top = 54
    Width = 68
    Height = 13
    Caption = #1054#1090#1087#1088#1072#1074#1083#1077#1085#1080#1077
  end
  object Label4: TLabel
    Left = 22
    Top = 86
    Width = 51
    Height = 13
    Caption = #1055#1088#1080#1073#1099#1090#1080#1077
  end
  object Label5: TLabel
    Left = 38
    Top = 110
    Width = 33
    Height = 13
    Caption = #1042' '#1087#1091#1090#1080
  end
  object Label6: TLabel
    Left = 30
    Top = 126
    Width = 38
    Height = 13
    Caption = #1043#1088#1072#1092#1080#1082
  end
  object dbedt1: TDBEdit
    Left = 80
    Top = 6
    Width = 121
    Height = 21
    DataField = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077
    DataSource = Form15.ds1
    TabOrder = 0
  end
  object dbedt2: TDBEdit
    Left = 80
    Top = 30
    Width = 121
    Height = 21
    DataField = #1056#1077#1081#1089
    DataSource = Form15.ds1
    TabOrder = 1
  end
  object dbedt3: TDBEdit
    Left = 80
    Top = 54
    Width = 121
    Height = 21
    DataField = #1054#1090#1087#1088#1072#1074#1083#1077#1085#1080#1077
    DataSource = Form15.ds1
    TabOrder = 2
  end
  object dbedt4: TDBEdit
    Left = 80
    Top = 78
    Width = 121
    Height = 21
    DataField = #1055#1088#1080#1073#1099#1090#1080#1077
    DataSource = Form15.ds1
    TabOrder = 3
  end
  object dbedt5: TDBEdit
    Left = 80
    Top = 102
    Width = 121
    Height = 21
    DataField = #1042' '#1087#1091#1090#1080
    DataSource = Form15.ds1
    TabOrder = 4
  end
  object btn2: TButton
    Left = 230
    Top = 126
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 5
    OnClick = btn2Click
  end
  object dbedt6: TDBEdit
    Left = 81
    Top = 126
    Width = 121
    Height = 21
    DataField = #1043#1088#1072#1092#1080#1082
    DataSource = Form15.ds1
    TabOrder = 6
  end
  object xpmnfst1: TXPManifest
    Left = 264
    Top = 16
  end
end
