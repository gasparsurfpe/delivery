unit uPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, System.JSON,
  Vcl.Menus;

type
  TfrmPedidos = class(TForm)
    pnTopo: TPanel;
    gbExibir: TGroupBox;
    grdPedidos: TDBGrid;
    gbOrganizar: TGroupBox;
    rbEntrega: TRadioButton;
    rbRetirada: TRadioButton;
    cbEmPreparo: TCheckBox;
    cbPronto: TCheckBox;
    cbSaiuEntrega: TCheckBox;
    cbEntregue: TCheckBox;
    cbCancelado: TCheckBox;
    lbResult: TLabel;
    pnVer: TPanel;
    imgVer: TImage;
    lbVer: TLabel;
    pnNovo: TPanel;
    imgNovo: TImage;
    lbNovo: TLabel;
    btNovo: TBitBtn;
    btVer: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    gbFiltro: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    rb12h: TRadioButton;
    rb24h: TRadioButton;
    lbBuscaPedidos: TLabel;
    tmAutoBuscaPedido: TTimer;
    rbHoje: TRadioButton;
    Label13: TLabel;
    rbMesa: TRadioButton;
    Label14: TLabel;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    cbBairros: TComboBox;
    cbPagamento: TComboBox;
    cbAtendente: TComboBox;
    rbSaidaTodos: TRadioButton;
    Label16: TLabel;
    lbNumPedidos: TLabel;
    PopupMenu1: TPopupMenu;
    Mudarstatus1: TMenuItem;
    Pendente1: TMenuItem;
    Empreparo1: TMenuItem;
    Pronto1: TMenuItem;
    Saiuparaentrega1: TMenuItem;
    Entregue1: TMenuItem;
    Cancelado1: TMenuItem;
    Canceladopelocliente1: TMenuItem;
    Mudarstatusenotificar1: TMenuItem;
    Empreparo2: TMenuItem;
    Pronto2: TMenuItem;
    Saiuparaentrega2: TMenuItem;
    Entregue2: TMenuItem;
    Cancelado2: TMenuItem;
    procedure FormResize(Sender: TObject);
    procedure grdPedidosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbEmPreparoClick(Sender: TObject);
    procedure grdPedidosDblClick(Sender: TObject);
    procedure btVerClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure tmAutoBuscaPedidoTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure cbBairrosChange(Sender: TObject);
    procedure cbPagamentoChange(Sender: TObject);
    procedure cbAtendenteChange(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Pendente1Click(Sender: TObject);
    procedure Empreparo1Click(Sender: TObject);
    procedure Pronto1Click(Sender: TObject);
    procedure Saiuparaentrega1Click(Sender: TObject);
    procedure Entregue1Click(Sender: TObject);
    procedure Cancelado1Click(Sender: TObject);
    procedure Canceladopelocliente1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Empreparo2Click(Sender: TObject);
    procedure Pronto2Click(Sender: TObject);
    procedure Saiuparaentrega2Click(Sender: TObject);
    procedure Entregue2Click(Sender: TObject);
    procedure Cancelado2Click(Sender: TObject);
  private
    FNotificarStatus : Boolean;
    { Private declarations }
  public
    procedure ModificarStatusPedido(ID, Status, Fone: String);
    procedure FiltraBuscaPedidos;
    procedure ExistsDados;
    procedure NotExistsDados;
    function OrderSQLText:string;
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;

implementation

{$R *.dfm}

uses uTabelas, uCadastroPedido, uLoading, uPrincipal, uFunctions;

procedure TfrmPedidos.ModificarStatusPedido(ID, Status, Fone:String);
var
  sql, Json, MsgBot : string;
  QtdPedidos : Integer;
  ArrayDados : TJSONArray;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure begin
    try
      sql := 'UPDATE mt_order SET status = '+QuotedStr(Status)+' '+
             'WHERE id = '+ID;
      Tabelas.InjectSQL(sql);

      Json := Tabelas.InjectSQL(OrderSQLText);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio')  then begin
        ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
        while QtdPedidos < ArrayDados.Size do
          Inc(QtdPedidos);

        Tabelas.JsonToDataset(Tabelas.mt_order, ConvertJsonToValue(Json));
        Tabelas.mt_order.Locate('id',ID,[loPartialKey]);
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure begin
      Enabled := True;
      frmLoading.FClose := True;
      frmLoading.Close;

      lbNumPedidos.Caption := 'Pedidos: '+QtdPedidos.ToString;

      if (FNotificarStatus) and (frmPrincipal.FWhatsappConectado) then begin
        if Status = 'Em preparo' then
          MsgBot := frmPrincipal.FMsgStatusPreparo
        else if Status = 'Pronto' then
          MsgBot := frmPrincipal.FMsgStatusPronto
        else if Status = 'Saiu para entrega' then
          MsgBot := frmPrincipal.FMsgStatusSaiuEntrega
        else if Status = 'Entregue' then
          MsgBot := frmPrincipal.FMsgStatusEntregue
        else
          MsgBot := frmPrincipal.FMsgStatusCancelado;

        MsgBot := StringReplace(MsgBot,'[mensagem_operador]','',[rfReplaceAll]);

        frmPrincipal.TInject1.Send(ConvertNumberToWhatsapp(Fone,'@'),MsgBot);
      end;

      if Json = 'sql_erro' then
      begin
        NotExistsDados;
        ShowMessage('Ocorreu um erro na conexão');
      end else if Json = 'sql_vazio' then
        NotExistsDados
      else
        ExistsDados;
    end);
  end).Start;
