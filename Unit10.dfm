object Form10: TForm10
  Left = 419
  Top = 229
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1054#1089#1090#1072#1085#1086#1074#1072#1095#1085#1099#1077' '#1087#1091#1085#1082#1090#1099
  ClientHeight = 523
  ClientWidth = 692
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
    Left = 8
    Top = 496
    Width = 75
    Height = 25
    Caption = #1085#1072#1079#1072#1076
    TabOrder = 0
    OnClick = btn1Click
  end
  object DBGrid1: TDBGrid
    Left = -8
    Top = -8
    Width = 697
    Height = 497
    DataSource = ds2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Columns = <
      item
        Expanded = False
        FieldName = 'Ctanie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        Title.Alignment = taCenter
        Title.Caption = #1089#1090#1072#1085#1094#1080#1103
        Title.Color = clSkyBlue
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pribtie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        Title.Alignment = taCenter
        Title.Caption = #1087#1088#1080#1073#1099#1090#1080#1077
        Title.Color = clSkyBlue
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stonka'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        Title.Alignment = taCenter
        Title.Caption = #1089#1090#1086#1103#1085#1082#1072
        Title.Color = clSkyBlue
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'otpravlenie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        Title.Alignment = taCenter
        Title.Caption = #1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1077
        Title.Color = clSkyBlue
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 144
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v puti'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        Title.Alignment = taCenter
        Title.Caption = #1074' '#1087#1091#1090#1080
        Title.Color = clSkyBlue
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'punct'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        Title.Alignment = taCenter
        Title.Caption = #1087#1091#1085#1082#1090
        Title.Color = clSkyBlue
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 72
        Visible = True
      end>
  end
  object btn2: TBitBtn
    Left = 616
    Top = 496
    Width = 75
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1072#1090#1100
    TabOrder = 2
    OnClick = btn2Click
  end
  object qry2: TADOQuery
    Connection = Form4.con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1084#1086#1083#1086#1084#1080#1085'1 order by otpravlenie ')
    Left = 168
    Top = 488
  end
  object ds2: TDataSource
    DataSet = qry2
    Left = 192
    Top = 488
  end
  object xpmnfst1: TXPManifest
    Left = 336
    Top = 504
  end
end
