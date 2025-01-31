unit udm_controller;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    db: TFDConnection;
    queryagenda: TFDQuery;
    dsagenda: TDataSource;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    queryagendanome: TWideStringField;
    queryagendacelular: TWideStringField;
    queryagendahora: TTimeField;
    queryagendaobservacao: TWideMemoField;
    queryagendaagenda_id: TIntegerField;
    querybusca: TFDQuery;
    dsbusca: TDataSource;
    querybuscacliente: TIntegerField;
    querybuscanome: TWideStringField;
    querybuscacelular: TWideStringField;
    querybuscatelefone: TWideStringField;
    querybuscadocumento: TWideStringField;
    queryagendapago: TBooleanField;
    queryagendaagenda_cliente_id: TIntegerField;
    queryservico: TFDQuery;
    dsservico: TDataSource;
    queryservicoservico_id: TIntegerField;
    queryservicoservico_descricao: TWideStringField;
    queryservicoservico_valor: TBCDField;
    queryagendaservico: TWideStringField;
    queryagendavalor: TBCDField;
    queryfinanceiro: TFDQuery;
    dsfinanceiro: TDataSource;
    queryfinanceirofinanceiro_id: TIntegerField;
    queryfinanceirofinanceiro_cliente_id: TIntegerField;
    queryfinanceirofinanceiro_cliente_nome: TWideStringField;
    queryfinanceirofinanceiro_agenda_id: TIntegerField;
    queryfinanceirofinanceiro_agenda_data: TDateField;
    queryfinanceirofinanceiro_agenda_hora: TTimeField;
    queryfinanceirofinanceiro_agenda_observacao: TWideMemoField;
    queryfinanceirofinanceiro_formapagto: TWideStringField;
    queryfinanceirofinanceiro_valor: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