end;

procedure TfrmPedidos.btNovoClick(Sender: TObject);
var
  sql, Json: string;
  ArrayDados : TJSONArray;
begin
  tmAutoBuscaPedido.Enabled := false;
  Enabled := false;
  frmLoading.Show;

  Application.CreateForm(TfrmCadastroPedido, frmCadastroPedido);

  TThread.CreateAnonymousThread(procedure begin
    try
      sql := 'SELECT DISTINCT '+
             'mt_client.id AS client_id, '+
             'mt_client_phone.id AS client_phone_id, '+
             'mt_client_address.id AS client_address_id '+
             'FROM mt_client, mt_client_phone, mt_client_address '+
             'WHERE mt_client.id = mt_client_address.client_id '+
             'AND mt_client.id = mt_client_phone.client_id '+
             'AND mt_client.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'AND mt_client.name LIKE ''Consumidor'' '+
             'AND mt_client_phone.phone LIKE ''S/T'' '+
             'AND mt_client_address.address LIKE ''S/L''';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
        frmCadastroPedido.FClientID := ArrayDados.Get(0).GetValue<integer>('client_id', 0);
        frmCadastroPedido.FClientAddressID := ArrayDados.Get(0).GetValue<integer>('client_address_id', 0);
        frmCadastroPedido.FClientPhoneID := ArrayDados.Get(0).GetValue<integer>('client_phone_id', 0);
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.mt_payment.First;
        frmCadastroPedido.FPaymentID := Tabelas.mt_payment.FieldByName('id').AsInteger;
        frmCadastroPedido.lbDescPagamento.Caption := Tabelas.mt_payment.FieldByName('name').AsString;

        frmCadastroPedido.FNomeCliente := 'Consumidor';
        frmCadastroPedido.FEndereco := 'S/L';
        frmCadastroPedido.FTelefone := 'S/T';
        frmCadastroPedido.FStatusPedidoInicial := 'Pendente';
        frmCadastroPedido.lbStatusPedido.Caption := 'Pendente';
        frmCadastroPedido.FMsgAdicional := '';
        frmCadastroPedido.FNotificar := false;

        frmCadastroPedido.FItem := 0;
        frmCadastroPedido.FQtdItens := 0;
        frmCadastroPedido.FSubTotal := 0;
        frmCadastroPedido.FDesconto:= 0;
        frmCadastroPedido.FAcrescimo:= 0;
        frmCadastroPedido.FValorTotal := 0;
        frmCadastroPedido.FValorPago := 0;
        frmCadastroPedido.FTroco := 0;

        frmCadastroPedido.mmObservacoes.Text := '';
        frmCadastroPedido.edtCliente.Text := 'Consumidor';
        frmCadastroPedido.edtTelefone.Text := '';
        Tabelas.mt_district.First;
        frmCadastroPedido.cbBairro.KeyValue := Tabelas.mt_district.FieldByName('id').AsInteger;
        frmCadastroPedido.mmEndereco.Lines.Text := '';
        frmCadastroPedido.lbClienteSelecionado.Caption := 'Consumidor';

        frmCadastroPedido.lbResultClient.Visible := false;
        frmCadastroPedido.pnInfoCliente.Visible := true;

        frmCadastroPedido.FModoEdit := false;
        frmCadastroPedido.ShowModal;
      end else
        ShowMessage('Erro inesperado!');

      frmCadastroPedido.Free;
    end);
  end).Start;
