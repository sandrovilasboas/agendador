unit u_main_menu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Rtti, FMX.Grid.Style,
  FMX.ScrollBox, FMX.Grid, FMX.Calendar, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tf_main_menu = class(TForm)
    main_menu: TRectangle;
    main_buttons: TRectangle;
    main_container: TRectangle;
    main_style_top: TRectangle;
    btn_home: TRectangle;
    btn_relatorios: TRectangle;
    btn_sair: TRectangle;
    style: TRectangle;
    Circle5: TCircle;
    Circle1: TCircle;
    Circle2: TCircle;
    Circle3: TCircle;
    Circle4: TCircle;
    Circle6: TCircle;
    speedbtn_home: TSpeedButton;
    speedbtn_relatorios: TSpeedButton;
    speedbtn_sair: TSpeedButton;
    main_container_style2: TRectangle;
    main_container_style: TRectangle;
    main_container_body: TRectangle;
    calendar: TCalendar;
    grid: TGrid;
    btn_agendar: TRectangle;
    speedbtn_agendar: TSpeedButton;
    btn_desmarcar: TRectangle;
    speedbtn_desmarcar: TSpeedButton;
    btn_configuracao: TRectangle;
    speedbtn_configuracao: TSpeedButton;
    procedure btn_sairClick(Sender: TObject);
    procedure btn_agendarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_main_menu: Tf_main_menu;

implementation
uses
u_agendar;

{$R *.fmx}

procedure Tf_main_menu.btn_agendarClick(Sender: TObject);
var
agendar : Tf_agendar;
begin
    agendar := Tf_agendar.Create(Nil);
    agendar.Show;
end;

procedure Tf_main_menu.btn_sairClick(Sender: TObject);
begin
 Close;
end;

end.
