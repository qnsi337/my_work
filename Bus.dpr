program Bus;

uses
  Forms,
  main in 'main.pas' {Form1},
  datamodule in 'datamodule.pas' {DataModule2: TDataModule},
  rezerv in 'rezerv.pas' {Form2},
  renameticket in 'renameticket.pas' {Form3},
  buyticket in 'buyticket.pas' {Form4},
  vopros in 'vopros.pas' {Form5},
  otmena in 'otmena.pas' {Form6},
  voprosticket in 'voprosticket.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
