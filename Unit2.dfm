object Form2: TForm2
  Left = 509
  Top = 322
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1086#1078#1072#1083#1091#1081#1089#1090#1072', '#1086#1079#1085#1072#1082#1086#1084#1100#1090#1077#1089#1100' '
  ClientHeight = 202
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btn2: TButton
    Left = 392
    Top = 176
    Width = 75
    Height = 25
    Caption = #1044#1072#1083#1077#1077
    TabOrder = 0
    OnClick = btn2Click
  end
  object redt1: TRichEdit
    Left = 0
    Top = 24
    Width = 465
    Height = 153
    Lines.Strings = (
      '')
    ReadOnly = True
    TabOrder = 1
  end
  object btn1: TButton
    Left = 0
    Top = 0
    Width = 105
    Height = 25
    Caption = #1054#1073#1097#1080#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn3: TButton
    Left = 112
    Top = 0
    Width = 193
    Height = 25
    Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086#1073' '#1080#1079#1084#1077#1085#1077#1085#1080#1080' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1103' '
    TabOrder = 3
    OnClick = btn3Click
  end
  object MainMenu1: TMainMenu
    Left = 472
    Top = 65528
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1074#1099#1093#1086#1076
      OnClick = N2Click
    end
  end
  object xpmnfst1: TXPManifest
    Left = 408
    Top = 65528
  end
end
