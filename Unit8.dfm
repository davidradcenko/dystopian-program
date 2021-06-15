object Form8: TForm8
  Left = 456
  Top = 177
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1056#1077#1081#1089' '#1052#1086#1083#1086#1076#1077#1095#1085#1086'-'#1052#1080#1085#1089#1082' ; '#1056#1072#1089#1087#1080#1089#1072#1085#1080#1077' '#1069#1083#1077#1082#1090#1088#1080#1095#1077#1082
  ClientHeight = 548
  ClientWidth = 575
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
  object btn1: TButton
    Left = 0
    Top = 520
    Width = 75
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 0
    OnClick = btn1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 575
    Height = 513
    HelpType = htKeyword
    DataSource = ds1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
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
        Font.Pitch = fpFixed
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1077
        Title.Color = clYellow
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pribtie'
        Title.Alignment = taCenter
        Title.Caption = #1087#1088#1080#1073#1099#1090#1080#1077
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
        FieldName = 'V puti'
        Title.Alignment = taCenter
        Title.Caption = #1074' '#1087#1091#1090#1080
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
        FieldName = 'Grafik'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1075#1088#1072#1092#1080#1082
        Title.Color = clYellow
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'punct'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic, fsUnderline]
        Title.Alignment = taCenter
        Title.Caption = #1087#1091#1090#1082#1090#1099
        Title.Color = clYellow
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNone
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 79
        Visible = True
      end>
  end
  object btn2: TBitBtn
    Left = 512
    Top = 520
    Width = 65
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1072#1090#1100
    TabOrder = 2
    OnClick = btn2Click
  end
  object qry1: TADOQuery
    Connection = Form4.con1
    CursorType = ctStatic
    Filter = 'reic like %'#1084#1086#1083#1086#1076#1077#1095#1085#1086'-% and racpisanie like %'#1088#1072#1089'%'
    Filtered = True
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from '#1086#1073#1097#1072#1103' order by otpravlenie')
    Left = 624
    Top = 56
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 664
    Top = 48
  end
  object xpmnfst1: TXPManifest
    Left = 384
    Top = 520
  end
end