end;

procedure TfrmPedidos.btVerClick(Sender: TObject);
var
  sql, Json: string;
begin
  tmAutoBuscaPedido.Enabled := false;
  Enabled := false;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure begin
    try
      sql := 'SELECT * FROM mt_cart '+
             'WHERE order_id = '+Tabelas.mt_order.FieldByName('id').AsInteger.ToString+' '+
             'ORDER BY id ASC;';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_cart, ConvertJsonToValue(Json));

    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Application.CreateForm(TfrmCadastroPedido, frmCadastroPedido);

        //Prepera exibição do carrinho
        begin
          frmCadastroPedido.FItem := 0;
          frmCadastroPedido.FQtdItens := 0;
          frmCadastroPedido.FSubTotal := 0;

          Tabelas.Mt_cart.First;
          while not Tabelas.Mt_cart.Eof do
          begin
            frmCadastroPedido.FItem := frmCadastroPedido.FItem + 1;
            frmCadastroPedido.FQtdItens := frmCadastroPedido.FQtdItens + 1;
            frmCadastroPedido.FSubTotal := frmCadastroPedido.FSubTotal + Tabelas.Mt_cart.FieldByName('total').AsFloat;

            frmCadastroPedido.cdsCarrinho.Append;
            frmCadastroPedido.cdsCarrinho.FieldByName('id').AsInteger := Tabelas.Mt_cart.FieldByName('id').AsInteger;
            frmCadastroPedido.cdsCarrinho.FieldByName('item').AsInteger := frmCadastroPedido.FItem;
            frmCadastroPedido.cdsCarrinho.FieldByName('product_id').AsInteger:= Tabelas.Mt_cart.FieldByName('product_id').AsInteger;
            frmCadastroPedido.cdsCarrinho.FieldByName('product_name').AsString:= Tabelas.Mt_cart.FieldByName('descricao_produto').AsString;
            frmCadastroPedido.cdsCarrinho.FieldByName('qtd').AsFloat:= Tabelas.Mt_cart.FieldByName('qtd').AsFloat;
            frmCadastroPedido.cdsCarrinho.FieldByName('vlr_unit').AsFloat := Tabelas.Mt_cart.FieldByName('valor_unit').AsFloat;
            frmCadastroPedido.cdsCarrinho.FieldByName('total').AsFloat:= Tabelas.Mt_cart.FieldByName('total').AsFloat;
            frmCadastroPedido.cdsCarrinho.Post;

            frmCadastroPedido.lbQtdProdutos.Caption := FloatToStr(frmCadastroPedido.FQtdItens);
            frmCadastroPedido.lbSubTotal.Caption := FormatFloat('R$ #,0.00',frmCadastroPedido.FSubTotal);

            Tabelas.Mt_cart.Next;
          end;
        end;

        //Identifica o cliente e o tipo de saída
        begin
          frmCadastroPedido.FClientID := Tabelas.Mt_order.FieldByName('client_id').AsInteger;
          frmCadastroPedido.FClientAddressID := Tabelas.Mt_order.FieldByName('client_address_id').AsInteger;
          frmCadastroPedido.FClientPhoneID := Tabelas.Mt_order.FieldByName('client_phone_id').AsInteger;

          frmCadastroPedido.FNomeCliente := Tabelas.Mt_order.FieldByName('client_name').AsString;
          frmCadastroPedido.FEndereco :=  Tabelas.Mt_order.FieldByName('client_address').AsString;
          frmCadastroPedido.FBairroID :=  Tabelas.Mt_order.FieldByName('client_district_id').AsInteger;
          frmCadastroPedido.FTelefone :=  Tabelas.Mt_order.FieldByName('client_phone').AsString;

          frmCadastroPedido.mmObservacoes.Text := Tabelas.Mt_order.FieldByName('imp_obs').AsString;
          frmCadastroPedido.edtCliente.Text := Tabelas.Mt_order.FieldByName('imp_cliente').AsString;
          frmCadastroPedido.edtTelefone.Text := Tabelas.Mt_order.FieldByName('imp_telefone').AsString;
          Tabelas.mt_district.Locate('name',Tabelas.Mt_order.FieldByName('imp_bairro').AsString,[loPartialKey]);
          frmCadastroPedido.cbBairro.KeyValue := Tabelas.mt_district.FieldByName('id').AsInteger;
          frmCadastroPedido.mmEndereco.Lines.Text := Tabelas.Mt_order.FieldByName('imp_endereco').AsString;
          frmCadastroPedido.lbClienteSelecionado.Caption := Tabelas.Mt_order.FieldByName('client_name').AsString;

          frmCadastroPedido.lbResultClient.Visible := false;
          frmCadastroPedido.pnInfoCliente.Visible := true;

          if POS('ENTREGA',UpperCase(Tabelas.Mt_order.FieldByName('tipo_saida').AsString)) > 0 then
            frmCadastroPedido.rbEntrega.Checked := true
          else if POS('RETIRADA',UpperCase(Tabelas.Mt_order.FieldByName('tipo_saida').AsString)) > 0 then
            frmCadastroPedido.rbRetirada.Checked := true
          else begin
            frmCadastroPedido.rbMesa.Checked := true;
            frmCadastroPedido.cbMesa.ItemIndex := StrToInt(Tabelas.mt_order.FieldByName('imp_num_mesa').AsString)-1;
          end;
        end;

        //Define os dados do pagamento
        begin
          frmCadastroPedido.FPaymentID := Tabelas.Mt_order.FieldByName('payment_id').AsInteger;
          frmCadastroPedido.FDesconto := Tabelas.Mt_order.FieldByName('desconto').AsFloat;
          frmCadastroPedido.FAcrescimo := Tabelas.Mt_order.FieldByName('acrescimo').AsFloat;
          frmCadastroPedido.FTaxaEntrega := Tabelas.Mt_order.FieldByName('delivery_fee').AsFloat;
          frmCadastroPedido.FValorTotal := Tabelas.Mt_order.FieldByName('valor_total').AsFloat;
          frmCadastroPedido.FValorPago := Tabelas.Mt_order.FieldByName('pago').AsFloat;
          frmCadastroPedido.FTroco := Tabelas.Mt_order.FieldByName('troco').AsFloat;

          frmCadastroPedido.lbDesconto.Caption := 'R$ '+FormatFloat('#,0.00',frmCadastroPedido.FDesconto);
          frmCadastroPedido.lbAcrescimo.Caption := 'R$ '+FormatFloat('#,0.00',frmCadastroPedido.FAcrescimo);
          frmCadastroPedido.lbTaxaEntrega.Caption := 'R$ '+FormatFloat('#,0.00',frmCadastroPedido.FTaxaEntrega);
          frmCadastroPedido.lbValorTotal.Caption := 'R$ '+FormatFloat('#,0.00',frmCadastroPedido.FValorTotal);
          frmCadastroPedido.lbDescPagamento.Caption := Tabelas.Mt_order.FieldByName('payment_name').AsString;
          frmCadastroPedido.lbValorPago.Caption := 'R$ '+FormatFloat('#,0.00',frmCadastroPedido.FValorPago);
          frmCadastroPedido.lbTroco.Caption := 'R$ '+FormatFloat('#,0.00',frmCadastroPedido.FTroco);
        end;

        //Status do pedido
        begin
          frmCadastroPedido.FMsgAdicional := '';
          frmCadastroPedido.FStatusPedidoInicial := Tabelas.mt_order.FieldByName('status').AsString;
          frmCadastroPedido.lbStatusPedido.Caption := frmCadastroPedido.FStatusPedidoInicial;
          frmCadastroPedido.FNotificar := false;

          if frmCadastroPedido.lbStatusPedido.Caption = 'Pendente' then begin
            frmCadastroPedido.pnFaixaStatus.Color := clGray;
            frmCadastroPedido.lbStatusPedido.Font.Color := $003A3A3A;
          end else if frmCadastroPedido.lbStatusPedido.Caption = 'Em preparo' then begin
            frmCadastroPedido.pnFaixaStatus.Color := clYellow; //$001A85A8
            frmCadastroPedido.lbStatusPedido.Font.Color := $000B827E;
          end else if frmCadastroPedido.lbStatusPedido.Caption = 'Pronto' then begin
            frmCadastroPedido.pnFaixaStatus.Color := $0000C400;
            frmCadastroPedido.lbStatusPedido.Font.Color := $00005900;
          end else if frmCadastroPedido.lbStatusPedido.Caption = 'Saiu para entrega' then begin
            frmCadastroPedido.pnFaixaStatus.Color := $00FF8000;
            frmCadastroPedido.lbStatusPedido.Font.Color := $006A3500;
          end else if frmCadastroPedido.lbStatusPedido.Caption = 'Entregue' then begin
            frmCadastroPedido.pnFaixaStatus.Color := clGreen;
            frmCadastroPedido.lbStatusPedido.Font.Color := $00003700;
          end else if POS('Cancelado',frmCadastroPedido.lbStatusPedido.Caption) > 0  then begin
            frmCadastroPedido.pnFaixaStatus.Color := clRed;
            frmCadastroPedido.lbStatusPedido.Font.Color := $0000006C;
          end;
        end;

        frmCadastroPedido.lbTitulo.Caption := 'Pedido Nº '+Tabelas.Mt_order.FieldByName('id').AsInteger.ToString;

        frmCadastroPedido.FModoEdit := true;
        frmCadastroPedido.FCartModify := false;
        frmCadastroPedido.ShowModal;
        frmCadastroPedido.Free;
      end else
        ShowMessage('Ocorreu um erro');
    end);
  end).Start;
