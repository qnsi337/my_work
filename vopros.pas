unit vopros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask, DBCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    StatusBar1: TStatusBar;
  
    Timer2: TTimer;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  rezerv, datamodule;

{$R *.dfm}

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
Form5.Close;
end;

procedure TForm5.BitBtn1Click(Sender: TObject);
var i:integer;
begin
Datamodule2.ADOQuery1.Delete;
Form5.Close;
end;

procedure TForm5.Timer2Timer(Sender: TObject);
begin
 StatusBar1.Panels[0].text:=datetimetostr(now);
end;

end.
