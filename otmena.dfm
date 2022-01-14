object Form6: TForm6
  Left = 23
  Top = 130
  Width = 1374
  Height = 353
  BorderIcons = []
  Caption = #1054#1090#1084#1077#1085#1072' '#1073#1080#1083#1077#1090#1072
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 56
    Top = 13
    Width = 167
    Height = 16
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1089#1077#1088#1080#1080' '#1087#1072#1089#1087#1086#1088#1090#1072
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 1305
    Height = 241
    DataSource = DataModule2.Data_tickets
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = #1060#1048#1054
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1057#1077#1088#1080#1103' '#1087#1072#1089#1087#1086#1088#1090#1072
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1090#1082#1091#1076#1072
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1050#1091#1076#1072
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1086#1084#1077#1088' '#1072#1074#1090#1086#1073#1091#1089#1072
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1080#1083#1077#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1052#1077#1089#1090
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 240
    Top = 9
    Width = 241
    Height = 24
    Hint = #1042#1074#1077#1076#1080#1090#1077' '#1089#1077#1088#1080#1102' '#1087#1072#1089#1087#1086#1088#1090#1072
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Button2: TButton
    Left = 512
    Top = 8
    Width = 129
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1073#1080#1083#1077#1090
    TabOrder = 2
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 664
    Top = 8
    Width = 75
    Height = 25
    Caption = '&'#1053#1072#1079#1072#1076
    TabOrder = 3
    OnClick = BitBtn1Click
    Kind = bkClose
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 295
    Width = 1358
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 904
  end
end
