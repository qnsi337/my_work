unit voprosticket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask, DBCtrls, Grids,
  DBGrids;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses
  datamodule;

{$R *.dfm}

procedure TForm7.BitBtn1Click(Sender: TObject);
var q:integer;s,z,z1,z2,z3,z4,z5,z6:string;
begin
  z:= Dbedit9.Text;
  z1:=Dbedit6.Text ;
z2:=QuotedStr(z1);
z3:=DBedit3.Text ;
z4:=QuotedStr(z3);
z5:=DBedit1.Text ;
z6:=QuotedStr(z5);

 datamodule2.ADOQuery1.SQL.Clear;
datamodule2.ADOQuery1.SQL.Add('select * from main where [Откуда] like'+z2+' and [Куда] like'+z4+' and [Номер автобуса] like'+z6);
datamodule2.ADOQuery1.Active:=True;
s := DBGrid1.DataSource.DataSet.Fields.Fields[7].AsVariant;
q:=strtoint(s)+strtoint(z);
DBGrid1.DataSource.DataSet.Edit;
DBGrid1.DataSource.DataSet.Fields.Fields[7].AsVariant:=inttostr(q);
DBGrid1.DataSource.DataSet.Post;
datamodule2.ADOQuery1.SQL.Clear;
datamodule2.ADOQuery1.SQL.Add('select * from main ');
datamodule2.ADOQuery1.Active:=True;
Datamodule2.query_ticket.Delete;
Form7.Close;
end;

procedure TForm7.BitBtn2Click(Sender: TObject);
begin
Form7.Close;
end;

procedure TForm7.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].text:=datetimetostr(now);
end;

end.
