object Form2: TForm2
  Left = 48
  Top = 135
  Width = 905
  Height = 407
  AlphaBlend = True
  BiDiMode = bdLeftToRight
  BorderIcons = []
  Caption = #1056#1077#1079#1077#1088#1074#1080#1088#1086#1074#1072#1085#1080#1077' '#1073#1080#1083#1077#1090#1086#1074
  Color = clTeal
  Constraints.MaxHeight = 407
  Constraints.MaxWidth = 905
  Constraints.MinHeight = 407
  Constraints.MinWidth = 905
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  Visible = True
  OnCreate = FormCreate
  DesignSize = (
    889
    368)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 105
    Top = 57
    Width = 45
    Height = 13
    Caption = #1054#1090#1082#1091#1076#1072
  end
  object Label3: TLabel
    Left = 329
    Top = 55
    Width = 30
    Height = 13
    Caption = #1050#1091#1076#1072
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 88
    Width = 849
    Height = 176
    DataSource = DataModule2.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = #1054#1090#1082#1091#1076#1072
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1050#1091#1076#1072
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1086#1084#1077#1088' '#1072#1074#1090#1086#1073#1091#1089#1072
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1080#1083#1077#1090#1072
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1052#1077#1089#1090
        Width = 70
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 144
    Top = 8
    Width = 177
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1088#1077#1081#1089#1072
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 456
    Top = 8
    Width = 137
    Height = 25
    Caption = #1055#1088#1086#1076#1072#1078#1072' '#1073#1080#1083#1077#1090#1072
    TabOrder = 2
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 728
    Top = 8
    Width = 113
    Height = 25
    Caption = '&'#1053#1072#1079#1072#1076
    TabOrder = 3
    OnClick = BitBtn1Click
    Kind = bkClose
  end
  object Button3: TButton
    Left = 24
    Top = 8
    Width = 99
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1077#1081#1089
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 339
    Top = 8
    Width = 97
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1088#1077#1081#1089
    TabOrder = 5
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 161
    Top = 54
    Width = 144
    Height = 21
    Hint = #1042#1074#1077#1076#1080#1090#1077' '#1075#1086#1088#1086#1076' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 349
    Width = 889
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object Edit2: TEdit
    Left = 377
    Top = 54
    Width = 152
    Height = 21
    Hint = #1042#1074#1077#1076#1080#1090#1077' '#1075#1086#1088#1086#1076' '#1087#1088#1080#1073#1099#1090#1080#1103' '
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
  end
  object Button5: TButton
    Left = 24
    Top = 52
    Width = 75
    Height = 25
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 9
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 608
    Top = 8
    Width = 105
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072' '#1073#1080#1083#1077#1090#1072
    TabOrder = 10
    OnClick = Button6Click
  end
  object BitBtn2: TBitBtn
    Left = 575
    Top = 51
    Width = 169
    Height = 25
    Caption = '&'#1055#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1074#1089#1077' '#1088#1077#1081#1089#1099
    TabOrder = 11
    OnClick = BitBtn2Click
    Kind = bkRetry
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 840
    Top = 8
  end
end
