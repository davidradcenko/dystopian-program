object Form4: TForm4
  Left = 509
  Top = 436
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1054#1090#1082#1088#1099#1090#1100' '#1041#1044
  ClientHeight = 66
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 189
    Top = 0
    Width = 58
    Height = 16
    Caption = #1055#1091#1090#1100' '#1082' '#1041#1044
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TButton
    Left = 189
    Top = 40
    Width = 75
    Height = 25
    Caption = #1044#1072#1083#1077#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSkyBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn1Click
  end
  object edt1: TEdit
    Left = 93
    Top = 16
    Width = 249
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object dlgOpen1: TOpenDialog
    Filter = 'Racpicanie|*.mdb'
    Title = #1048#1084#1103' '#1092#1072#1081#1083#1072' Racpicanie.mdb'
    Left = 312
    Top = 40
  end
  object con1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 344
    Top = 40
  end
  object mm1: TMainMenu
    Left = 376
    Top = 40
    object N2: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1080' '#1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1055#1091#1090#1100
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077
      OnClick = N3Click
    end
    object cghfdrf1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = cghfdrf1Click
    end
    object N4: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N4Click
    end
  end
  object xpmnfst1: TXPManifest
    Left = 376
    Top = 8
  end
end
