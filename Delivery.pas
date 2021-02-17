unit Delivery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Grids,
  Vcl.DBGrids, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TForm1 = class(TForm)
    container: TPanel;
    header: TPanel;
    footer: TPanel;
    btnlancar: TSpeedButton;
    btnFinalizar: TSpeedButton;
    MainMenu: TMainMenu;
    PRODUTO1: TMenuItem;
    CLIENTE1: TMenuItem;
    RELATORIO1: TMenuItem;
    CONFIGURAO1: TMenuItem;
    CADASTRARPRODUTO1: TMenuItem;
    CONSULTARPRODUTO1: TMenuItem;
    CADASTRARCLIENTE1: TMenuItem;
    CONSULTARCLIENTE1: TMenuItem;
    INTEGRAO1: TMenuItem;
    RELATORIODEPRODUTO1: TMenuItem;
    FATURAMENTO1: TMenuItem;
    DBGrid1: TDBGrid;
    body: TPanel;
    dsMainGrid: TDataSource;
    postgres: TZConnection;
    qry: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