end;

procedure TfrmPedidos.Cancelado1Click(Sender: TObject);
begin
  FNotificarStatus := false;
  if Tabelas.mt_order.FieldByName('status').AsString <> 'Cancelado' then
    ModificarStatusPedido(Tabelas.mt_order.FieldByName('id').AsInteger.ToString,'Cancelado','');
end;

procedure TfrmPedidos.Cancelado2Click(Sender: TObject);
begin
  FNotificarStatus := true;
  if Tabelas.mt_order.FieldByName('status').AsString <> 'Cancelado' then
    ModificarStatusPedido(Tabelas.mt_order.FieldByName('id').AsInteger.ToString,'Cancelado',
              Tabelas.mt_order.FieldByName('imp_telefone').AsString);
end;

procedure TfrmPedidos.Canceladopelocliente1Click(Sender: TObject);
begin
  FNotificarStatus := false;
  if Tabelas.mt_order.FieldByName('status').AsString <> 'Cancelado pelo cliente' then
    ModificarStatusPedido(Tabelas.mt_order.FieldByName('id').AsInteger.ToString,'Cancelado pelo cliente','');
end;

procedure TfrmPedidos.cbAtendenteChange(Sender: TObject);
begin
  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.cbBairrosChange(Sender: TObject);
begin
  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.cbEmPreparoClick(Sender: TObject);
