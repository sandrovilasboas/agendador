unit u_agendar;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Objects, FMX.DateTimeCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tf_agendar = class(TForm)
    backgroundagendamento2: TRectangle;
    backgroundagendamento3: TRectangle;
    lbltitleagendamento: TLabel;
    backgroundagendamento4: TRectangle;
    backgroundagendamentonome: TRectangle;
    lblnome: TLabel;
    lblcelular: TLabel;
    backgroundlblobservacao: TRectangle;
    lblobservacao: TLabel;
    backgroundlbldata: TRectangle;
    lbldata: TLabel;
    lblhorario: TLabel;
    btn_agendar: TRectangle;
    speedbtn_agendar: TSpeedButton;
    btn_cancelar: TRectangle;
    speedbtn_cancelar: TSpeedButton;
    edt_nome: TEdit;
    edt_celular: TEdit;
    edt_date: TDateEdit;
    edt_time: TTimeEdit;
    edt_servico: TEdit;
    Button1: TButton;
    edt_servico_valor: TEdit;
    Rectangle1: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_agendarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_agendar: Tf_agendar;

implementation
uses
udm_db;

{$R *.fmx}

procedure Tf_agendar.btn_agendarClick(Sender: TObject);
var
qry : TFDQuery;
begin
  try
    qry := TFDQuery.Create(Nil);
    qry.Connection := dm_db.db;

    if Length(edt_celular.Text) <> 11 then
    begin
        ShowMessage('Celular informado não é válido.');
    end;


    if (edt_nome.Text <> '') and (edt_celular.Text <> '') then
    begin
        qry.SQL.Text   := 'SELECT * FROM system_agendar(:p1, :p2, :p3, :p4, :p5, :p6)';

        qry.ParamByName('p1').AsString   := edt_nome.Text;
        qry.ParamByName('p2').AsString   := edt_celular.Text;
        qry.ParamByName('p3').AsDate     := edt_date.Date;
        qry.ParamByName('p4').AsDateTime := edt_time.Time;
        qry.ParamByName('p5').AsString   := edt_servico.Text;
        qry.ParamByName('p6').AsFloat    := edt_servico_valor.Text.ToDouble;

        qry.Open;
    end;

  finally
      FreeAndNil(qry);
  end;

end;

procedure Tf_agendar.btn_cancelarClick(Sender: TObject);
begin
  Close;
end;

end.
