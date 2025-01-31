unit u_main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Calendar, FMX.TabControl,
  System.Rtti, FMX.Grid.Style, FMX.Grid, FMX.ScrollBox, FMX.Memo,
  FMX.DateTimeCtrls, FMX.Edit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, Fmx.Bind.Grid, Data.Bind.Grid,
  FMX.ListBox;

type
  Tf_main = class(TForm)
    body: TRectangle;
    menu: TRectangle;
    Circle1: TCircle;
    style: TRectangle;
    Circle2: TCircle;
    Circle3: TCircle;
    Circle4: TCircle;
    Circle5: TCircle;
    Circle6: TCircle;
    menu2: TRectangle;
    option1: TRectangle;
    btninicio: TSpeedButton;
    btnsair: TSpeedButton;
    option5: TRectangle;
    btnconfiguracao: TSpeedButton;
    option4: TRectangle;
    btnrelatorio: TSpeedButton;
    option3: TRectangle;
    btnfinanceiro: TSpeedButton;
    option2: TRectangle;
    btnagendamento: TSpeedButton;
    option6: TRectangle;
    tabs: TRectangle;
    TabControl: TTabControl;
    background: TRectangle;
    TabItem1: TTabItem;
    Calendar1: TCalendar;
    backgroundgrid: TRectangle;
    background2: TRectangle;
    backgroundcalendar: TRectangle;
    TabItem2: TTabItem;
    backgroundagendamento: TRectangle;
    TabItem3: TTabItem;
    Rectangle10: TRectangle;
    TabItem4: TTabItem;
    Rectangle11: TRectangle;
    TabItem5: TTabItem;
    Rectangle12: TRectangle;
    TabItem6: TTabItem;
    Rectangle13: TRectangle;
    backgroundagendamento2: TRectangle;
    backgroundagendamento3: TRectangle;
    backgroundagendamento4: TRectangle;
    lbltitleagendamento: TLabel;
    backgroundagendamentonome: TRectangle;
    lblnome: TLabel;
    lbldocumento: TLabel;
    edtdocumento: TEdit;
    edtnome: TEdit;
    backgroundlblobservacao: TRectangle;
    lblobservacao: TLabel;
    backgroundlbldata: TRectangle;
    lbldata: TLabel;
    lbltelefone: TLabel;
    lblcelular: TLabel;
    dtdate: TDateEdit;
    edttelefone: TEdit;
    edtcelular: TEdit;
    memo: TMemo;
    backgroundagendamento8: TRectangle;
    Rectangle33: TRectangle;
    Rectangle34: TRectangle;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    tmtime: TTimeEdit;
    lblhorario: TLabel;
    style2: TRectangle;
    Rectangle37: TRectangle;
    container: TRectangle;
    backgroundcalendar2: TRectangle;
    backgroundgrid2: TRectangle;
    grid: TGrid;
    BindingsList1: TBindingsList;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Grid1: TGrid;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    btncancelarlancamento: TSpeedButton;
    btninserircontasapagar: TSpeedButton;
    btneditarlancamento: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Rectangle14: TRectangle;
    lbltotal: TLabel;
    total: TLabel;
    lbltitulofinanceiro: TLabel;
    Rectangle15: TRectangle;
    Button1: TButton;
    busca: TRectangle;
    Rectangle17: TRectangle;
    Label1: TLabel;
    Rectangle18: TRectangle;
    Rectangle19: TRectangle;
    edtbuscar: TEdit;
    Grid2: TGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Rectangle20: TRectangle;
    Rectangle21: TRectangle;
    SpeedButton1: TSpeedButton;
    Rectangle16: TRectangle;
    Rectangle22: TRectangle;
    Rectangle23: TRectangle;
    Rectangle24: TRectangle;
    Rectangle26: TRectangle;
    Rectangle27: TRectangle;
    Rectangle28: TRectangle;
    Rectangle29: TRectangle;
    Rectangle30: TRectangle;
    Rectangle31: TRectangle;
    Rectangle32: TRectangle;
    Rectangle35: TRectangle;
    Rectangle25: TRectangle;
    Rectangle36: TRectangle;
    Rectangle38: TRectangle;
    Rectangle39: TRectangle;
    Rectangle40: TRectangle;
    Rectangle41: TRectangle;
    Rectangle42: TRectangle;
    Rectangle43: TRectangle;
    Rectangle44: TRectangle;
    Label2: TLabel;
    finalizar: TRectangle;
    rectangle: TRectangle;
    Rectangle47: TRectangle;
    Rectangle48: TRectangle;
    Rectangle49: TRectangle;
    edtvalor1: TEdit;
    btnadd2: TSpeedButton;
    edtvalor2: TEdit;
    edtvalor3: TEdit;
    btnadd3: TSpeedButton;
    edtvalor4: TEdit;
    btnadd4: TSpeedButton;
    Rectangle50: TRectangle;
    Rectangle51: TRectangle;
    Rectangle52: TRectangle;
    btnfinalizargerar: TSpeedButton;
    btnfinalizarvoltar: TSpeedButton;
    btnfinalizardesmarcar: TSpeedButton;
    Label3: TLabel;
    Rectangle45: TRectangle;
    Label4: TLabel;
    edtvalor: TEdit;
    Button2: TButton;
    avaliacao: TCheckBox;
    Label5: TLabel;
    cbProduto: TComboBox;
    servico: TRectangle;
    Rectangle53: TRectangle;
    Label6: TLabel;
    edt_servico_descricao: TEdit;
    edt_servico_valor: TEdit;
    Rectangle54: TRectangle;
    SpeedButton2: TSpeedButton;
    Rectangle55: TRectangle;
    SpeedButton4: TSpeedButton;
    Rectangle56: TRectangle;
    Label7: TLabel;
    Label8: TLabel;
    BindSourceDB3: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    LinkListControlToField1: TLinkListControlToField;
    edtforma1: TComboBox;
    edtforma2: TComboBox;
    edtforma4: TComboBox;
    edtforma3: TComboBox;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Rectangle46: TRectangle;
    Button3: TButton;
    Rectangle57: TRectangle;
    Label9: TLabel;
    procedure option1Click(Sender: TObject);
    procedure option1MouseEnter(Sender: TObject);
    procedure option1MouseLeave(Sender: TObject);
    procedure option6MouseEnter(Sender: TObject);
    procedure option6MouseLeave(Sender: TObject);
    procedure option5MouseEnter(Sender: TObject);
    procedure option5MouseLeave(Sender: TObject);
    procedure option4MouseLeave(Sender: TObject);
    procedure option4MouseEnter(Sender: TObject);
    procedure option2MouseEnter(Sender: TObject);
    procedure option2MouseLeave(Sender: TObject);
    procedure option3MouseEnter(Sender: TObject);
    procedure option3MouseLeave(Sender: TObject);
    procedure option2Click(Sender: TObject);
    procedure option6Click(Sender: TObject);
    procedure Rectangle33Click(Sender: TObject);
    procedure Calendar1DayClick(Sender: TObject);
    procedure Rectangle34Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure option3Click(Sender: TObject);
    procedure gridCellDblClick(const Column: TColumn; const Row: Integer);
    procedure edtbuscarChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Rectangle21Click(Sender: TObject);
    procedure Grid2CellDblClick(const Column: TColumn; const Row: Integer);
    procedure btnadd4Click(Sender: TObject);
    procedure btnadd3Click(Sender: TObject);
    procedure btnadd2Click(Sender: TObject);
    procedure Rectangle52Click(Sender: TObject);
    procedure Rectangle51Click(Sender: TObject);
    procedure Rectangle50Click(Sender: TObject);
    procedure Calendar1DateSelected(Sender: TObject);
    procedure avaliacaoChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Rectangle54Click(Sender: TObject);
    procedure Rectangle55Click(Sender: TObject);
    procedure cbProdutoEnter(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
  a: Array of TValue;
    { Private declarations }
  public
  id : integer;
    { Public declarations }
  end;

var
  f_main: Tf_main;

implementation
uses udm_controller;

{$R *.fmx}

procedure Tf_main.Button1Click(Sender: TObject);
begin
  busca.Visible := True;
  DataModule1.querybusca.Close;
  DataModule1.querybusca.ParamByName('p').AsString := '%'+''+'%';
  DataModule1.querybusca.Open;
end;

procedure Tf_main.Button2Click(Sender: TObject);
begin
  Servico.Visible := True;
end;

procedure Tf_main.Button3Click(Sender: TObject);
var
total : Currency;
begin
  DataModule1.queryfinanceiro.Close;
  DataModule1.queryfinanceiro.ParamByName('p1').AsDate := DateEdit1.Date;
  DataModule1.queryfinanceiro.ParamByName('p2').AsDate := DateEdit2.Date;
  DataModule1.queryfinanceiro.Open;

  total := 0;
  while not DataModule1.queryfinanceiro.Eof do
  begin
    total := total + (DataModule1.queryfinanceirofinanceiro_valor.AsFloat);
    DataModule1.queryfinanceiro.Next;
  end;
  DataModule1.queryfinanceiro.First;

  lbltotal.text := FloatToStr(total);

end;

procedure Tf_main.Calendar1DateSelected(Sender: TObject);
begin
  DataModule1.queryagenda.Close;
  DataModule1.queryagenda.ParamByName('pdata').AsDate := Calendar1.Date;
  DataModule1.queryagenda.Open;
end;

procedure Tf_main.Calendar1DayClick(Sender: TObject);
begin
  DataModule1.queryagenda.Close;
  DataModule1.queryagenda.ParamByName('pdata').AsDate := Calendar1.Date;
  DataModule1.queryagenda.Open;
end;

procedure Tf_main.cbProdutoEnter(Sender: TObject);
begin
    DataModule1.queryservico.Open;
end;

procedure Tf_main.edtbuscarChange(Sender: TObject);
begin
  DataModule1.querybusca.Close;
  DataModule1.querybusca.ParamByName('p').AsString := '%'+edtbuscar.Text+'%';
  DataModule1.querybusca.Open;
end;

procedure Tf_main.FormShow(Sender: TObject);
begin
  DataModule1.queryagenda.Close;
  DataModule1.queryagenda.ParamByName('pdata').AsDate := Calendar1.Date;
  DataModule1.queryagenda.Open;
end;

procedure Tf_main.Grid2CellDblClick(const Column: TColumn; const Row: Integer);
begin
 edtnome.Text      := DataModule1.querybuscanome.AsString;
 edtdocumento.Text := DataModule1.querybuscadocumento.AsString;
 edtcelular.Text   := DataModule1.querybuscacelular.AsString;
 edttelefone.Text  := DataModule1.querybuscatelefone.AsString;

 Busca.Visible := False;
 edtbuscar.Text := '';
end;

procedure Tf_main.gridCellDblClick(const Column: TColumn; const Row: Integer);
begin
  id := DataModule1.queryagendaagenda_id.AsInteger;
  if DataModule1.queryagendapago.AsBoolean = True then
  begin
  ShowMessage('Financeiro j� gerado para esse agendamento');
  exit;
  end;

  finalizar.Visible := True;
  edtvalor1.Text := DataModule1.queryagendavalor.AsString;
end;

procedure Tf_main.option1Click(Sender: TObject);
begin
  TabControl.ActiveTab := TabItem1;
  DataModule1.queryagenda.Close;
  DataModule1.queryagenda.ParamByName('pdata').AsDate := Calendar1.Date;
  DataModule1.queryagenda.Open;
end;

procedure Tf_main.option1MouseEnter(Sender: TObject);
begin
  option1.Fill.Color := TAlphaColor($FF81F6F6);
end;

procedure Tf_main.option1MouseLeave(Sender: TObject);
begin
  option1.Fill.Color := TAlphaColor($FF0CCACA);
end;

procedure Tf_main.option6Click(Sender: TObject);
begin
 Close;
end;

procedure Tf_main.option6MouseEnter(Sender: TObject);
begin
  option6.Fill.Color := TAlphaColor($FFFF0000);
end;

procedure Tf_main.option6MouseLeave(Sender: TObject);
begin
  option6.Fill.Color := TAlphaColor($FFDC143C);
end;

procedure Tf_main.Rectangle21Click(Sender: TObject);
begin

  busca.Visible := False;
  edtbuscar.Text := '';
end;

procedure Tf_main.Rectangle33Click(Sender: TObject);
var
qry : TFDQuery;
id  : integer;
begin
  try
      qry := TFDQuery.Create(Nil);
      qry.connection := datamodule1.db;

      if Length(edtcelular.Text) <> 11 then
      begin
      ShowMessage('N�mero de celular invalido, informe somente numeros e preencha o DDD. Ex: 19123456789');
      Exit;
      end;

      if Length(edttelefone.Text) > 11 then
      begin
      ShowMessage('N�mero de celular invalido, informe somente numeros e preencha o DDD. Ex: 19123456789');
      Exit;
      end;

      qry.SQL.Text := 'select * from system_inserir_cliente(:p_nome, :p_celular, :p_telefone, :p_documento )';
      qry.ParamByName('p_nome').AsString         := edtnome.Text;
      qry.ParamByName('p_celular').AsString      := edtcelular.Text;
      qry.ParamByName('p_telefone').AsString     := edttelefone.Text;
      qry.ParamByName('p_documento').AsString    := edtdocumento.Text;
      qry.open;
      id                                         := qry.FieldByName('id').AsInteger;

      if id <> 0 then
      begin
      qry.SQL.Text := 'insert into agenda(agenda_cliente_id, agenda_cliente_nome, agenda_data, agenda_hora, agenda_observacao, agenda_servico_descricao, agenda_servico_valor )' +
                      'values(:p_cliente_id, :p_cliente_nome, :p_data, :p_hora, :p_observacao, :p_servico, :p_valor)';
      qry.ParamByName('p_cliente_id').AsInteger := id;
      qry.ParamByName('p_cliente_nome').AsString := edtnome.Text;
      qry.ParamByName('p_data').AsDate := dtdate.Date;
      qry.ParamByName('p_hora').AsTime := tmtime.Time;
      qry.ParamByName('p_observacao').AsWideMemo := memo.Text;
      qry.ParamByName('p_servico').AsString := DataModule1.queryservicoservico_descricao.AsString;
      qry.ParamByName('p_valor').AsFloat    := DataModule1.queryservicoservico_valor.AsFloat;
      qry.ExecSQL;
      end;

      edtnome.Text      := '';
      edtcelular.Text   := '';
      edttelefone.Text  := '';
      edtdocumento.Text := '';
      memo.Text         := '';

      DataModule1.queryservico.Close;

  finally
      freeandnil(qry);
  end;

end;

procedure Tf_main.Rectangle34Click(Sender: TObject);
begin
  TabControl.ActiveTab := TabItem1;
  DataModule1.queryagenda.Close;
  DataModule1.queryagenda.ParamByName('pdata').AsDate := Calendar1.Date;
  DataModule1.queryagenda.Open;
end;

procedure Tf_main.Rectangle50Click(Sender: TObject);
var
qry : TFDQuery;
cliente_id : integer;
cliente_nome : string;
agenda_observacao : string;
agenda_hora : TDateTime;
total : Float64;
begin
  try
    qry := TFDQuery.Create(Nil);
    qry.Connection := Datamodule1.db;

    cliente_id        := DataModule1.queryagendaagenda_cliente_id.AsInteger;
    cliente_nome      := DataModule1.queryagendanome.AsString;
    agenda_observacao := DataModule1.queryagendaobservacao.AsString;
    agenda_hora       := DataModule1.queryagendahora.AsDateTime;
    total := strToFloat(edtvalor1.Text + edtvalor2.Text + edtvalor3.Text + edtvalor4.Text);

    if total < DataModule1.queryagendavalor.AsFloat then
    begin
    ShowMessage('Valor do financeiro menor que o valor cadastrado.');
    exit;
    end;

    if (edtvalor1.Text <> '') then
    begin
    qry.SQL.Text := 'INSERT INTO financeiro(financeiro_cliente_id, financeiro_cliente_nome, financeiro_agenda_id, financeiro_agenda_data, financeiro_agenda_hora, financeiro_agenda_observacao, financeiro_formapagto, financeiro_valor)'+
                    'VALUES (:financeiro_cliente_id, :financeiro_cliente_nome, :financeiro_agenda_id, :financeiro_agenda_data, :financeiro_agenda_hora, :financeiro_agenda_observacao, :financeiro_formapagto, :financeiro_valor)';

    qry.ParamByName('financeiro_cliente_id').AsInteger := cliente_id;
    qry.ParamByName('financeiro_cliente_nome').AsString := cliente_nome;
    qry.ParamByName('financeiro_agenda_id').AsInteger := id;
    qry.ParamByName('financeiro_agenda_data').AsDateTime := Calendar1.Date;
    qry.ParamByName('financeiro_agenda_hora').AsDateTime := agenda_hora;
    qry.ParamByName('financeiro_agenda_observacao').AsString := agenda_observacao;
    qry.ParamByName('financeiro_formapagto').AsString := edtforma1.Selected.Text;
    qry.ParamByName('financeiro_valor').AsFloat := edtvalor1.Text.ToDouble;

    qry.ExecSQL;
    end
    else
    begin
      ShowMessage('Favor informar o valor');
      exit;
    end;

    if (edtvalor2.Text <> '') then
    begin
    qry.SQL.Text := 'INSERT INTO financeiro(financeiro_cliente_id, financeiro_cliente_nome, financeiro_agenda_id, financeiro_agenda_data, financeiro_agenda_hora, financeiro_agenda_observacao, financeiro_formapagto, financeiro_valor)'+
                    'VALUES (:financeiro_cliente_id, :financeiro_cliente_nome, :financeiro_agenda_id, :financeiro_agenda_data, :financeiro_agenda_hora, :financeiro_agenda_observacao, :financeiro_formapagto, :financeiro_valor)';

    qry.ParamByName('financeiro_cliente_id').AsInteger := cliente_id;
    qry.ParamByName('financeiro_cliente_nome').AsString := cliente_nome;
    qry.ParamByName('financeiro_agenda_id').AsInteger := id;
    qry.ParamByName('financeiro_agenda_data').AsDateTime := Calendar1.Date;
    qry.ParamByName('financeiro_agenda_hora').AsDateTime := agenda_hora;
    qry.ParamByName('financeiro_agenda_observacao').AsString := agenda_observacao;
    qry.ParamByName('financeiro_formapagto').AsString := edtforma2.Selected.Text;
    qry.ParamByName('financeiro_valor').AsFloat := edtvalor1.Text.ToDouble;

    qry.ExecSQL;
    end;

    if (edtvalor3.Text <> '') then
    begin
    qry.SQL.Text := 'INSERT INTO financeiro(financeiro_cliente_id, financeiro_cliente_nome, financeiro_agenda_id, financeiro_agenda_data, financeiro_agenda_hora, financeiro_agenda_observacao, financeiro_formapagto, financeiro_valor)'+
                    'VALUES (:financeiro_cliente_id, :financeiro_cliente_nome, :financeiro_agenda_id, :financeiro_agenda_data, :financeiro_agenda_hora, :financeiro_agenda_observacao, :financeiro_formapagto, :financeiro_valor)';

    qry.ParamByName('financeiro_cliente_id').AsInteger := cliente_id;
    qry.ParamByName('financeiro_cliente_nome').AsString := cliente_nome;
    qry.ParamByName('financeiro_agenda_id').AsInteger := id;
    qry.ParamByName('financeiro_agenda_data').AsDateTime := Calendar1.Date;
    qry.ParamByName('financeiro_agenda_hora').AsDateTime := agenda_hora;
    qry.ParamByName('financeiro_agenda_observacao').AsString := agenda_observacao;
    qry.ParamByName('financeiro_formapagto').AsString := edtforma3.Selected.Text;
    qry.ParamByName('financeiro_valor').AsFloat := edtvalor1.Text.ToDouble;

    qry.ExecSQL;
    end;

    if (edtvalor4.Text <> '') then
    begin
    qry.SQL.Text := 'INSERT INTO financeiro(financeiro_cliente_id, financeiro_cliente_nome, financeiro_agenda_id, financeiro_agenda_data, financeiro_agenda_hora, financeiro_agenda_observacao, financeiro_formapagto, financeiro_valor)'+
                    'VALUES (:financeiro_cliente_id, :financeiro_cliente_nome, :financeiro_agenda_id, :financeiro_agenda_data, :financeiro_agenda_hora, :financeiro_agenda_observacao, :financeiro_formapagto, :financeiro_valor)';

    qry.ParamByName('financeiro_cliente_id').AsInteger := cliente_id;
    qry.ParamByName('financeiro_cliente_nome').AsString := cliente_nome;
    qry.ParamByName('financeiro_agenda_id').AsInteger := id;
    qry.ParamByName('financeiro_agenda_data').AsDateTime := Calendar1.Date;
    qry.ParamByName('financeiro_agenda_hora').AsDateTime := agenda_hora;
    qry.ParamByName('financeiro_agenda_observacao').AsString := agenda_observacao;
    qry.ParamByName('financeiro_formapagto').AsString := edtforma4.Selected.Text;
    qry.ParamByName('financeiro_valor').AsFloat := edtvalor1.Text.ToDouble;

    qry.ExecSQL;
    end;

    qry.SQL.Text := 'UPDATE agenda SET agenda_pago = true WHERE agenda_id = :p';
    qry.ParamByName('p').AsInteger := id;
    qry.ExecSQL;

    DataModule1.queryagenda.Close;
    DataModule1.queryagenda.ParamByName('pdata').AsDate := Calendar1.Date;
    DataModule1.queryagenda.Open;

    finalizar.Visible := False;
    edtvalor2.Visible := False;
    edtvalor3.Visible := False;
    edtvalor4.Visible := False;
    btnadd3.Visible   := False;
    btnadd4.Visible   := False;
    edtforma2.Visible := False;
    edtforma3.Visible := False;
    edtforma4.Visible := False;

  finally
    FreeAndNil(qry);
  end;

end;

procedure Tf_main.Rectangle51Click(Sender: TObject);
begin
  finalizar.visible:= False;
  edtvalor2.Visible := False;
  edtvalor3.Visible := False;
  edtvalor4.Visible := False;
  btnadd3.Visible   := False;
  btnadd4.Visible   := False;
  edtforma2.Visible := False;
  edtforma3.Visible := False;
  edtforma4.Visible := False;
end;

procedure Tf_main.Rectangle52Click(Sender: TObject);
var
qry : TFDQuery;
begin
  try
    qry := TFDQuery.Create(Nil);
    qry.Connection := Datamodule1.db;

    qry.SQL.Text := 'UPDATE agenda '+
                    'SET agenda_ativo = false '+
                    'WHERE agenda_id = :p';
    qry.ParamByName('p').AsInteger := id;
    qry.ExecSQL;

    DataModule1.queryagenda.Close;
    DataModule1.queryagenda.ParamByName('pdata').AsDate := Calendar1.Date;
    DataModule1.queryagenda.Open;


    edtvalor2.Visible := False;
    edtvalor3.Visible := False;
    edtvalor4.Visible := False;
    btnadd3.Visible   := False;
    btnadd4.Visible   := False;
    edtforma2.Visible := False;
    edtforma3.Visible := False;
    edtforma4.Visible := False;

    finalizar.Visible := False;

  finally
    FreeAndNil(qry);
  end;

end;

procedure Tf_main.Rectangle54Click(Sender: TObject);
var
qry : TFDQuery;
begin
  try
    qry := TFDQuery.Create(Nil);
    qry.Connection := DataModule1.db;

    qry.SQL.Text   := 'INSERT INTO servico(servico_descricao, servico_valor) VALUES (:p1,:p2)';
    qry.ParamByName('p1').AsString   := edt_servico_descricao.Text;
    qry.ParamByName('p2').AsFloat    := StrToFloat(edt_servico_valor.Text);
    qry.ExecSQL;

    edt_servico_descricao.Text := '';
    edt_servico_valor.Text := '';

    datamodule1.queryservico.Close;
    datamodule1.queryservico.Open;

    servico.Visible := False;

  finally
    FreeAndNil(qry);
  end;
end;

procedure Tf_main.Rectangle55Click(Sender: TObject);
begin
  servico.Visible := False;
end;

procedure Tf_main.avaliacaoChange(Sender: TObject);
begin
  if avaliacao.IsChecked = true then
  begin
    edtvalor.Text := '0,00';
    edtvalor.Enabled := False;
  end
  else
  edtvalor.Enabled := True;

end;

procedure Tf_main.btnadd2Click(Sender: TObject);
begin
  btnadd3.Visible   := True;
  edtforma2.Visible := True;
  edtvalor2.Visible := True;
end;

procedure Tf_main.btnadd3Click(Sender: TObject);
begin
  btnadd4.Visible   := True;
  edtforma3.Visible := True;
  edtvalor3.Visible := True;
end;

procedure Tf_main.btnadd4Click(Sender: TObject);
begin
  edtvalor4.Visible := True;
  edtforma4.Visible := True;
end;

procedure Tf_main.option5MouseEnter(Sender: TObject);
begin
  option5.Fill.Color := TAlphaColor($FF81F6F6);
end;

procedure Tf_main.option5MouseLeave(Sender: TObject);
begin
  option5.Fill.Color := TAlphaColor($FF0CCACA);
end;

procedure Tf_main.option4MouseEnter(Sender: TObject);
begin
  option4.Fill.Color := TAlphaColor($FF81F6F6);
end;

procedure Tf_main.option4MouseLeave(Sender: TObject);
begin
  option4.Fill.Color := TAlphaColor($FF0CCACA)
end;

procedure Tf_main.option3Click(Sender: TObject);
begin
  TabControl.ActiveTab := TabItem3;
end;

procedure Tf_main.option3MouseEnter(Sender: TObject);
begin
  option3.Fill.Color := TAlphaColor($FF81F6F6);
end;

procedure Tf_main.option3MouseLeave(Sender: TObject);
begin
  option3.Fill.Color := TAlphaColor($FF0CCACA);
end;

procedure Tf_main.option2Click(Sender: TObject);
begin
  TabControl.ActiveTab := TabItem2;

  DataModule1.queryservico.Close;
  DataModule1.queryservico.Open;
end;

procedure Tf_main.option2MouseEnter(Sender: TObject);
begin
  option2.Fill.Color := TAlphaColor($FF81F6F6);
end;

procedure Tf_main.option2MouseLeave(Sender: TObject);
begin
  option2.Fill.Color := TAlphaColor($FF0CCACA)
end;

end.
