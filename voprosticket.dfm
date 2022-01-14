object Form7: TForm7
  Left = 1052
  Top = 206
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1073#1080#1083#1077#1090#1072
  ClientHeight = 479
  ClientWidth = 321
  Color = clAqua
  Constraints.MaxHeight = 518
  Constraints.MaxWidth = 337
  Constraints.MinHeight = 518
  Constraints.MinWidth = 337
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 328
    Width = 240
    Height = 48
    Caption = #1042#1099' '#1091#1074#1077#1088#1077#1085#1099'?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
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
  object Label3: TLabel
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
  object Label4: TLabel
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
  object Label6: TLabel
    Left = 8
    Top = 8
    Width = 28
    Height = 16
    Caption = #1060#1048#1054
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
    Width = 105
    Height = 16
    Caption = #1057#1077#1088#1080#1103' '#1087#1072#1089#1087#1086#1088#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 11
    Top = 271
    Width = 106
    Height = 16
    Caption = #1050#1086#1083'-'#1074#1086' '#1073#1080#1083#1077#1090#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 400
    Width = 89
    Height = 33
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 184
    Top = 400
    Width = 89
    Height = 33
    TabOrder = 1
    OnClick = BitBtn2Click
    Kind = bkNo
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 460
    Width = 321
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object DBEdit7: TDBEdit
    Left = 184
    Top = 236
    Width = 121
    Height = 24
    DataField = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1080#1083#1077#1090#1072
    DataSource = DataModule2.Data_tickets
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit9: TDBEdit
    Left = 184
    Top = 268
    Width = 121
    Height = 24
    DataField = #1052#1077#1089#1090
    DataSource = DataModule2.Data_tickets
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit1: TDBEdit
    Left = 184
    Top = 169
    Width = 121
    Height = 24
    DataField = #1053#1086#1084#1077#1088' '#1072#1074#1090#1086#1073#1091#1089#1072
    DataSource = DataModule2.Data_tickets
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 184
    Top = 204
    Width = 121
    Height = 24
    DataField = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080
    DataSource = DataModule2.Data_tickets
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
    Top = 100
    Width = 121
    Height = 24
    DataField = #1050#1091#1076#1072
    DataSource = DataModule2.Data_tickets
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
    Top = 132
    Width = 121
    Height = 24
    DataField = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
    DataSource = DataModule2.Data_tickets
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
    Top = 36
    Width = 121
    Height = 24
    DataField = #1057#1077#1088#1080#1103' '#1087#1072#1089#1087#1086#1088#1090#1072
    DataSource = DataModule2.Data_tickets
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
    Top = 68
    Width = 121
    Height = 24
    DataField = #1054#1090#1082#1091#1076#1072
    DataSource = DataModule2.Data_tickets
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DBEdit8: TDBEdit
    Left = 184
    Top = 4
    Width = 121
    Height = 24
    DataField = #1060#1048#1054
    DataSource = DataModule2.Data_tickets
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 520
    Width = 73
    Height = 25
    DataSource = DataModule2.DataSource1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 328
    Top = 32
  end
end
