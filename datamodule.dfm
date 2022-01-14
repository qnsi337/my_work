object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 1308
  Top = 79
  Height = 202
  Width = 391
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=baza.' +
      'mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:S' +
      'ystem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database ' +
      'Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking M' +
      'ode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk ' +
      'Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Crea' +
      'te System Database=False;Jet OLEDB:Encrypt Database=False;Jet OL' +
      'EDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without' +
      ' Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 184
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *from main ORDER BY ['#1054#1090#1082#1091#1076#1072']')
    Left = 104
    Top = 32
    object ADOQuery1DSDesigner: TAutoIncField
      FieldName = #1053#1086#1084#1077#1088' '#1088#1077#1081#1089#1072
      ReadOnly = True
    end
    object ADOQuery1DSDesigner2: TWideStringField
      FieldName = #1054#1090#1082#1091#1076#1072
      Size = 255
    end
    object ADOQuery1DSDesigner3: TWideStringField
      FieldName = #1050#1091#1076#1072
      Size = 255
    end
    object ADOQuery1DSDesigner5: TWideStringField
      FieldName = #1053#1086#1084#1077#1088' '#1072#1074#1090#1086#1073#1091#1089#1072
      Size = 255
    end
    object ADOQuery1DSDesigner4: TDateTimeField
      FieldName = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
      DisplayFormat = 'hh:mm'
    end
    object ADOQuery1DSDesigner6: TDateTimeField
      FieldName = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080
      DisplayFormat = 'hh:mm'
    end
    object ADOQuery1DSDesigner7: TBCDField
      FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1080#1083#1077#1090#1072
      Precision = 19
    end
    object ADOQuery1DSDesigner8: TIntegerField
      FieldName = #1052#1077#1089#1090
    end
  end
  object connect_tickets: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=tickets.mdb;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 96
  end
  object query_ticket: TADOQuery
    Connection = connect_tickets
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *from tickets')
    Left = 112
    Top = 96
    object query_ticketDSDesigner2: TWideStringField
      FieldName = #1060#1048#1054
      Size = 130
    end
    object query_ticketDSDesigner3: TWideStringField
      FieldName = #1057#1077#1088#1080#1103' '#1087#1072#1089#1087#1086#1088#1090#1072
      Size = 150
    end
    object query_ticketDSDesigner4: TWideStringField
      FieldName = #1054#1090#1082#1091#1076#1072
      Size = 250
    end
    object query_ticketDSDesigner5: TWideStringField
      FieldName = #1050#1091#1076#1072
      Size = 255
    end
    object query_ticketDSDesigner6: TDateTimeField
      FieldName = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
      DisplayFormat = 'hh:mm'
    end
    object query_ticketDSDesigner7: TWideStringField
      FieldName = #1053#1086#1084#1077#1088' '#1072#1074#1090#1086#1073#1091#1089#1072
      Size = 255
    end
    object query_ticketDSDesigner8: TDateTimeField
      FieldName = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080
      DisplayFormat = 'hh:mm'
    end
    object query_ticketDSDesigner9: TIntegerField
      FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1080#1083#1077#1090#1072
    end
    object query_ticketDSDesigner10: TIntegerField
      FieldName = #1052#1077#1089#1090
    end
  end
  object Data_tickets: TDataSource
    DataSet = query_ticket
    Left = 192
    Top = 96
  end
end
