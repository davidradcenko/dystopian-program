object Form13: TForm13
  Left = 286
  Top = 58
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1056#1077#1081#1089' '#1052#1086#1083#1086#1076#1077#1095#1085#1086'-'#1052#1080#1085#1089#1082' ; '#1040#1074#1090#1086#1074#1086#1082#1079#1072#1083
  ClientHeight = 589
  ClientWidth = 1204
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 0
    Width = 561
    Height = 561
    DataSource = ds1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Otpravlenie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1054#1090#1087#1088#1072#1074#1083#1077#1085#1080#1077
        Title.Color = clYellow
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNone
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pribtie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1080#1073#1099#1090#1080#1077
        Title.Color = clYellow
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNone
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'V puti'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1042' '#1087#1091#1090#1080
        Title.Color = clYellow
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNone
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'punct'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1055#1091#1085#1082#1090#1099
        Title.Color = clYellow
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNone
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'grap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1043#1088#1072#1092#1080#1082
        Title.Color = clYellow
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNone
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 8
    Top = 560
    Width = 75
    Height = 25
    Caption = #1085#1072#1079#1072#1076
    TabOrder = 1
    OnClick = btn1Click
  end
  object DBGrid: TDBGrid
    Left = 568
    Top = 0
    Width = 633
    Height = 561
    DataSource = ds2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Otpravlenie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = #1054#1090#1087#1088#1072#1074#1083#1077#1085#1080#1077
        Title.Color = clYellow
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pribtie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = #1055#1088#1080#1073#1099#1090#1080#1077
        Title.Color = clYellow
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'V puti'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = #1042' '#1087#1091#1090#1080
        Title.Color = clYellow
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'punct'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = #1055#1091#1085#1082#1090#1099
        Title.Color = clYellow
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'grap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = #1043#1088#1072#1092#1080#1082
        Title.Color = clYellow
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 140
        Visible = True
      end>
  end
  object btn2: TBitBtn
    Left = 1128
    Top = 560
    Width = 75
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1072#1090#1100
    TabOrder = 3
    OnClick = btn2Click
  end
  object qry1: TADOQuery
    Connection = Form4.con1
    CursorType = ctStatic
    Filter = 
      'reic like %'#1052#1086#1083#1086#1076#1077#1095#1085#1086'-% and racpisanie like %'#1072#1074#1090#1086'% and  delenie l' +
      'ike %1%'
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'select * from '#1086#1073#1097#1072#1103' order by otpravlenie ')
    Left = 480
    Top = 568
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 512
    Top = 568
  end
  object qry2: TADOQuery
    Connection = Form4.con1
    CursorType = ctStatic
    Filter = 
      'reic like %'#1052#1086#1083#1086#1076#1077#1095#1085#1086'-% and racpisanie like %'#1072#1074#1090#1086'% and  delenie l' +
      'ike %2%'
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'select * from '#1086#1073#1097#1072#1103' order by otpravlenie ')
    Left = 592
    Top = 568
  end
  object ds2: TDataSource
    DataSet = qry2
    Left = 632
    Top = 568
  end
  object xpmnfst1: TXPManifest
    Left = 752
    Top = 576
  end
end
