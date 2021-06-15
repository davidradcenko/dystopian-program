object Form15: TForm15
  Left = 475
  Top = 96
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1057#1086#1089#1090#1072#1074#1080#1090#1100' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077
  ClientHeight = 237
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dbnvgr1: TDBNavigator
    Left = 160
    Top = 208
    Width = 184
    Height = 25
    DataSource = ds1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 0
  end
  object btn2: TButton
    Left = 4
    Top = 210
    Width = 49
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 1
    OnClick = btn2Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 4
    Width = 473
    Height = 201
    DataSource = ds1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1056#1077#1081#1089
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1090#1087#1088#1072#1074#1083#1077#1085#1080#1077
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1088#1080#1073#1099#1090#1080#1077
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1042' '#1087#1091#1090#1080
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1043#1088#1072#1092#1080#1082
        Width = 83
        Visible = True
      end>
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 368
    Top = 216
  end
  object qry1: TADOQuery
    Connection = Form4.con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077' order by '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1077)
    Left = 336
    Top = 248
  end
  object mm1: TMainMenu
    Left = 104
    Top = 208
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = N3Click
    end
  end
  object xpmnfst1: TXPManifest
    Left = 416
    Top = 208
  end
end
