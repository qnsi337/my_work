unit buyticket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, dbcgrids, Grids, DBGrids, Mask,ComObj, Buttons,
  ExtCtrls, ComCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Label10: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4; q:integer;

implementation

uses
  main, datamodule, rezerv, renameticket, otmena;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var s:integer;
begin
If (Edit1.Text = '') or (Edit2.text = '') or (Edit3.text = '')then
showmessage('Заполните данные!'  );
If (Edit1.Text <> '') and (Edit2.text <> '') and (Edit3.text <> '') then
begin
s := Form2.DBGrid1.DataSource.DataSet.Fields.Fields[7].AsVariant;
q:= strtoint(Edit1.Text);
if q>s then
showmessage('Свободных мест = '+inttostr(s));
if q<=s then
begin
Form2.DBGrid1.DataSource.DataSet.Edit;
Form2.DBGrid1.DataSource.DataSet.Fields.Fields[7].AsVariant:=inttostr(s-q);
Form2.DBGrid1.DataSource.DataSet.Post;
Datamodule2.query_ticket.Active:=false;
Datamodule2.query_ticket.SQL.Clear;
 Datamodule2.query_ticket.SQL.Text := 'INSERT INTO tickets ([ФИО],[Серия паспорта],[Откуда],[Куда],[Время отправления],[Номер автобуса],[Время в пути],[Стоимость билета],[Мест]) VALUES (:fio,:seria,:otkuda,:kuda,:otrpav,:nomer,:pyt,:price,:mest)';
Datamodule2.query_ticket.Parameters.ParamByName('fio').Value:=Edit2.Text;
Datamodule2.query_ticket.Parameters.ParamByName('seria').Value:=Edit3.Text;
Datamodule2.query_ticket.Parameters.ParamByName('otkuda').Value:=DBedit2.Text;
Datamodule2.query_ticket.Parameters.ParamByName('kuda').Value:=DBedit3.Text;
Datamodule2.query_ticket.Parameters.ParamByName('otrpav').Value:=DBedit4.Text;
Datamodule2.query_ticket.Parameters.ParamByName('nomer').Value:=DBedit5.Text;
Datamodule2.query_ticket.Parameters.ParamByName('pyt').Value:=DBedit6.Text;
Datamodule2.query_ticket.Parameters.ParamByName('price').Value:=strtoint(DBedit7.Text);
Datamodule2.query_ticket.Parameters.ParamByName('mest').Value:=strtoint(Edit1.Text);
Datamodule2.query_ticket.ExecSQL;
showmessage('Билет успешно куплен!'  );
Button1.Enabled:=false;
Button2.Enabled:=True;
showmessage('Вы можете получить чек!'  );
end;
 end;
 end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin

Form4.close;
end;

procedure TForm4.Button2Click(Sender: TObject);
var w:variant;z:integer;
begin
  randomize;
  z:=random(1000000000);
    W := CreateOleObject('Word.Basic');
 W.FileNew; 
  w.Insert('Чек #'+inttostr(z));
  w.Insert(#13);
  w.Insert('Кол-во билетов '+ inttostr(q)+#13);
  w.Insert('Пассажир '+Edit2.Text +' '+Edit3.text + #13);
  w.Insert('Направление: '+ DBedit2.Text +'-'+dbedit3.Text +#13);
 w.Insert('Время отправления ' + Dbedit4.text  + #13);
  w.Insert('Время в пути ' + Dbedit6.text + #13);
  w.Insert('Номер автобуса ' + dbedit5.text + #13);
  w.Insert('Цена '+ dbedit7.text + ' BYN' + #13);
  w.AppShow;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
begin

end;

end;



procedure TForm4.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].text:=datetimetostr(now);
end;

end.