begin
  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.cbPagamentoChange(Sender: TObject);
begin
  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.Empreparo1Click(Sender: TObject);
begin
  FNotificarStatus := false;
  if Tabelas.mt_order.FieldByName('status').AsString <> 'Em preparo' then
    ModificarStatusPedido(Tabelas.mt_order.FieldByName('id').AsInteger.ToString,'Em preparo','');
end;

procedure TfrmPedidos.Empreparo2Click(Sender: TObject);
begin
  FNotificarStatus := true;
  if Tabelas.mt_order.FieldByName('status').AsString <> 'Em preparo' then
    ModificarStatusPedido(Tabelas.mt_order.FieldByName('id').AsInteger.ToString,'Em preparo',
              Tabelas.mt_order.FieldByName('imp_telefone').AsString);
end;

procedure TfrmPedidos.Entregue1Click(Sender: TObject);
begin
  FNotificarStatus := false;
  if Tabelas.mt_order.FieldByName('status').AsString <> 'Entregue' then
    ModificarStatusPedido(Tabelas.mt_order.FieldByName('id').AsInteger.ToString,'Entregue','');
end;

procedure TfrmPedidos.Entregue2Click(Sender: TObject);
begin
  FNotificarStatus := true;
  if Tabelas.mt_order.FieldByName('status').AsString <> 'Entregue' then
    ModificarStatusPedido(Tabelas.mt_order.FieldByName('id').AsInteger.ToString,'Entregue',
              Tabelas.mt_order.FieldByName('imp_telefone').AsString);
end;

procedure TfrmPedidos.ExistsDados;
begin
  lbResult.Visible := false;
  pnVer.Enabled := true;
  grdPedidos.Visible := true;
  lbNumPedidos.Visible := true;
end;

procedure TfrmPedidos.FiltraBuscaPedidos;
var
  Json, DataHora, OrderByPedido, ExibirPedido, DataHoje: string;
  QtdPedidos: Integer;
  ArrayDados : TJSONArray;
