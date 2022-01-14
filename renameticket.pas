unit renameticket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask,
  ComCtrls;

type
  TForm3 = class(TForm)
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Button1: TButton;
    StatusBar1: TStatusBar;
    Timer3: TTimer;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  datamodule, rezerv;

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
Form3.close;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
if Datamodule2.ADOQuery1.Modified  then    Datamodule2.ADOQuery1.Post;
end;

procedure TForm3.Timer3Timer(Sender: TObject);
begin
StatusBar1.Panels[0].text:=datetimetostr(now);
end;

end.
