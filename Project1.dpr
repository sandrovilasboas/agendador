program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  u_delivery in 'u_delivery.pas' {f_delivery};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tf_delivery, f_delivery);
  Application.Run;
end.
