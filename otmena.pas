unit otmena;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, ComCtrls;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    BitBtn1: TBitBtn;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  rezerv, buyticket, datamodule, voprosticket;

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
begin

DBGrid1.Columns[1].Width:=150;
DBGrid1.Columns[2].Width:=100;
DBGrid1.Columns[3].Width:=100;
DBGrid1.Columns[4].Width:=180;
DBGrid1.Columns[5].Width:=150;
DBGrid1.Columns[6].Width:=150;
DBGrid1.Columns[7].Width:=150;
DBGrid1.Columns[8].Width:=100;
DBGrid1.Width:=1305;
DBGrid1.Refresh;


end;

procedure TForm6.Edit1Change(Sender: TObject);
var help1,help2:string;
begin
help1:='%'+Edit1.Text+'%'    ;
help2:=QuotedStr(help1);
datamodule2.query_ticket.SQL.Clear;
datamodule2.query_ticket.SQL.Add('select * from tickets where [Серия паспорта] like'+help2) ;
datamodule2.query_ticket.Active:=True;
   end;

procedure TForm6.Button2Click(Sender: TObject);
begin
Form7.Show;
end;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
Form6.Close;
end;

procedure TForm6.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].text:=datetimetostr(now);
end;

end.
