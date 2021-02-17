program Consultor;

uses
  System.StartUpCopy,
  FMX.Forms,
  u_main in 'u_main.pas' {f_main},
  udm_controller in 'udm_controller.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tf_main, f_main);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
