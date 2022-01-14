unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, ComCtrls, StdCtrls, Buttons, XPMan;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Timer2: TTimer;
    Label1: TLabel;
    XPManifest1: TXPManifest;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  datamodule, rezerv, renameticket, buyticket;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Application.CreateForm(TForm2,Form2);
Form2.Show;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].text:=datetimetostr(now);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
if  Label1.Left < 250 then
begin
Label1.Left:=Label1.Left+5 ;
end
else
timer2.Enabled:=false;
end;
end.