begin
  Enabled := False;
  frmLoading.Show;
  QtdPedidos := 0;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      Json := Tabelas.InjectSQL(OrderSQLText);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio')  then begin
        ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
        while QtdPedidos < ArrayDados.Size do
          Inc(QtdPedidos);

        Tabelas.JsonToDataset(Tabelas.mt_order, ConvertJsonToValue(Json));
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := True;
      frmLoading.FClose := True;
      frmLoading.Close;

      lbNumPedidos.Caption := 'Pedidos: '+QtdPedidos.ToString;

      if Json = 'sql_erro' then
      begin
        NotExistsDados;
        ShowMessage('Ocorreu um erro na conexão');
      end else if Json = 'sql_vazio' then
        NotExistsDados
      else
        ExistsDados;
    end);
  end).Start;
end;

procedure TfrmPedidos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    btNovo.Click
  else if (Key = VK_F3) and (pnVer.Enabled) then
    btVer.Click;
end;

procedure TfrmPedidos.FormResize(Sender: TObject);
begin
  lbResult.Left := Trunc(Width/2 - lbResult.Width/2);
  lbResult.Top := Trunc(Height/2 - 20);
  lbBuscaPedidos.Left := Width - lbBuscaPedidos.Width - 25;
  lbNumPedidos.Left := Width - lbNumPedidos.Width - 25;
  lbNumPedidos.Top := Height - lbNumPedidos.Height - 45;
end;

procedure TfrmPedidos.FormShow(Sender: TObject);
begin
  tmAutoBuscaPedido.Enabled := true;
end;

procedure TfrmPedidos.grdPedidosDblClick(Sender: TObject);
begin
  btVer.Click;
end;

procedure TfrmPedidos.grdPedidosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //alterando a cor do fundo da coluna ORDER_STATUS
  if DataCol=8 then
  begin
    if UpperCase(Tabelas.Mt_order.FieldByName('status').AsString) = 'PENDENTE' then
      TDBGrid(Sender).Canvas.Font.Color := clGray
    else if UpperCase(Tabelas.Mt_order.FieldByName('status').AsString) = 'EM PREPARO' then
      TDBGrid(Sender).Canvas.Font.Color := $001A85A8 //clYellow
    else if UpperCase(Tabelas.Mt_order.FieldByName('status').AsString) = 'PRONTO' then
      TDBGrid(Sender).Canvas.Font.Color := $0000C400
    else if UpperCase(Tabelas.Mt_order.FieldByName('status').AsString) = 'SAIU PARA ENTREGA' then
      TDBGrid(Sender).Canvas.Font.Color := $00FF8000
    else if UpperCase(Tabelas.Mt_order.FieldByName('status').AsString) = 'ENTREGUE' then
      TDBGrid(Sender).Canvas.Font.Color := clGreen
    else if POS('CANCELADO',UpperCase(Tabelas.Mt_order.FieldByName('status').AsString)) > 0  then
      TDBGrid(Sender).Canvas.Font.Color := clRed;
  end;

  //atualizando a visualização do DBGrid
  grdPedidos.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmPedidos.Label11Click(Sender: TObject);
begin
  rb12h.Checked := true;
  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.Label12Click(Sender: TObject);
begin
  rb24h.Checked := true;
  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.Label13Click(Sender: TObject);
begin
  rbHoje.Checked := true;
  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.Label14Click(Sender: TObject);
begin
  rbMesa.Checked := true;
  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.Label16Click(Sender: TObject);
begin
  rbSaidaTodos.Checked := true;
  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.Label3Click(Sender: TObject);
begin
  if cbEmPreparo.Checked then
    cbEmPreparo.Checked := false
  else
    cbEmPreparo.Checked := true;

  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.Label4Click(Sender: TObject);
begin
  if cbPronto.Checked then
    cbPronto.Checked := false
  else
    cbPronto.Checked := true;

  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.Label5Click(Sender: TObject);
begin
  if cbSaiuEntrega.Checked then
    cbSaiuEntrega.Checked := false
  else
    cbSaiuEntrega.Checked := true;

  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.Label6Click(Sender: TObject);
begin
  if cbEntregue.Checked then
    cbEntregue.Checked := false
  else
    cbEntregue.Checked := true;

  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.Label7Click(Sender: TObject);
begin
  if cbCancelado.Checked then
    cbCancelado.Checked := false
  else
    cbCancelado.Checked := true;

  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.Label8Click(Sender: TObject);
begin
  rbEntrega.Checked := true;
  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.Label9Click(Sender: TObject);
