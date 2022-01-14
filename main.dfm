object Form1: TForm1
  Left = 746
  Top = 339
  Width = 440
  Height = 186
  BiDiMode = bdLeftToRight
  BorderIcons = []
  Caption = #1052#1077#1085#1102
  Color = clTeal
  Constraints.MaxHeight = 186
  Constraints.MaxWidth = 440
  Constraints.MinHeight = 186
  Constraints.MinWidth = 440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 104
    Width = 68
    Height = 16
    Caption = #1042#1072#1096' '#1090#1077#1082#1089#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 112
    Top = 64
    Width = 161
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = '&'#1042#1099#1093#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkClose
  end
  object Button1: TButton
    Left = 112
    Top = 32
    Width = 161
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = #1047#1072#1087#1091#1089#1082' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 128
    Width = 424
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 392
    Top = 8
  end
  object Timer2: TTimer
    Interval = 100
    OnTimer = Timer2Timer
    Left = 392
    Top = 64
  end
  object XPManifest1: TXPManifest
    Left = 56
    Top = 40
  end
end
