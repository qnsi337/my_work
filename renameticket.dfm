object Form3: TForm3
  Left = 722
  Top = 384
  Width = 350
  Height = 370
  BiDiMode = bdLeftToRight
  BorderIcons = []
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1088#1077#1081#1089#1086#1074
  Color = clAqua
  Constraints.MaxHeight = 370
  Constraints.MaxWidth = 350
  Constraints.MinHeight = 370
  Constraints.MinWidth = 350
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 24
    Width = 45
    Height = 13
    Caption = #1054#1090#1082#1091#1076#1072
  end
  object Label3: TLabel
    Left = 16
    Top = 48
    Width = 30
    Height = 13
    Caption = #1050#1091#1076#1072
  end
  object Label4: TLabel
    Left = 16
    Top = 80
    Width = 115
    Height = 13
    Caption = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
  end
  object Label5: TLabel
    Left = 16
    Top = 110
    Width = 95
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1072#1074#1090#1086#1073#1091#1089#1072
  end
  object Label6: TLabel
    Left = 16
    Top = 138
    Width = 76
    Height = 13
    Caption = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080
  end
  object Label7: TLabel
    Left = 16
    Top = 168
    Width = 106
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1080#1083#1077#1090#1072
  end
  object Label8: TLabel
    Left = 16
    Top = 200
    Width = 30
    Height = 13
    Caption = #1052#1077#1089#1090
  end
  object BitBtn1: TBitBtn
    Left = 144
    Top = 224
    Width = 75
    Height = 25
    Caption = '&'#1053#1072#1079#1072#1076
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkClose
  end
  object DBEdit2: TDBEdit
    Left = 144
    Top = 21
    Width = 121
    Height = 21
    Hint = #1042#1074#1077#1076#1080#1090#1077' '#1075#1086#1088#1086#1076' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
    DataField = #1054#1090#1082#1091#1076#1072
    DataSource = DataModule2.DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 144
    Top = 48
    Width = 121
    Height = 21
    Hint = #1042#1074#1077#1076#1080#1090#1077' '#1075#1086#1088#1086#1076' '#1087#1088#1080#1073#1099#1090#1080#1103
    DataField = #1050#1091#1076#1072
    DataSource = DataModule2.DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 144
    Top = 75
    Width = 121
    Height = 21
    Hint = 'hh:ss'
    DataField = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
    DataSource = DataModule2.DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 144
    Top = 105
    Width = 121
    Height = 21
    Hint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1072#1074#1090#1086#1073#1091#1089#1072
    DataField = #1053#1086#1084#1077#1088' '#1072#1074#1090#1086#1073#1091#1089#1072
    DataSource = DataModule2.DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 144
    Top = 131
    Width = 121
    Height = 21
    Hint = 'hh:ss'
    DataField = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080
    DataSource = DataModule2.DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 144
    Top = 163
    Width = 121
    Height = 21
    HelpType = htKeyword
    HelpKeyword = #1055#1088#1080#1084#1077#1088':10'
    DataField = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1080#1083#1077#1090#1072
    DataSource = DataModule2.DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 144
    Top = 192
    Width = 121
    Height = 21
    Hint = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083'-'#1074#1086' '#1084#1077#1089#1090
    DataField = #1052#1077#1089#1090
    DataSource = DataModule2.DataSource1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object Button1: TButton
    Left = 16
    Top = 224
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 8
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 312
    Width = 334
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object Timer1: TTimer
    Left = 840
    Top = 8
  end
  object Timer2: TTimer
    Left = 840
    Top = 8
  end
  object tmr1: TTimer
    Left = 840
    Top = 8
  end
  object Timer3: TTimer
    OnTimer = Timer3Timer
    Left = 296
    Top = 16
  end
end