begin
  rbRetirada.Checked := true;
  FiltraBuscaPedidos;
end;

procedure TfrmPedidos.NotExistsDados;
begin
  pnVer.Enabled := false;
  grdPedidos.Visible := false;
  lbNumPedidos.Visible := false;
  lbResult.Visible := true;
end;

function TfrmPedidos.OrderSQLText: string;
var
  DataHora, DataHoje, sql : string;
begin
  DataHora := DateTimeToStr(Now());
  DataHora := Copy(DataHora,7,4)+'-'+Copy(DataHora,4,2)+'-'+Copy(DataHora,1,2)+' '+
              Copy(DataHora,12,8);
  DataHoje := Copy(DataHora,1,10);

  sql := 'SELECT DISTINCT '+
         '	      mt_order.id AS id, '+
         '        mt_client.id AS client_id, '+
         '        mt_client_address.id AS client_address_id, '+
         '        mt_client_phone.id AS client_phone_id, '+
         '        mt_client.id AS client_id, '+
         '        mt_client.name AS client_name, '+
         '        mt_client_address.address AS client_address, '+
         '        mt_client_address.district_id AS client_district_id, '+
         '        mt_client_phone.phone AS client_phone, '+
         '        mt_payment.id AS payment_id, '+
         '        mt_payment.name AS payment_name, '+
         '        mt_order.status AS status, '+
         '        mt_order.tipo_saida AS tipo_saida, '+
         '        mt_order.date_created AS date_created, '+
         '        mt_order.last_modified AS last_modified, '+
         '        mt_order.input_type AS input_type, '+
         '        mt_order.desconto AS desconto, '+
         '        mt_order.acrescimo AS acrescimo, '+
         '        mt_order.pago AS pago, '+
         '        mt_order.troco AS troco, '+
         '        mt_order.subtotal AS subtotal, '+
         '        mt_order.valor_total AS valor_total, '+
         '        mt_order.qty_items AS qty_items, '+
         '        mt_order.delivery_fee AS delivery_fee, '+
         '        mt_delivery_info.client_name AS imp_cliente, '+
         '        mt_delivery_info.address AS imp_endereco, '+
         '        mt_delivery_info.district_name AS imp_bairro, '+
         '        mt_delivery_info.obs AS imp_obs, '+
         '        mt_delivery_info.phone AS imp_telefone, '+
         '        mt_delivery_info.num_mesa AS imp_num_mesa '+
         'FROM	  mt_order, mt_client, mt_client_address, mt_client_phone, mt_payment, mt_merchant, mt_delivery_info '+
         'WHERE	  mt_order.merchant_id = mt_merchant.id '+
         'AND     mt_order.id = mt_delivery_info.order_id '+
         'AND	    mt_order.payment_id = mt_payment.id '+
         'AND		  mt_order.client_id = mt_client.id '+
         'AND		  mt_client.id = mt_client_address.client_id '+
         'AND		  mt_client.id = mt_client_phone.client_id '+
         'AND     mt_client_address.major LIKE ''s'' '+
         'AND     mt_client_phone.major LIKE ''s'' '+
         'AND     mt_merchant.id = '+FrmPrincipal.FMerchantID.ToString+' ';

  if cbBairros.Text <> 'Todos os bairros' then
    sql := sql + 'AND mt_delivery_info.district_name LIKE '+QuotedStr(cbBairros.Text)+' ';
  if cbPagamento.Text <> 'Todos os pagamentos' then
    sql := sql + 'AND mt_payment.name LIKE '+QuotedStr(cbPagamento.Text)+' ';
  if cbAtendente.Text <> 'Todos os atendentes' then
    sql := sql + 'AND mt_order.input_type LIKE '+QuotedStr(cbAtendente.Text)+' ';

  if rbEntrega.Checked then
    sql := sql + 'AND mt_order.tipo_saida LIKE ''Entrega'' '
  else if rbRetirada.Checked then
    sql := sql + 'AND mt_order.tipo_saida LIKE ''Retirada'' '
  else if rbMesa.Checked then
    sql := sql + 'AND mt_order.tipo_saida LIKE ''Mesa'' ';

  if rbHoje.Checked then
    sql := sql + 'AND mt_order.date_created LIKE '+QuotedStr(DataHoje+'%')+' '
  else if rb12h.Checked then
    sql := sql + 'AND mt_order.date_created >= DATE_SUB('+QuotedStr(DataHora)+', INTERVAL 12 HOUR) '
  else
    sql := sql + 'AND mt_order.date_created >= DATE_SUB('+QuotedStr(DataHora)+', INTERVAL 24 HOUR) ';

  sql := sql + 'AND (mt_order.status LIKE '+QuotedStr('%PENDENTE%');
  if cbEmPreparo.Checked then
    sql := sql + ' OR mt_order.status LIKE '+QuotedStr('%EM PREPARO%');
  if cbPronto.Checked then
    sql := sql + ' OR mt_order.status LIKE '+QuotedStr('%PRONTO%');
  if cbSaiuEntrega.Checked then
    sql := sql + ' OR mt_order.status LIKE '+QuotedStr('%SAIU PARA ENTREGA%');
  if cbEntregue.Checked then
    sql := sql + ' OR mt_order.status LIKE '+QuotedStr('%ENTREGUE%');
  if cbCancelado.Checked then
    sql := sql + ' OR mt_order.status LIKE '+QuotedStr('%CANCELADO%');

  sql := sql + ') ORDER BY mt_order.id DESC';

  Result := sql;
