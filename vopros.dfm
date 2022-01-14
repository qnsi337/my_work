object Form5: TForm5
  Left = 652
  Top = 294
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1042#1086#1087#1088#1086#1089
  ClientHeight = 166
  ClientWidth = 315
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
    Left = 40
    Top = 40
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
  object BitBtn1: TBitBtn
    Left = 32
    Top = 104
    Width = 89
    Height = 33
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkYes
  end
  object BitBtn2: TBitBtn
    Left = 192
    Top = 104
    Width = 89
    Height = 33
    TabOrder = 1
    OnClick = BitBtn2Click
    Kind = bkNo
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 147
    Width = 315
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 440
    Top = 16
  end
end
