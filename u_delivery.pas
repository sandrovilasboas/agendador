unit u_delivery;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  System.Rtti, FMX.Grid.Style, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.ScrollBox, FMX.Grid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tf_delivery = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Grid1: TGrid;
    Rectangle7: TRectangle;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Rectangle8: TRectangle;
    Column1: TColumn;
    Column2: TColumn;
    Column3: TColumn;
    Column4: TColumn;
    Column5: TColumn;
    Column6: TColumn;
    Column7: TColumn;
    Column8: TColumn;
    Column9: TColumn;
    Column10: TColumn;
    FDConnection: TFDConnection;
    FDQuery: TFDQuery;
    FDQuerycliente: TWideMemoField;
    FDQueryendereco: TWideMemoField;
    FDQuerynumero: TWideMemoField;
    FDQuerybairro: TWideMemoField;
    FDQuerycidade: TWideMemoField;
    FDQueryvalor_pedido: TFMTBCDField;
    FDQueryvalor_taxa: TFMTBCDField;
    FDQueryvalor_total: TFMTBCDField;
    FDQueryid: TIntegerField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Grid1SetValue(Sender: TObject; const ACol, ARow: Integer;
      const Value: TValue);
    procedure Grid1GetValue(Sender: TObject; const ACol, ARow: Integer;
      var Value: TValue);
  private
  A: Array of TValue;
    { Private declarations }
  public
  constructor Create(AOwner: TComponent); override;
    { Public declarations }
  end;

var
  f_delivery: Tf_delivery;

implementation

{$R *.fmx}

constructor Tf_delivery.Create(AOwner: TComponent);
begin
  inherited;
  SetLength(A, Grid1.RowCount);
end;

procedure Tf_delivery.Grid1GetValue(Sender: TObject; const ACol, ARow: Integer;
  var Value: TValue);
begin
  if ARow = 0 then
  Value := A[ACol];

end;

procedure Tf_delivery.Grid1SetValue(Sender: TObject; const ACol, ARow: Integer;
  const Value: TValue);
begin
  if ARow = 0 then
  A[ACol] := Value;

end;

procedure Tf_delivery.SpeedButton1Click(Sender: TObject);
begin
  A[0] :=  FDQuerycliente.Value;
  A[1] :=  FDQueryendereco.Value;
  A[2] :=  FDQuerynumero.Value;
  A[3] :=  FDQuerybairro.Value;
  A[4] :=  FDQuerycidade.Value;
  A[5] := '19999451332' ;
//  A[6] :=  FDQueryvalor_pedido.Value;
//  A[7] :=  FDQueryvalor_taxa.Value;
//  A[8] :=  FDQueryvalor_total.Value;
//  A[9] :=  FDQueryid.Value;
end;

end.