end;

procedure TfrmPedidos.Pendente1Click(Sender: TObject);
begin
  FNotificarStatus := false;
  if Tabelas.mt_order.FieldByName('status').AsString <> 'Pendente' then
    ModificarStatusPedido(Tabelas.mt_order.FieldByName('id').AsInteger.ToString,'Pendente','');
end;

procedure TfrmPedidos.Pronto1Click(Sender: TObject);
begin
  FNotificarStatus := false;
  if Tabelas.mt_order.FieldByName('status').AsString <> 'Pronto' then
    ModificarStatusPedido(Tabelas.mt_order.FieldByName('id').AsInteger.ToString,'Pronto','');
end;

procedure TfrmPedidos.Pronto2Click(Sender: TObject);
begin
  FNotificarStatus := true;
  if Tabelas.mt_order.FieldByName('status').AsString <> 'Pronto' then
    ModificarStatusPedido(Tabelas.mt_order.FieldByName('id').AsInteger.ToString,'Pronto',
              Tabelas.mt_order.FieldByName('imp_telefone').AsString);
end;

procedure TfrmPedidos.Saiuparaentrega1Click(Sender: TObject);
begin
  FNotificarStatus := false;
  if Tabelas.mt_order.FieldByName('status').AsString <> 'Saiu para entrega' then
    ModificarStatusPedido(Tabelas.mt_order.FieldByName('id').AsInteger.ToString,'Saiu para entrega','');
end;

procedure TfrmPedidos.Saiuparaentrega2Click(Sender: TObject);
begin
  FNotificarStatus := true;
  if Tabelas.mt_order.FieldByName('status').AsString <> 'Saiu para entrega' then
    ModificarStatusPedido(Tabelas.mt_order.FieldByName('id').AsInteger.ToString,'Saiu para entrega',
              Tabelas.mt_order.FieldByName('imp_telefone').AsString);
end;

procedure TfrmPedidos.tmAutoBuscaPedidoTimer(Sender: TObject);
var
  Json, sql : string;
  ArrayDados : TJSOnArray;
  QtdPedidos : Integer;
begin
  if lbBuscaPedidos.Tag = 1 then begin
    tmAutoBuscaPedido.Enabled := false;
    lbBuscaPedidos.Caption := 'Buscando...';
    lbBuscaPedidos.Tag := 15;
    QtdPedidos := 0;

    TThread.CreateAnonymousThread(procedure
    begin
      try
        Json := Tabelas.InjectSQL(OrderSQLText);
        if (Json <> 'sql_erro') and (Json <> 'sql_vazio')  then begin
          ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
          while QtdPedidos < ArrayDados.Size do
            Inc(QtdPedidos);

          Tabelas.JsonToDataset(Tabelas.mt_order, ConvertJsonToValue(Json));
        end;
      except
        Json := 'sql_erro';
      end;

      TThread.Synchronize(nil, procedure
      begin
        tmAutoBuscaPedido.Enabled := true;
        if QtdPedidos > 0 then begin
          lbNumPedidos.Caption := 'Pedidos: '+QtdPedidos.ToString;
          ExistsDados;
        end;
      end);
    end).Start;
  end else begin
    lbBuscaPedidos.Tag := lbBuscaPedidos.Tag - 1;
    lbBuscaPedidos.Caption := 'Nova busca em ' + lbBuscaPedidos.Tag.ToString;
  end;
end;

end.
