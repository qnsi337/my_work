unit datamodule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery1DSDesigner: TAutoIncField;
    ADOQuery1DSDesigner2: TWideStringField;
    ADOQuery1DSDesigner3: TWideStringField;
    ADOQuery1DSDesigner4: TDateTimeField;
    ADOQuery1DSDesigner5: TWideStringField;
    ADOQuery1DSDesigner6: TDateTimeField;
    ADOQuery1DSDesigner7: TBCDField;
    ADOQuery1DSDesigner8: TIntegerField;
    connect_tickets: TADOConnection;
    query_ticket: TADOQuery;
    Data_tickets: TDataSource;
    query_ticketDSDesigner2: TWideStringField;
    query_ticketDSDesigner3: TWideStringField;
    query_ticketDSDesigner4: TWideStringField;
    query_ticketDSDesigner5: TWideStringField;
    query_ticketDSDesigner6: TDateTimeField;
    query_ticketDSDesigner7: TWideStringField;
    query_ticketDSDesigner8: TDateTimeField;
    query_ticketDSDesigner9: TIntegerField;
    query_ticketDSDesigner10: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

uses
  main, rezerv, renameticket, buyticket;

{$R *.dfm}

procedure TDataModule2.DataModuleCreate(Sender: TObject);
begin
DataModule2.ADOConnection1.Connected:=True;
DataModule2.DataSource1.Enabled:=True;

end;

end.
