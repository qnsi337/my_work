object Form4: TForm4
  Left = 425
  Top = 219
  Width = 484
  Height = 463
  Caption = #1055#1086#1082#1091#1087#1082#1072' '#1073#1080#1083#1077#1090#1072
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 76
    Width = 54
    Height = 16
    Caption = #1054#1090#1082#1091#1076#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 108
    Width = 38
    Height = 16
    Caption = #1050#1091#1076#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 140
    Width = 133
    Height = 16
    Caption = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 297
    Width = 134
    Height = 16
    Caption = #1057#1074#1086#1073#1086#1076#1085#1099#1093' '#1073#1080#1083#1077#1090#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 268
    Width = 165
    Height = 16
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083'-'#1074#1086' '#1073#1080#1083#1077#1090#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 8
    Width = 87
    Height = 16
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1060#1048#1054
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 172
    Width = 109
    Height = 16
    Caption = #1053#1086#1084#1077#1088' '#1072#1074#1090#1086#1073#1091#1089#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 204
    Width = 88
    Height = 16
    Caption = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 236
    Width = 120
    Height = 16
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1080#1083#1077#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 8
    Top = 43
    Width = 167
    Height = 16
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1077#1088#1080#1102' '#1087#1072#1089#1087#1086#1088#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 8
    Top = 336
    Width = 161
    Height = 25
    Caption = #1050#1091#1087#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 184
    Top = 295
    Width = 121
    Height = 24
    DataField = #1052#1077#1089#1090
    DataSource = DataModule2.DataSource1
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 184
    Top = 263
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 320
    Top = 336
    Width = 89
    Height = 25
    Caption = '&'#1053#1072#1079#1072#1076
    TabOrder = 3
    OnClick = BitBtn1Click
    Kind = bkClose
  end
  object Edit2: TEdit
    Left = 184
    Top = 8
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Button2: TButton
    Left = 192
    Top = 336
    Width = 105
    Height = 25
    Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1095#1077#1082
    TabOrder = 5
    OnClick = Button2Click
  end
  object DBEdit2: TDBEdit
    Left = 184
    Top = 76
    Width = 121
    Height = 24
    DataField = #1054#1090#1082#1091#1076#1072
    DataSource = DataModule2.DataSource1
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 184
    Top = 108
    Width = 121
    Height = 24
    DataField = #1050#1091#1076#1072
    DataSource = DataModule2.DataSource1
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object DBEdit4: TDBEdit
    Left = 184
    Top = 140
    Width = 121
    Height = 24
    DataField = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
    DataSource = DataModule2.DataSource1
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit5: TDBEdit
    Left = 184
    Top = 172
    Width = 121
    Height = 24
    DataField = #1053#1086#1084#1077#1088' '#1072#1074#1090#1086#1073#1091#1089#1072
    DataSource = DataModule2.DataSource1
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit6: TDBEdit
    Left = 184
    Top = 204
    Width = 121
    Height = 24
    DataField = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080
    DataSource = DataModule2.DataSource1
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DBEdit7: TDBEdit
    Left = 184
    Top = 236
    Width = 121
    Height = 24
    DataField = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1080#1083#1077#1090#1072
    DataSource = DataModule2.DataSource1
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 405
    Width = 468
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object Edit3: TEdit
    Left = 184
    Top = 43
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 400
    Top = 200
  end
end
