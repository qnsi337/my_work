unit rezerv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Button5: TButton;
    Button6: TButton;
    BitBtn2: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  datamodule, main, renameticket, buyticket, vopros, otmena, voprosticket;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Application.CreateForm(TForm3,Form3);
Form3.Show;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

Form2.DBGrid1.Columns[0].Width:=60;
Form2.DBGrid1.Columns[1].Width:=100;
Form2.DBGrid1.Columns[2].Width:=100;
Form2.DBGrid1.Columns[3].Width:=120;
Form2.DBGrid1.Columns[4].Width:=120;
Form2.DBGrid1.Columns[5].Width:=120;
Form2.DBGrid1.Columns[6].Width:=120;
Form2.DBGrid1.Width:=835;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form4.Button1.Enabled:=True;
Form4.Button2.Enabled:=False;
Form4.Show;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Application.CreateForm(TForm3,Form3);
Datamodule2.ADOQuery1.Append;
Form3.Show;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].text:=datetimetostr(now);
end;

procedure TForm2.Button5Click(Sender: TObject);
var help1,help2,help3,help4,z1,z2,z3,z4:string;
begin
help1:='%'+Form2.Edit1.Text+'%'    ;
help2:=QuotedStr(help1);
help3:='%'+Form2.Edit2.Text+'%'    ;
help4:=QuotedStr(help3);
if edit2.Text = '' then
begin
datamodule2.ADOQuery1.SQL.Clear;
datamodule2.ADOQuery1.SQL.Add('select * from main where [??????] like'+help2) ;
datamodule2.ADOQuery1.Active:=True;
end;
if edit1.Text = '' then
begin
datamodule2.ADOQuery1.SQL.Clear;
datamodule2.ADOQuery1.SQL.Add('select * from main where [????] like'+help4) ;
datamodule2.ADOQuery1.Active:=True;
end;
if (edit2.Text <> '') and(edit1.Text <> '') then
begin
z1:=Form2.Edit1.Text ;
z2:=QuotedStr(z1);
z3:=Form2.Edit2.Text ;
z4:=QuotedStr(z3);
datamodule2.ADOQuery1.SQL.Clear;
datamodule2.ADOQuery1.SQL.Add('select * from main where [??????] like'+z2+' and [????] like'+z4);
datamodule2.ADOQuery1.Active:=True;
end;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  datamodule2.query_ticket.SQL.Clear;
datamodule2.query_ticket.SQL.Add('select * from tickets ');
 Datamodule2.query_ticket.Active:=True;
Form6.Show;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
datamodule2.ADOQuery1.SQL.Clear;
datamodule2.ADOQuery1.SQL.Add('Select *from main ORDER BY [??????]');
datamodule2.ADOQuery1.Active:=True;
edit1.Clear;
edit2.clear;
Dbgrid1.Refresh;
end;

end.


