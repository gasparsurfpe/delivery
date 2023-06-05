unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  System.JSON, Data.DB, REST.Response.Adapter, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, uTInject.ConfigCEF, uTInject, uTInject.Constant, uTInject.JS,
  uInjectDecryptFile, uTInject.Console, uTInject.Diversos, uTInject.AdjustNumber,
  uTInject.Config, uTInject.Classes, Vcl.WinXCtrls;

type
  TfrmPrincipal = class(TForm)
    btClientes: TBitBtn;
    btProdutos: TBitBtn;
    btCategorias: TBitBtn;
    pnTopo: TPanel;
    btPedidos: TBitBtn;
    pnBtClientes: TPanel;
    img_cliente: TImage;
    Label4: TLabel;
    Image6: TImage;
    pnBtBairros: TPanel;
    imgBairros: TImage;
    lbBairros: TLabel;
    imgBackBairros: TImage;
    pnBtCategorias: TPanel;
    Image9: TImage;
    Label6: TLabel;
    Image4: TImage;
    pnBtProdutos: TPanel;
    Image10: TImage;
    Label7: TLabel;
    Image3: TImage;
    pnBtPainel: TPanel;
    Image1: TImage;
    Image11: TImage;
    Label8: TLabel;
    pnPagamentos: TPanel;
    imgBackPagamentos: TImage;
    imgPagamentos: TImage;
    lbPagamentos: TLabel;
    pnGeral: TPanel;
    imgBackGeral: TImage;
    imgGeral: TImage;
    lbGeral: TLabel;
    btBairros: TBitBtn;
    btPagamentos: TBitBtn;
    pnRelatorios: TPanel;
    imgBackRelatorios: TImage;
    imgRelatorios: TImage;
    lbRelatorios: TLabel;
    pnContas: TPanel;
    imgBackContas: TImage;
    imgContas: TImage;
    lbContas: TLabel;
    btContas: TBitBtn;
    btRelatorios: TBitBtn;
    imgLogo: TImage;
    pnPrincipal: TPanel;
    pnLogin: TPanel;
    Image2: TImage;
    Image5: TImage;
    pnEntrar: TPanel;
    imgEntrar: TImage;
    lbEntrar: TLabel;
    btEntrar: TBitBtn;
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    pnStatus: TPanel;
    Label2: TLabel;
    lbUser: TLabel;
    btGeral: TBitBtn;
    Label3: TLabel;
    lbStatusWhatsapp: TLabel;
    lbVersao: TLabel;
    edtMerchant: TEdit;
    Shape3: TShape;
    TInject1: TInject;
    btConectarWhatsapp: TBitBtn;
    lbStatusRegistro: TLabel;
    lbDataExpiracao: TLabel;
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
    procedure btCategoriasClick(Sender: TObject);
    procedure btPedidosClick(Sender: TObject);
    procedure btProdutosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btBairrosClick(Sender: TObject);
    procedure btPagamentosClick(Sender: TObject);
    procedure btContasClick(Sender: TObject);
    procedure btRelatoriosClick(Sender: TObject);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btEntrarClick(Sender: TObject);
    procedure btGeralClick(Sender: TObject);
    procedure edtMerchantKeyPress(Sender: TObject; var Key: Char);

    // ===== Bot ====================
    procedure AutoResposta(AChatID, AMessageBody, AMessageT : String);
    function ExecutaCategoria(AChatID, Mensagem: String): String;
    function ExecutaQuantidade(AChatID, Mensagem: String): String;
    function ExecutaProduto(AChatID, Mensagem: String): String;
    function ExecutaVisualizaCarrinho(AChatID, Mensagem: String): String;
    function ExecutaMenuPosCompra(AChatID, Mensagem: String): String;
    function ExecutaCadastroNomeCliente(AChatID, Mensagem: String): String;
    function ExecutaMenuTipoRetirada(AChatID, Mensagem: String): String;
    function ExecutaMenuConfirmaEndereco(AChatID, Mensagem: String): String;
    function ExecutaMenuBairro(AChatID, Mensagem: String): String;
    function ExecutaMenuCadastroEndereco(AChatID, Mensagem: String): String;
    function ExecutaMenuPagamento(AChatID, Mensagem: String): String;
    function ExecutaMenuConfirmaPedido(AChatID, Mensagem: String): String;
    function ExecutaMenuCadastraTroco(AChatID, Mensagem: String): String;
    function ExecutaMenuObservacao(AChatID, Mensagem: String): String;
    function ExecutaMenuInicial(AChatID, Mensagem: String): String;
    procedure btConectarWhatsappClick(Sender: TObject);
    procedure TInject1GetUnReadMessages(const Chats: TChatList);
    procedure TInject1IsConnected(Sender: TObject; Connected: Boolean);
    procedure TInject1Connected(Sender: TObject);
    procedure TInject1DisconnectedBrute(Sender: TObject);
    // ==============================
  private
    { Private declarations }
  public
    FMerchantID : Integer;
    FWhatsappConectado : Boolean;
    FMsgMenuInicial, FMensagemFinal, MsgMenuTipoRetirada: String;
    FMsgProdAdd, FMsgMenuPosCompra, FMsgDivisor, MsgMenuBairro, FMsgVoltar: String;
    FMsgSolicitaNomeCliente, FMsgConfirmaNomeCliente, MsgMenuConfirmaEndereco : String;
    MsgMenuCadastroEndereco, FMsgMenuPagamento, FMsgMenuConfirmaTroco: String;
    FMsgMenuCadastraTroco, FMsgMenuObservacao, FMsgMenuConfirmaPedido : String;
    FMsgMenuCategoria, FMsgMenuProduto, FMsgMenuQuantidade, FMsgApresentacao: String;
    FMsgPedidoConfirmado, FMsgPedidoCancelado, FCardapioDiario, FMsgFalarAtendente : String;
    FMsgFormaPagamento, FMsgStatusPreparo, FMsgStatusPronto, FMsgStatusEntregue: String;
    FMsgStatusSaiuEntrega, FMsgStatusCancelado, FCodigoRegistro: String;
    { Public declarations }
  protected
    FIniciando : Boolean;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Requisicao, uTabelas, uClientes, uLoading, uPedidos, uProdutos,
  uCategorias, uBairros, uPagamentos, uFunctions, uRelatorios, uMD5,
  uPermissaoAcesso, uGeral, uContas, uNotificacaoPedido, VCL.Onguard, VCL.ogutil,
  uValidacaoRegistro;

const
  EncryptionKey : TKey = ($E5, $8F, $84, $D6, $92, $C9, $A4, $D8,
                          $1A, $FC, $6F, $8D, $AB, $FC, $DF, $B4);

function GetBuildInfo(Prog: string): string;
var
 VerInfoSize: DWORD;
 VerInfo: Pointer;
 VerValueSize: DWORD;
 VerValue: PVSFixedFileInfo;
 Dummy: DWORD;
 V1, V2, V3, V4: Word;
begin
 try
   VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
   GetMem(VerInfo, VerInfoSize);
   GetFileVersionInfo(PChar(prog), 0, VerInfoSize, VerInfo);
   VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
   with (VerValue^) do
   begin
     V1 := dwFileVersionMS shr 16;
     V2 := dwFileVersionMS and $FFFF;
     V3 := dwFileVersionLS shr 16;
     V4 := dwFileVersionLS and $FFFF;
   end;
   FreeMem(VerInfo, VerInfoSize);
   Result := Format('%d.%d.%d.%d', [v1, v2, v3, v4]);
 except
   Result := 'erro';
 end;
end;

function VerificaRegistro(mID:integer):integer;
var
  Json, sql: string;
  Key : TKey;
  Code : TCode;
  Modifier : Longint;
  d : TDateTime;
  ArrayDados : TJSONArray;
begin
  {
  Legenda de código da função:
    -1 : erro
     0 : registro inválido
     1 : registro válido
     2 : registro expirado
     3 : erro de validação de datas
  }
  frmPrincipal.FCodigoRegistro := '';

  sql := 'SELECT * FROM mt_registry WHERE merchant_id = '+mID.ToString;
  Json := Tabelas.InjectSQL(sql);
  if Json = 'sql_erro' then
    Result := -1
  else if Json = 'sql_vazio' then begin
    Result := 0;

  end else begin
    ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
    frmPrincipal.FCodigoRegistro := ArrayDados.Get(0).GetValue<string>('origin_code', '');
    Key := EncryptionKey;
    Modifier := StringHashELF(ArrayDados.Get(0).GetValue<string>('origin_code', ''));
    ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
    HexToBuffer(ArrayDados.Get(0).GetValue<string>('release_code', ''), Code, SizeOf(Code));
    frmPrincipal.lbDataExpiracao.Caption := 'Válido até ' + datetostr(GetExpirationDate(Key,Code));
    if IsRegCodeValid(Key, Code) then begin
      if IsRegCodeExpired(Key, Code) then
        Result := 2
      else
        Result := 1
    end else
      Result := 0;
  end;
end;

procedure TfrmPrincipal.TInject1Connected(Sender: TObject);
begin
  FWhatsappConectado := True;
  lbStatusWhatsapp.Caption := 'Conectado';
end;

procedure TfrmPrincipal.TInject1DisconnectedBrute(Sender: TObject);
begin
  FWhatsappConectado := False;
  lbStatusWhatsapp.Caption := 'Desconectado';
end;

procedure TfrmPrincipal.TInject1GetUnReadMessages(const Chats: TChatList);
var
  AChat: TChatClass;
  AMessage: TMessagesClass;
begin
  for AChat in Chats.result do begin
    for AMessage in AChat.messages do begin
      if not AChat.isGroup then begin
        if not AMessage.sender.isMe then begin
          TInject1.ReadMessages(AChat.id);
          if Tabelas.mt_settings.FieldByName('bot_power').AsString = 's' then
            AutoResposta(AChat.id, AMessage.body, FloatToStr(AMessage.t));
        end;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.TInject1IsConnected(Sender: TObject;
  Connected: Boolean);
begin
  FWhatsappConectado := Connected;
end;

function ProcessLoadingMessageBot : Boolean;
var
  sql, Json : string;
  ArrayDados : TJSONArray;
begin
  try
    sql := 'SELECT * FROM mt_bot_message_default WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString;
    Json := Tabelas.InjectSQL(sql);
    ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

    frmPrincipal.FMsgApresentacao := ArrayDados.Get(0).GetValue<string>('msg_apresentacao', '');
    frmPrincipal.FMsgMenuInicial := ArrayDados.Get(0).GetValue<string>('msg_menu_inicial', '');
    frmPrincipal.FMensagemFinal := ArrayDados.Get(0).GetValue<string>('msg_final', '');
    frmPrincipal.FMsgProdAdd := ArrayDados.Get(0).GetValue<string>('msg_produto_add', '');
    frmPrincipal.FMsgMenuPosCompra := ArrayDados.Get(0).GetValue<string>('msg_menu_pos_compra', '');
    frmPrincipal.FMsgSolicitaNomeCliente := ArrayDados.Get(0).GetValue<string>('msg_solicita_nome_cliente', '');
    frmPrincipal.FMsgConfirmaNomeCliente := ArrayDados.Get(0).GetValue<string>('msg_confirma_nome_cliente', '');
    frmPrincipal.MsgMenuTipoRetirada := ArrayDados.Get(0).GetValue<string>('msg_menu_tipo_retirada', '');
    frmPrincipal.MsgMenuBairro := ArrayDados.Get(0).GetValue<string>('msg_menu_bairro', '');
    frmPrincipal.MsgMenuConfirmaEndereco := ArrayDados.Get(0).GetValue<string>('msg_menu_confirma_endereco', '');
    frmPrincipal.MsgMenuCadastroEndereco := ArrayDados.Get(0).GetValue<string>('msg_menu_cadastro_endereco', '');
    frmPrincipal.FMsgMenuPagamento := ArrayDados.Get(0).GetValue<string>('msg_menu_pagamento', '');
    frmPrincipal.FMsgMenuConfirmaTroco := ArrayDados.Get(0).GetValue<string>('msg_menu_confirma_troco', '');
    frmPrincipal.FMsgMenuCadastraTroco := ArrayDados.Get(0).GetValue<string>('msg_menu_cadastra_troco', '');
    frmPrincipal.FMsgMenuObservacao := ArrayDados.Get(0).GetValue<string>('msg_menu_observacao', '');
    frmPrincipal.FMsgMenuConfirmaPedido := ArrayDados.Get(0).GetValue<string>('msg_menu_confirma_pedido', '');
    frmPrincipal.FMsgMenuCategoria := ArrayDados.Get(0).GetValue<string>('msg_menu_categoria', '');
    frmPrincipal.FMsgMenuProduto := ArrayDados.Get(0).GetValue<string>('msg_menu_produto', '');
    frmPrincipal.FMsgMenuQuantidade := ArrayDados.Get(0).GetValue<string>('msg_menu_quantidade', '');
    frmPrincipal.FMsgPedidoConfirmado := ArrayDados.Get(0).GetValue<string>('msg_pedido_confirmado', '');
    frmPrincipal.FMsgPedidoCancelado := ArrayDados.Get(0).GetValue<string>('msg_pedido_cancelado', '');
    frmPrincipal.FMsgFalarAtendente := ArrayDados.Get(0).GetValue<string>('msg_falar_atendente', '');
    frmPrincipal.FCardapioDiario := ArrayDados.Get(0).GetValue<string>('cardapio_diario', '');
    frmPrincipal.FMsgFormaPagamento := ArrayDados.Get(0).GetValue<string>('msg_forma_pagamento', '');
    frmPrincipal.FMsgStatusPreparo := ArrayDados.Get(0).GetValue<string>('msg_status_em_preparo', '');
    frmPrincipal.FMsgStatusPronto := ArrayDados.Get(0).GetValue<string>('msg_status_pronto', '');
    frmPrincipal.FMsgStatusSaiuEntrega := ArrayDados.Get(0).GetValue<string>('msg_status_saiu_entrega', '');
    frmPrincipal.FMsgStatusEntregue := ArrayDados.Get(0).GetValue<string>('msg_status_entregue', '');
    frmPrincipal.FMsgStatusCancelado := ArrayDados.Get(0).GetValue<string>('msg_status_cancelado', '');
    //frmPrincipal.FMsgDivisor := '______________________________';
    frmPrincipal.FMsgDivisor := '==============================';
    frmPrincipal.FMsgVoltar := '*[V]* Voltar';

    Result := true;
  except
    Result := false;
  end;
end;

procedure TFrmPrincipal.AutoResposta(AChatID, AMessageBody, AMessageT: String);
var
  EstadoAtual, NovoEstado, MsgBot: String;
  Json, sql, DataHora: String;
  OrderID : integer;
  ArrayBot, ArrayDados : TJSONArray;
begin
  try
    DataHora := Copy(DateToStr(Date()),7,4)+'-'+
                Copy(DateToStr(Date()),4,2)+'-'+
                Copy(DateToStr(Date()),1,2)+' '+
                TimeToStr(Time());

    sql := 'SELECT * FROM mt_bot_interaction '+
           'WHERE number_whatsapp = '+QuotedStr(AChatID)+' '+
           'AND merchant_id = '+FMerchantID.ToString;
    Json := Tabelas.InjectSQL(sql);

    if Json = 'sql_vazio' then
      EstadoAtual := ''
    else
    begin
      ArrayBot := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      EstadoAtual := ArrayBot.Get(0).GetValue<string>('stage', '');
      if AMessageT = ArrayBot.Get(0).GetValue<string>('message_id', '')  then
        Exit;
    end;

    if (EstadoAtual = '') or (EstadoAtual = 'neutro') then begin
      MsgBot := FMsgApresentacao;

      sql := 'SELECT mt_client.name AS client_name '+
             'FROM mt_client, mt_client_phone '+
             'WHERE mt_client.id = mt_client_phone.client_id '+
             'AND mt_client_phone.phone LIKE '+QuotedStr(ConvertWhatsappToNumber(AChatID))+' '+
             'AND mt_client.merchant_id = '+FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
      if Json <> 'sql_vazio' then begin
        ArrayBot := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
        MsgBot := StringReplace(MsgBot,'[nome_cliente]',ArrayBot.Get(0).GetValue<string>('client_name', '')+', tudo bem?',[rfReplaceAll]);
      end else
        MsgBot := StringReplace(MsgBot,'[nome_cliente]',', tudo bem?',[rfReplaceAll]);

      MsgBot := StringReplace(MsgBot,'[nome_estabelecimento]',Tabelas.mt_merchant.FieldByName('name').AsString,[rfReplaceAll]);
      TInject1.Send(AChatID, MsgBot);
      Sleep(2000);
      NovoEstado := ExecutaMenuInicial(AChatID, '');
    end else if UpperCase(AMessageBody) = 'CANCELAR' then begin
      sql := 'SELECT id '+
             'FROM mt_bot_order_temp '+
             'WHERE number_whatsapp LIKE '+QuotedStr(AChatID)+' '+
             'AND merchant_id = '+FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
      if Json <> 'sql_vazio' then begin
        ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
        OrderID := ArrayDados.Get(0).GetValue<integer>('id', 0);

        sql := 'DELETE FROM mt_bot_order_temp WHERE id = '+OrderID.ToString;
        Tabelas.InjectSQl(sql);
        sql := 'DELETE FROM mt_bot_cart_temp WHERE order_id = '+OrderID.ToString;
        Tabelas.InjectSQl(sql);
      end;

      NovoEstado := 'neutro';
      MsgBot := FMensagemFinal;
      TInject1.Send(AChatID, MsgBot);
    end else if EstadoAtual = 'menu_inicial' then begin
      NovoEstado := ExecutaMenuInicial(AChatID, AMessageBody);
    end else if EstadoAtual = 'menu_categoria' then begin
      NovoEstado := ExecutaCategoria(AChatID, AMessageBody);
    end else if EstadoAtual = 'menu_produto' then begin
      NovoEstado := ExecutaProduto(AChatID, AMessageBody);
    end else if EstadoAtual = 'quantidade' then begin
      NovoEstado := ExecutaQuantidade(AChatID, AMessageBody);
    end else if EstadoAtual = 'menu_pos_compra' then begin
      NovoEstado := ExecutaMenuPosCompra(AChatID, AMessageBody);
    end else if EstadoAtual = 'menu_visualiza_carrinho' then begin
      NovoEstado := ExecutaVisualizaCarrinho(AChatID, AMessageBody);
    end else if EstadoAtual = 'cadastra_nome_cliente' then begin
      NovoEstado := ExecutaCadastroNomeCliente(AChatID, AMessageBody);
    end else if EstadoAtual = 'menu_tipo_retirada' then begin
      NovoEstado := ExecutaMenuTipoRetirada(AChatID, AMessageBody);
    end else if EstadoAtual = 'menu_confirma_endereco' then begin
      NovoEstado := ExecutaMenuConfirmaEndereco(AChatID, AMessageBody);
    end else if EstadoAtual = 'menu_bairro' then begin
      NovoEstado := ExecutaMenuBairro(AChatID, AMessageBody);
    end else if EstadoAtual = 'cadastra_endereco_cliente' then begin
      NovoEstado := ExecutaMenuCadastroEndereco(AChatID, AMessageBody);
    end else if EstadoAtual = 'menu_pagamento' then begin
      NovoEstado := ExecutaMenuPagamento(AChatID, AMessageBody);
    end else if EstadoAtual = 'menu_cadastra_troco' then begin
      NovoEstado := ExecutaMenuCadastraTroco(AChatID, AMessageBody);
    end else if EstadoAtual = 'menu_observacao' then begin
      NovoEstado := ExecutaMenuObservacao(AChatID, AMessageBody);
    end else if EstadoAtual = 'menu_confirma_pedido' then begin
      NovoEstado := ExecutaMenuConfirmaPedido(AChatID, AMessageBody);
    end;

    if EstadoAtual = '' then begin
      sql := 'INSERT INTO mt_bot_interaction (id, message_id, merchant_id, '+
             'district_id, category_select, cmd_catg_select, product_select, '+
             'cmd_prod_select, number_whatsapp, date_created, last_modified, '+
             'stage, name, address) VALUES (NULL, '+
             QuotedStr(AMessageT)+', '+
             FMerchantID.ToString+', 0, 0, 0, 0, 0, '+
             QuotedStr(AChatID)+', '+
             QuotedStr(DataHora)+', '+
             QuotedStr(DataHora)+', '+
             QuotedStr(NovoEstado)+', '''', '''')';
    end else begin
      sql := 'UPDATE mt_bot_interaction SET '+
             'last_modified = '+QuotedStr(DataHora)+', '+
             'stage = '+QuotedStr(NovoEstado)+', '+
             'message_id = '+QuotedStr(AMessageT)+' '+
             'WHERE number_whatsapp = '+QuotedStr(AChatID)+' '+
             'AND merchant_id = '+FMerchantID.ToString;
    end;

    Tabelas.InjectSQL(sql);
  except
  end;
end;

function TFrmPrincipal.ExecutaMenuCadastraTroco(AChatID, Mensagem : String) : String;
var
  BotEstado, sql, Json, MsgBot, PedidoID: string;
  Total, Troco, Valor: Double;
  ArrayDados : TJSONArray;
begin
  BotEstado := 'menu_cadastra_troco';

  if UpperCase(Mensagem) = 'V' then
    BotEstado := ExecutaMenuPagamento(AChatID, '')
  else if Mensagem = '' then begin
    MsgBot := FMsgMenuCadastraTroco;
    MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
    MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);
    TInject1.Send(AChatID, MsgBot);
  end else begin
    sql := 'SELECT id, total FROM mt_bot_order_temp '+
           'WHERE merchant_id = '+FMerchantID.ToString+' '+
           'AND number_whatsapp LIKE '+QuotedStr(AChatID);
    Json := Tabelas.InjectSQL(sql);
    ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
    PedidoID := ArrayDados.Get(0).GetValue<string>('id', '');
    Total := ArrayDados.Get(0).GetValue<double>('total', 0);

    if (TryStrToFloat(Mensagem,Valor)) and (Valor > 0) and (Total<= Valor) then begin
      Troco := Valor - Total;

      sql := 'UPDATE mt_bot_order_temp SET '+
             'paid_out = '+StringReplace(FloatToStr(Valor),',','.',[rfReplaceAll])+', '+
             'change_money = '+StringReplace(FloatToStr(Troco),',','.',[rfReplaceAll])+' '+
             'WHERE id = '+PedidoID;
      Tabelas.InjectSQL(sql);

      BotEstado := 'menu_observacao';

      MsgBot := FMsgMenuObservacao;
      MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);
      TInject1.Send(AChatID, MsgBot);
    end else
      BotEstado := ExecutaMenuCadastraTroco(AChatID,'');
  end;

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaMenuConfirmaPedido(AChatID, Mensagem : String) : String;
var
  BotEstado, sql, sql2, Json, JsonPrepare, MsgBot, Carrinho, DataHora, Valores: string;
  ArrayDados, ArrayDadosPrepare : TJSONArray;
  x, item, QtdItens, ClientID, ClientAddressID, ClientPhoneID, OrderID: integer;
  car_total : double;
begin
  BotEstado := 'menu_confirma_pedido';

  DataHora := Copy(DateToStr(Date()),7,4)+'-'+
              Copy(DateToStr(Date()),4,2)+'-'+
              Copy(DateToStr(Date()),1,2)+' '+
              TimeToStr(Time());

  if UpperCase(Mensagem) = 'V' then begin
    BotEstado := 'menu_observacao';
    MsgBot := FMsgMenuObservacao;
    MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
    MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);
    TInject1.Send(AChatID, MsgBot);
  end else if Mensagem = '1' then begin
    sql := 'SELECT DISTINCT '+
           '    mt_bot_order_temp.id AS order_id, '+
           '    mt_bot_cart_temp.id AS cart_id, '+
           '    mt_bot_cart_temp.description AS cart_description, '+
           '    mt_bot_cart_temp.type_unit AS cart_type_unit, '+
           '    mt_bot_cart_temp.qty AS cart_qty, '+
           '    mt_bot_cart_temp.product_id AS cart_product_id, '+
           '    mt_bot_cart_temp.product_value AS cart_product_value, '+
           '    mt_bot_cart_temp.total AS cart_total, '+
           '    mt_bot_order_temp.subtotal AS order_subtotal, '+
           '    mt_bot_order_temp.delivery_fee AS order_delivery_fee, '+
           '    mt_bot_order_temp.total AS order_total, '+
           '    mt_bot_order_temp.paid_out AS order_paid_out, '+
           '    mt_bot_order_temp.change_money AS order_change_money, '+
           '    mt_bot_order_temp.remark AS order_remark, '+
           '    mt_bot_order_temp.type_out AS order_type_out, '+
           '    mt_payment.id AS payment_id, '+
           '    mt_payment.name AS payment_name, '+
           '    mt_bot_interaction.name AS client_name, '+
           '    mt_bot_interaction.address AS client_address, '+
           '    mt_bot_order_temp.address_id AS address_id, '+
           '   (SELECT mt_district.id FROM mt_district, mt_bot_interaction '+
           '    WHERE mt_bot_interaction.district_id = mt_district.id '+
           '    AND mt_bot_interaction.merchant_id = '+FMerchantID.ToString+' '+
           '    AND mt_bot_interaction.number_whatsapp LIKE '+QuotedStr(AChatID)+') AS district_id, '+
           '   (SELECT mt_district.name FROM mt_district, mt_bot_interaction '+
           '    WHERE mt_bot_interaction.district_id = mt_district.id '+
           '    AND mt_bot_interaction.merchant_id = '+FMerchantID.ToString+' '+
           '    AND mt_bot_interaction.number_whatsapp LIKE '+QuotedStr(AChatID)+') AS district_name '+
           'FROM mt_bot_interaction, mt_bot_order_temp, mt_bot_cart_temp, mt_payment '+
           'WHERE mt_bot_order_temp.id = mt_bot_cart_temp.order_id '+
           'AND mt_bot_order_temp.payment_id = mt_payment.id '+
           'AND mt_bot_order_temp.number_whatsapp LIKE '+QuotedStr(AChatID)+' '+
           'AND mt_bot_order_temp.merchant_id = '+FMerchantID.ToString+' '+
           'AND mt_bot_interaction.number_whatsapp LIKE '+QuotedStr(AChatID)+' '+
           'AND mt_bot_interaction.merchant_id = '+FMerchantID.ToString;
    JsonPrepare := Tabelas.InjectSQL(sql);
    ArrayDadosPrepare := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(JsonPrepare), 0) AS TJSONArray;

    sql := 'SELECT DISTINCT '+
           '   mt_client.id AS client_id, '+
           '   mt_client_phone.id AS client_phone_id '+
           'FROM mt_client, mt_client_phone '+
           'WHERE mt_client.id = mt_client_phone.client_id '+
           'AND mt_client.merchant_id = '+FMerchantID.ToString+' '+
           'AND mt_client_phone.phone LIKE '+QuotedStr(ConvertWhatsappToNumber(AChatID));
    Json := Tabelas.InjectSQL(sql);
    if Json = 'sql_vazio' then begin
      //Cadastra um novo cliente
      sql := 'INSERT INTO mt_client (id, name, obs, merchant_id) VALUES (NULL, '+
             QuotedStr(ArrayDadosPrepare.Get(0).GetValue<string>('client_name', ''))+', '+
             QuotedStr(ArrayDadosPrepare.Get(0).GetValue<string>('order_remark', ''))+', '+
             FMerchantID.ToString+')';
      Tabelas.InjectSQl(sql);
      sql := 'SELECT MAX(id) AS id FROM mt_client '+
             'WHERE merchant_id = '+FMerchantID.ToString+' '+
             'AND name LIKE '+QuotedStr(ArrayDadosPrepare.Get(0).GetValue<string>('client_name', ''));
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      ClientID := ArrayDados.Get(0).GetValue<integer>('id', 0);
      sql := 'INSERT INTO mt_client_phone (id, client_id, phone, major) VALUES (NULL, '+
              ClientID.ToString+', '+QuotedStr(ConvertWhatsappToNumber(AChatID))+', ''s'')';
      Tabelas.InjectSQL(sql);
      sql := 'SELECT id FROM mt_client_phone WHERE client_id = '+ClientID.ToString;
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      ClientPhoneID := ArrayDados.Get(0).GetValue<integer>('id', 0);

      if ArrayDadosPrepare.Get(0).GetValue<string>('order_type_out', '') = 'Entrega' then
        sql := 'INSERT INTO mt_client_address (id, client_id, address, district_id, major) VALUES (NULL, '+
                ClientID.ToString+', '+
                QuotedStr(ArrayDadosPrepare.Get(0).GetValue<string>('client_address', ''))+', '+
                ArrayDadosPrepare.Get(0).GetValue<string>('district_id', '0')+', ''s'')'
      else
        sql := 'INSERT INTO mt_client_address (id, client_id, address, district_id, major) VALUES (NULL, '+
                ClientID.ToString+', ''S/E'', '+
               '(SELECT id FROM mt_district WHERE merchant_id = '+FMerchantID.ToString+' '+
               ' AND name NOT LIKE ''S/B'' ORDER BY id LIMIT 1), ''s'')';
      Tabelas.InjectSQl(sql);
      sql := 'SELECT id FROM mt_client_address WHERE client_id = '+ClientID.ToString;
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      ClientAddressID := ArrayDados.Get(0).GetValue<integer>('id', 0);
    end else begin
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      ClientID := ArrayDados.Get(0).GetValue<integer>('client_id', 0);
      ClientPhoneID := ArrayDados.Get(0).GetValue<integer>('client_phone_id', 0);

      if ArrayDadosPrepare.Get(0).GetValue<string>('order_type_out', '') = 'Entrega' then begin
        //Só atualiza os dados de endereço caso o tipo do pedido seja para entrega
        if ArrayDadosPrepare.Get(0).GetValue<integer>('address_id', 0) = 0 then begin
          sql := 'SELECT * FROM mt_client_address WHERE client_id = '+ClientID.ToString+' '+
                 'AND address LIKE '+QuotedStr(ArrayDadosPrepare.Get(0).GetValue<string>('client_address', ''))+' '+
                 'AND district_id = '+ArrayDadosPrepare.Get(0).GetValue<string>('district_id', '0');
          Json := Tabelas.InjectSQL(sql);
          if Json = 'sql_vazio' then begin
            sql := 'INSERT INTO mt_client_address (id, client_id, address, district_id, major) VALUES (NULL, '+
                    ClientID.ToString+', '+
                    QuotedStr(ArrayDadosPrepare.Get(0).GetValue<string>('client_address', ''))+', '+
                    ArrayDadosPrepare.Get(0).GetValue<string>('district_id', '0')+', ''n'')';
            Tabelas.InjectSQl(sql);
            sql := 'SELECT id FROM mt_client_address WHERE client_id = '+ClientID.ToString;
            Json := Tabelas.InjectSQL(sql);
          end;
          ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
          ClientAddressID := ArrayDados.Get(0).GetValue<integer>('id', 0);
        end else
          ClientAddressID := ArrayDadosPrepare.Get(0).GetValue<integer>('address_id', 0);

        sql := 'UPDATE mt_client_address SET major = ''n'' WHERE client_id = '+ClientID.ToString;
        Tabelas.InjectSQL(sql);
        sql := 'UPDATE mt_client_address SET major = ''s'' WHERE id = '+ClientAddressID.ToString;
        Tabelas.InjectSQL(sql);
      end;

      sql := 'UPDATE mt_client_phone SET major = ''n'' WHERE client_id = '+ClientID.ToString;
      Tabelas.InjectSQL(sql);
      sql := 'UPDATE mt_client_phone SET major = ''s'' WHERE id = '+ClientPhoneID.ToString;
      Tabelas.InjectSQL(sql);
    end;

    x := 0;
    while x < ArrayDadosPrepare.Size do
      x := x + 1;

    item := x;

    sql := 'INSERT INTO mt_order (id, merchant_id, client_id, payment_id, '+
           'status, tipo_saida, date_created, last_modified, check_bot, input_type, desconto, '+
           'acrescimo, pago, troco, subtotal, valor_total, qty_items, delivery_fee) VALUES (NULL, '+
           frmPrincipal.FMerchantID.ToString+', '+
           ClientID.ToString+', '+
           ArrayDadosPrepare.Get(0).GetValue<string>('payment_id', '0')+', '+
           QuotedStr('Pendente')+', '+
           QuotedStr(ArrayDadosPrepare.Get(0).GetValue<string>('order_type_out', ''))+', '+
           QuotedStr(DataHora)+', '+
           QuotedStr(DataHora)+', ''n'', ''Bot'', 0, 0, '+
           ArrayDadosPrepare.Get(0).GetValue<string>('order_paid_out', '0')+', '+
           ArrayDadosPrepare.Get(0).GetValue<string>('order_change_money', '0')+', '+
           ArrayDadosPrepare.Get(0).GetValue<string>('order_subtotal', '0')+', '+
           ArrayDadosPrepare.Get(0).GetValue<string>('order_total', '0')+', '+
           item.ToString+', '+
           ArrayDadosPrepare.Get(0).GetValue<string>('order_delivery_fee', '0')+')';
    Tabelas.InjectSQL(sql);

    sql := 'SELECT MAX(id) AS id FROM mt_order WHERE client_id = '+ClientID.ToString+' '+
           'AND merchant_id = '+FMerchantID.ToString;
    Json := Tabelas.InjectSQL(sql);
    ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
    OrderID := ArrayDados.Get(0).GetValue<integer>('id', 0);

    sql := 'INSERT INTO mt_delivery_info (id, client_id, client_address_id, '+
           'client_phone_id, order_id, phone, address, '+
           'district_name, obs, client_name, '+
           'date_created, num_mesa) VALUES (NULL, '+
           ClientID.ToString+', '+
           ClientAddressID.ToString+', '+
           ClientPhoneID.ToString+', '+
           OrderID.ToString+', '+
           QuotedStr(ConvertWhatsappToNumber(AChatID))+', '+
           QuotedStr(ArrayDadosPrepare.Get(0).GetValue<string>('client_address', ''))+', '+
           QuotedStr(ArrayDadosPrepare.Get(0).GetValue<string>('district_name', ''))+', '+
           QuotedStr(ArrayDadosPrepare.Get(0).GetValue<string>('order_remark', ''))+', '+
           QuotedStr(ArrayDadosPrepare.Get(0).GetValue<string>('client_name', ''))+', '+
           QuotedStr(DataHora)+', '''')';
    Tabelas.InjectSQL(sql);

    sql := 'INSERT INTO mt_cart (id, order_id, date_created, product_id, descricao_produto, '+
           'valor_unit, qtd, total) VALUES ';
    x := 0;
    while x < ArrayDadosPrepare.Size do begin
      if Tabelas.mt_settings.FieldByName('count_stock').AsString = 's' then begin
        //Subtrai os produtos da tabela mt_product
        sql2 := 'CALL UPT_PROD_QTY('+
               ArrayDadosPrepare.Get(x).GetValue<string>('cart_product_id', '0')+', '+
               ArrayDadosPrepare.Get(x).GetValue<string>('cart_qty', '0')+', '+
               '''-'')';
        Tabelas.InjectSQL(sql2);
      end;

      sql := sql + '(NULL, '+OrderID.ToString+', '+QuotedStr(DataHora)+', '+
             ArrayDadosPrepare.Get(x).GetValue<string>('cart_product_id', '0')+', '+
             QuotedStr(ArrayDadosPrepare.Get(x).GetValue<string>('cart_description', ''))+', '+
             ArrayDadosPrepare.Get(x).GetValue<string>('cart_product_value', '0')+', '+
             ArrayDadosPrepare.Get(x).GetValue<string>('cart_qty', '0')+', '+
             ArrayDadosPrepare.Get(x).GetValue<string>('cart_total', '0')+'),';
      x := x + 1;
    end;
    Delete(sql,Length(sql),1);
    Tabelas.InjectSQL(sql);

    sql := 'DELETE FROM mt_bot_order_temp WHERE id = '+
            ArrayDadosPrepare.Get(0).GetValue<string>('order_id', '0');
    Tabelas.InjectSQl(sql);
    sql := 'DELETE FROM mt_bot_cart_temp WHERE order_id = '+
            ArrayDadosPrepare.Get(0).GetValue<string>('order_id', '0');
    Tabelas.InjectSQl(sql);

    BotEstado := 'neutro';
    MsgBot := FMsgPedidoConfirmado;
    TInject1.Send(AChatID, MsgBot);
  end else if (Mensagem = '2') then begin
    sql := 'SELECT id '+
           'FROM mt_bot_order_temp '+
           'WHERE number_whatsapp LIKE '+QuotedStr(AChatID)+' '+
           'AND merchant_id = '+FMerchantID.ToString;
    Json := Tabelas.InjectSQL(sql);
    ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
    OrderID := ArrayDados.Get(0).GetValue<integer>('id', 0);

    sql := 'DELETE FROM mt_bot_order_temp WHERE id = '+OrderID.ToString;
    Tabelas.InjectSQl(sql);
    sql := 'DELETE FROM mt_bot_cart_temp WHERE order_id = '+OrderID.ToString;
    Tabelas.InjectSQl(sql);

    BotEstado := 'neutro';
    MsgBot := FMsgPedidoCancelado;
    TInject1.Send(AChatID, MsgBot);
  end else begin
    sql := 'SELECT DISTINCT '+
           '    mt_bot_order_temp.id AS order_id, '+
           '    mt_bot_cart_temp.id AS cart_id, '+
           '    mt_bot_cart_temp.description AS cart_description, '+
           '    mt_bot_cart_temp.type_unit AS cart_type_unit, '+
           '    mt_bot_cart_temp.qty AS cart_qty, '+
           '    mt_bot_cart_temp.product_value AS cart_product_value, '+
           '    mt_bot_cart_temp.total AS cart_total, '+
           '    mt_bot_order_temp.subtotal AS order_subtotal, '+
           '    mt_bot_order_temp.delivery_fee AS order_delivery_fee, '+
           '    mt_bot_order_temp.total AS order_total, '+
           '    mt_bot_order_temp.paid_out AS order_paid_out, '+
           '    mt_bot_order_temp.change_money AS order_change_money, '+
           '    mt_bot_order_temp.remark AS order_remark, '+
           '    mt_bot_order_temp.type_out AS order_type_out, '+
           '    mt_payment.name AS payment_name, '+
           '    mt_bot_interaction.name AS client_name, '+
           '    mt_bot_interaction.address AS client_address, '+
           '   (SELECT mt_district.name FROM mt_district, mt_bot_interaction '+
           '    WHERE mt_bot_interaction.district_id = mt_district.id '+
           '    AND mt_bot_interaction.merchant_id = '+FMerchantID.ToString+' '+
           '    AND mt_bot_interaction.number_whatsapp LIKE '+QuotedStr(AChatID)+') AS district_name '+
           'FROM mt_bot_interaction, mt_bot_order_temp, mt_bot_cart_temp, mt_payment '+
           'WHERE mt_bot_order_temp.id = mt_bot_cart_temp.order_id '+
           'AND mt_bot_order_temp.payment_id = mt_payment.id '+
           'AND mt_bot_order_temp.number_whatsapp LIKE '+QuotedStr(AChatID)+' '+
           'AND mt_bot_order_temp.merchant_id = '+FMerchantID.ToString+' '+
           'AND mt_bot_interaction.number_whatsapp LIKE '+QuotedStr(AChatID)+' '+
           'AND mt_bot_interaction.merchant_id = '+FMerchantID.ToString;
    Json := Tabelas.InjectSQL(sql);
    ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

    x := 0;
    item := 0;
    Carrinho := '';
    while x < ArrayDados.Size do
    begin
      item := item + 1;
      Carrinho := Carrinho + '*' + ArrayDados.Get(x).GetValue<string>('cart_description', '')+'*\n';

      if ArrayDados.Get(x).GetValue<string>('cart_type_unit', '') <> 'UN' then
        Carrinho := Carrinho + FormatFloat('#,0.000', StrToFloat(StringReplace(ArrayDados.Get(x).GetValue<string>('cart_qty', ''),'.',',',[rfReplaceAll])))
      else
        Carrinho := Carrinho + ArrayDados.Get(x).GetValue<string>('cart_qty', '');

      Carrinho := Carrinho + ' x '+FormatFloat('#,0.00', StrToFloat(StringReplace(ArrayDados.Get(x).GetValue<string>('cart_product_value', ''),'.',',',[rfReplaceAll]))) + ' = ';

      car_total := StrToFloat(StringReplace(ArrayDados.Get(x).GetValue<string>('cart_total', ''),'.',',',[rfReplaceAll]));

      Carrinho := Carrinho + FormatFloat('#,0.00', car_total) + '\n\n';
      x := x + 1;
    end;
    Delete(Carrinho,Length(Carrinho)-3,4);

    Valores := 'Subtotal: *R$'+FormatFloat('#,0.00',ArrayDados.Get(0).GetValue<double>('order_subtotal', 0))+'*\n';
    if ArrayDados.Get(0).GetValue<double>('order_delivery_fee', 0) > 0 then
      Valores := Valores + 'Taxa de entrega: *R$'+FormatFloat('#,0.00',ArrayDados.Get(0).GetValue<double>('order_delivery_fee', 0))+'*\n';
    Valores := Valores + 'Total: *R$'+FormatFloat('#,0.00',ArrayDados.Get(0).GetValue<double>('order_total', 0))+'*';
    if ArrayDados.Get(0).GetValue<string>('payment_name', '') = 'Dinheiro' then begin
      Valores := Valores + '\nPago: *R$'+FormatFloat('#,0.00',ArrayDados.Get(0).GetValue<double>('order_paid_out', 0))+'*';
      if ArrayDados.Get(0).GetValue<double>('order_change_money', 0) > 0 then
        Valores := Valores + '\nTroco: *R$'+FormatFloat('#,0.00',ArrayDados.Get(0).GetValue<double>('order_change_money', 0))+'*';
    end;

    MsgBot := FMsgMenuConfirmaPedido;
    MsgBot := StringReplace(MsgBot,'[nome_estabelecimento]',Tabelas.mt_merchant.FieldByName('name').AsString,[rfReplaceAll]);
    MsgBot := StringReplace(MsgBot,'[carrinho]',Carrinho,[rfReplaceAll]);
    MsgBot := StringReplace(MsgBot,'[numero_pedido]',ArrayDados.Get(0).GetValue<string>('order_id', ''),[rfReplaceAll]);
    MsgBot := StringReplace(MsgBot,'[nome_cliente]',ArrayDados.Get(0).GetValue<string>('client_name', ''),[rfReplaceAll]);

    if POS('ENTREGA', UpperCase(ArrayDados.Get(0).GetValue<string>('order_type_out', ''))) > 0 then
      MsgBot := StringReplace(MsgBot,
                '[tipo_retirada]',
                ArrayDados.Get(0).GetValue<string>('order_type_out', '')+'\n'+
                ArrayDados.Get(0).GetValue<string>('client_address', '')+' - '+
                ArrayDados.Get(0).GetValue<string>('district_name', ''),
                [rfReplaceAll])
    else if POS('RETIRADA', UpperCase(ArrayDados.Get(0).GetValue<string>('order_type_out', ''))) > 0 then
      MsgBot := StringReplace(MsgBot,'[tipo_retirada]','Retirar no balcão',[rfReplaceAll])
    else
      MsgBot := StringReplace(MsgBot,'[tipo_retirada]','Consumo no local',[rfReplaceAll]);

    if ArrayDados.Get(0).GetValue<string>('order_remark', '') = '' then
      MsgBot := StringReplace(MsgBot,'[observacoes]','Sem observações',[rfReplaceAll])
    else
      MsgBot := StringReplace(MsgBot,'[observacoes]',ArrayDados.Get(0).GetValue<string>('order_remark', ''),[rfReplaceAll]);

    MsgBot := StringReplace(MsgBot,'[pagamento]',ArrayDados.Get(0).GetValue<string>('payment_name', ''),[rfReplaceAll]);
    MsgBot := StringReplace(MsgBot,'[valores]',Valores,[rfReplaceAll]);
    MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
    MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);

    TInject1.Send(AChatID, MsgBot);
  end;

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaMenuObservacao(AChatID, Mensagem : String) : String;
var
  BotEstado, sql, Json, MsgBot, PedidoID, Obs: string;
  x: Integer;
  ArrayDados : TJSONArray;
begin
  BotEstado := 'menu_observacao';

  if UpperCase(Mensagem) = 'V' then
    BotEstado := ExecutaMenuPagamento(AChatID, 'a')
  else begin
    if UpperCase(Mensagem) = 'N' then
      Obs := ''
    else
      Obs := Mensagem;

    sql := 'UPDATE mt_bot_order_temp SET remark = '+QuotedStr(Obs)+' '+
           'WHERE merchant_id = '+FMerchantID.ToString+' '+
           'AND number_whatsapp LIKE '+QuotedStr(AChatID);
    Tabelas.InjectSQL(sql);
    BotEstado := ExecutaMenuConfirmaPedido(AChatID,'');
  end;

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaMenuPagamento(AChatID, Mensagem : String) : String;
var
  BotEstado, sql, Json, MsgBot, Pagamentos, Total, PagamentoID, PedidoID: string;
  x: Integer;
  ArrayDados : TJSONArray;
begin
  BotEstado := 'menu_pagamento';

  if UpperCase(Mensagem) = 'V' then
    BotEstado := ExecutaMenuTipoRetirada(AChatID, '')
  else if Mensagem = '' then begin
    sql := 'SELECT id, command, name, '+
           '  (SELECT total FROM mt_bot_order_temp '+
           '   WHERE number_whatsapp LIKE '+QuotedStr(AChatID)+' '+
           '   AND merchant_id = '+FMerchantID.ToString+') AS total '+
           'FROM mt_payment '+
           'WHERE merchant_id = '+FMerchantID.ToString+' '+
           'AND active LIKE ''Sim'' '+
           'AND name NOT LIKE ''A prazo'' ';
    if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
      sql := sql + 'ORDER BY 1'
    else
      sql := sql + 'ORDER BY 2';

    Json := Tabelas.InjectSQL(sql);
    if Json = 'sql_vazio' then
      MsgBot := 'Nenhum pagamento encontrado\n'+FMsgDivisor+'\n\n'+FMsgVoltar
    else begin
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

      Pagamentos := '';
      x := 0;
      while x < ArrayDados.Size do begin
        if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
          PagamentoID := ArrayDados.Get(x).GetValue<string>('id', '0')
        else
          PagamentoID := ArrayDados.Get(x).GetValue<string>('command', '0');

        Pagamentos := Pagamentos +
                      '*['+PagamentoID+']* '+
                      ArrayDados.Get(x).GetValue<string>('name', '')+'\n';
        x := x + 1;
      end;
      Delete(Pagamentos,Length(Pagamentos)-1,2);

      Total := 'R$'+FormatFloat('#,0.00',ArrayDados.Get(0).GetValue<double>('total', 0));

      MsgBot := StringReplace(FMsgMenuPagamento,'[pagamentos]',Pagamentos,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[total]',Total,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);
    end;
    TInject1.Send(AChatID, MsgBot);
  end else begin
    sql := 'SELECT * FROM mt_payment '+
           'WHERE merchant_id = '+FMerchantID.ToString+' '+
           'AND active LIKE ''Sim'' '+
           'AND name NOT LIKE ''A prazo'' ';
    if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
      sql := sql + 'AND id = '+QuotedStr(Mensagem)
    else
      sql := sql + 'AND command = '+QuotedStr(Mensagem);

    Json := Tabelas.InjectSQL(sql);
    if Json = 'sql_vazio' then
      ExecutaMenuPagamento(AChatID,'')
    else begin
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      PagamentoID := ArrayDados.Get(0).GetValue<string>('id', '0');

      if ArrayDados.Get(0).GetValue<string>('name', '') = 'Dinheiro' then begin
        sql := 'UPDATE mt_bot_order_temp SET '+
               '  payment_id = '+PagamentoID+' '+
               'WHERE merchant_id = '+FMerchantID.ToString+' '+
               'AND number_whatsapp = '+QuotedStr(AChatID);
        Tabelas.InjectSQL(sql);
        BotEstado := ExecutaMenuCadastraTroco(AChatID,'');
      end else begin
        sql := 'SELECT id, total FROM mt_bot_order_temp '+
               'WHERE merchant_id = '+FMerchantID.ToString+' '+
               'AND number_whatsapp LIKE '+QuotedStr(AChatID);
        Json := Tabelas.InjectSQL(sql);
        ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
        PedidoID := ArrayDados.Get(0).GetValue<string>('id', '0');

        sql := 'UPDATE mt_bot_order_temp SET '+
               '  payment_id = '+PagamentoID+', '+
               '  paid_out = '+ArrayDados.Get(0).GetValue<string>('total', '')+', '+
               '  change_money = 0 '+
               'WHERE id = '+PedidoID;
        Tabelas.InjectSQL(sql);

        BotEstado := 'menu_observacao';

        MsgBot := FMsgMenuObservacao;
        MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
        MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);
        TInject1.Send(AChatID, MsgBot);
      end;
    end;
  end;

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaMenuCadastroEndereco(AChatID, Mensagem : String) : String;
var
  BotEstado, sql: string;
begin
  if UpperCase(Mensagem) = 'V' then
    BotEstado := ExecutaMenuBairro(AChatID, '')
  else begin
    sql := 'UPDATE mt_bot_interaction SET '+
           'address = '+QuotedStr(Mensagem)+' '+
           'WHERE merchant_id = '+FMerchantID.ToString+' '+
           'AND number_whatsapp LIKE '+QuotedStr(AChatID);
    Tabelas.InjectSQL(sql);
    BotEstado := ExecutaMenuPagamento(AChatID,'');
  end;

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaMenuBairro(AChatID, Mensagem : String) : String;
var
  BotEstado, sql, Json, MsgBot, Bairros, BairroID, Taxa: string;
  x: Integer;
  ArrayDados : TJSONArray;
  Total : Double;
begin
  BotEstado := 'menu_bairro';

  if UpperCase(Mensagem) = 'V' then
    BotEstado := ExecutaMenuTipoRetirada(AChatID, '')
  else if Mensagem = '' then begin
    sql := 'SELECT * FROM mt_district '+
           'WHERE merchant_id = '+FMerchantID.ToString+' '+
           'AND active = ''Sim'' '+
           'AND name NOT LIKE ''S/B'' ';
    if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
      sql := sql + 'ORDER BY id'
    else
      sql := sql + 'ORDER BY command';

    Json := Tabelas.InjectSQL(sql);
    if Json = 'sql_vazio' then
      MsgBot := 'Nenhum bairro encontrado\n'+FMsgDivisor+'\n'+FMsgVoltar
    else begin
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

      Bairros := '';
      x := 0;
      while x < ArrayDados.Size do begin
        if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
          BairroID := ArrayDados.Get(x).GetValue<string>('id', '0')
        else
          BairroID := ArrayDados.Get(x).GetValue<string>('command', '0');

        if ArrayDados.Get(x).GetValue<double>('tax', 0) = 0 then
          Taxa := ''
        else
          Taxa := '(R$'+FormatFloat('#,0.00',ArrayDados.Get(x).GetValue<double>('tax', 0))+')';

        Bairros := Bairros +
                      '*['+BairroID+']* '+
                      ArrayDados.Get(x).GetValue<string>('name', '')+' '+Taxa+'\n';
        x := x + 1;
      end;
      Delete(Bairros,Length(Bairros)-1,2);

      MsgBot := StringReplace(MsgMenuBairro,'[bairros]',Bairros,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);
    end;
    TInject1.Send(AChatID, MsgBot);
  end else begin
    sql := 'SELECT id, tax, '+
           '  (SELECT subtotal FROM mt_bot_order_temp WHERE merchant_id = '+FMerchantID.ToString+' '+
           '   AND number_whatsapp = '+QuotedStr(AChatID)+') AS subtotal, '+
           '  (SELECT id FROM mt_bot_order_temp WHERE merchant_id = '+FMerchantID.ToString+' '+
           '   AND number_whatsapp = '+QuotedStr(AChatID)+') AS order_id '+
           'FROM mt_district '+
           'WHERE merchant_id = '+FMerchantID.ToString+' '+
           'AND active LIKE ''Sim'' '+
           'AND name NOT LIKE ''S/B'' ';
    if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
      sql := sql + 'AND id = '+QuotedStr(Mensagem)
    else
      sql := sql + 'AND command = '+QuotedStr(Mensagem);

    Json := Tabelas.InjectSQL(sql);
    if Json = 'sql_vazio' then
      BotEstado := ExecutaMenuBairro(AChatID,'')
    else begin
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

      sql := 'UPDATE mt_bot_interaction SET '+
             'district_id = '+ArrayDados.Get(0).GetValue<string>('id', '')+' '+
             'WHERE merchant_id = '+FMerchantID.ToString+' '+
             'AND number_whatsapp LIKE '+QuotedStr(AChatID);
      Tabelas.InjectSQL(sql);

      Total := ArrayDados.Get(0).GetValue<double>('subtotal', 0) + ArrayDados.Get(0).GetValue<double>('tax', 0);

      sql := 'UPDATE mt_bot_order_temp SET '+
             '  address_id = 0, '+
             '  delivery_fee = '+ArrayDados.Get(0).GetValue<string>('tax', '0')+', '+
             '  total = '+StringReplace(FloatToStr(Total),',','.',[rfReplaceAll])+' '+
             'WHERE id = '+ArrayDados.Get(0).GetValue<string>('order_id', '0');
      Tabelas.InjectSQL(sql);

      MsgBot := MsgMenuCadastroEndereco;
      MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);

      BotEstado := 'cadastra_endereco_cliente';
      TInject1.Send(AChatID, MsgBot);
    end;
  end;

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaMenuConfirmaEndereco(AChatID, Mensagem : String) : String;
var
  BotEstado, sql, Json, MsgBot: string;
  ArrayDados : TJSONArray;
  x, Num: integer;
  Enderecos, PedidoID: String;
  SubTotal, Taxa, Total : Double;
begin
  BotEstado := 'menu_confirma_endereco';

  if UpperCase(Mensagem) = 'V' then
    BotEstado := ExecutaMenuTipoRetirada(AChatID, '')
  else begin
    sql := 'SELECT '+
           '     mt_client_address.id AS address_id, '+
           '     mt_client_address.address AS client_address, '+
           '     mt_district.id AS d_district_id, '+
           '     mt_district.name AS district_name, '+
           '     mt_client_address.major AS address_major, '+
           '    (SELECT name FROM mt_district WHERE id = d_district_id) AS district_name, '+
           '    (SELECT tax FROM mt_district WHERE id = d_district_id) AS district_tax, '+
           '    (SELECT subtotal FROM mt_bot_order_temp WHERE merchant_id = '+FMerchantID.ToString+' '+
           '     AND number_whatsapp = '+QuotedStr(AChatID)+') AS subtotal, '+
           '    (SELECT id FROM mt_bot_order_temp WHERE merchant_id = '+FMerchantID.ToString+' '+
           '     AND number_whatsapp = '+QuotedStr(AChatID)+') AS order_id '+
           'FROM mt_client, mt_client_address, mt_client_phone, mt_district '+
           'WHERE mt_client_address.client_id = mt_client.id '+
           'AND mt_client_phone.client_id = mt_client.id '+
           'AND mt_client_address.district_id = mt_district.id '+
           'AND mt_client.merchant_id = '+FMerchantID.ToString+' '+
           'AND mt_client_phone.phone LIKE '+QuotedStr(ConvertWhatsappToNumber(AChatID))+' '+
           'ORDER BY 5 DESC';
    Json := Tabelas.InjectSQL(sql);
    if Json = 'sql_vazio' then
      BotEstado := ExecutaMenuBairro(AChatID,'')
    else begin
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

      Enderecos := '';
      x := 0;
      while x < ArrayDados.Size do begin
        Enderecos := Enderecos + '*['+(x+1).ToString+']* '+
                     ArrayDados.Get(x).GetValue<string>('client_address', '') + ' - ' +
                     ArrayDados.Get(x).GetValue<string>('district_name', '')+'\n\n';
        x := x + 1;
      end;
      Enderecos := Enderecos + '*['+(x+1).ToString+'] Novo endereço*';

      if TryStrToInt(Mensagem, Num) and (Num > 0) and (Num <= x) then begin
        sql := 'UPDATE mt_bot_interaction SET '+
               'address = '+QuotedStr(ArrayDados.Get(Num-1).GetValue<string>('client_address', ''))+', '+
               'district_id = '+QuotedStr(ArrayDados.Get(Num-1).GetValue<string>('d_district_id', '0'))+' '+
               'WHERE merchant_id = '+FMerchantID.ToString+' '+
               'AND number_whatsapp LIKE '+QuotedStr(AChatID);
        Tabelas.InjectSQL(sql);

        PedidoID := ArrayDados.Get(Num-1).GetValue<string>('order_id', '0');
        SubTotal := ArrayDados.Get(Num-1).GetValue<double>('subtotal', 0);
        Taxa := ArrayDados.Get(Num-1).GetValue<double>('district_tax', 0);
        Total := SubTotal + Taxa;

        sql := 'UPDATE mt_bot_order_temp SET '+
               '  address_id = '+ArrayDados.Get(Num-1).GetValue<string>('address_id', '0')+', '+
               '  delivery_fee = '+StringReplace(FloatToStr(Taxa),',','.',[rfReplaceAll])+', '+
               '  total = '+StringReplace(FloatToStr(Total),',','.',[rfReplaceAll])+' '+
               'WHERE id = '+PedidoID;
        Tabelas.InjectSQL(sql);

        BotEstado := ExecutaMenuPagamento(AChatID,'');
      end else if TryStrToInt(Mensagem, Num) and (Num = x+1) then begin
        BotEstado := ExecutaMenuBairro(AChatID,'');
      end else begin
        MsgBot := MsgMenuConfirmaEndereco;
        MsgBot := StringReplace(MsgBot,'[enderecos]',Enderecos,[rfReplaceAll]);
        MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
        MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);

        TInject1.Send(AChatID, MsgBot);
      end;
    end;
  end;

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaMenuTipoRetirada(AChatID, Mensagem : String) : String;
var
  BotEstado, sql, Json, MsgBot, MsgOpcoes, PedidoID: string;
  Opcao, Entrega, Retirada, Consumo, Num: Integer;
  ArrayDados : TJSONArray;
begin
  BotEstado := 'menu_tipo_retirada';

  if UpperCase(Mensagem) = 'V' then begin
    sql := 'SELECT DISTINCT '+
           '   mt_client.name AS client_name '+
           'FROM mt_client, mt_client_phone '+
           'WHERE mt_client.id = mt_client_phone.client_id '+
           'AND mt_client.merchant_id = '+FMerchantID.ToString+' '+
           'AND mt_client_phone.phone LIKE '+QuotedStr(ConvertWhatsappToNumber(AChatID));
    Json := Tabelas.InjectSQL(sql);
    if Json = 'sql_vazio' then begin
      MsgBot := FMsgSolicitaNomeCliente;
      MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);
      TInject1.Send(AChatID, MsgBot);
      BotEstado := 'cadastra_nome_cliente';
    end else
      BotEstado := ExecutaMenuPosCompra(AChatID, '');
  end else begin
    sql := 'SELECT services FROM mt_merchant WHERE id = '+FMerchantID.ToString;
    Json := Tabelas.InjectSQL(sql);

    Opcao := 0;
    Entrega := 0;
    Retirada := 0;
    Consumo := 0;
    MsgOpcoes := '';

    if POS('entrega', Json) > 0 then begin
      Opcao := Opcao + 1;
      Entrega := Opcao;
      MsgOpcoes := MsgOpcoes+'*['+Opcao.ToString+']* Entregar no endereço\n';
    end;

    if POS('retirada', Json) > 0 then begin
      Opcao := Opcao + 1;
      Retirada := Opcao;
      MsgOpcoes := MsgOpcoes+'*['+Opcao.ToString+']* Retirar no balcão\n';
    end;

    if POS('consumo', Json) > 0 then begin
      Opcao := Opcao + 1;
      Consumo := Opcao;
      MsgOpcoes := MsgOpcoes+'*['+Opcao.ToString+']* Consumir no local\n';
    end;

    if (TryStrToInt(Mensagem, Num)) and (Num = Entrega) and (Num > 0) then begin
      sql := 'SELECT id FROM mt_bot_order_temp '+
             'WHERE merchant_id = '+FMerchantID.ToString+' '+
             'AND number_whatsapp LIKE '+QuotedStr(AChatID);
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      PedidoID := ArrayDados.Get(0).GetValue<string>('id', '');

      sql := 'UPDATE mt_bot_order_temp SET type_out = '+QuotedStr('Entrega')+' '+
             'WHERE id = '+PedidoID;
      Tabelas.InjectSQL(sql);

      BotEstado := ExecutaMenuConfirmaEndereco(AChatID,'');
    end else if (TryStrToInt(Mensagem, Num)) and (Num = Retirada) and (Num > 0) then begin
      sql := 'SELECT id FROM mt_bot_order_temp '+
             'WHERE merchant_id = '+FMerchantID.ToString+' '+
             'AND number_whatsapp LIKE '+QuotedStr(AChatID);
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      PedidoID := ArrayDados.Get(0).GetValue<string>('id', '');

      sql := 'UPDATE mt_bot_order_temp SET type_out = '+QuotedStr('Retirada')+' '+
             'WHERE id = '+PedidoID;
      Tabelas.InjectSQL(sql);

      BotEstado := ExecutaMenuPagamento(AChatID,'');
    end else if (TryStrToInt(Mensagem, Num)) and (Num = Consumo) and (Num > 0) then begin
      sql := 'SELECT id FROM mt_bot_order_temp '+
             'WHERE merchant_id = '+FMerchantID.ToString+' '+
             'AND number_whatsapp LIKE '+QuotedStr(AChatID);
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      PedidoID := ArrayDados.Get(0).GetValue<string>('id', '');

      sql := 'UPDATE mt_bot_order_temp SET type_out = '+QuotedStr('Mesa')+' '+
             'WHERE id = '+PedidoID;
      Tabelas.InjectSQL(sql);

      BotEstado := ExecutaMenuPagamento(AChatID,'');
    end else begin
      Delete(MsgOpcoes,Length(MsgOpcoes)-1,2);
      MsgBot := MsgMenuTipoRetirada;
      MsgBot := StringReplace(MsgBot,'[opcoes]',MsgOpcoes,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);
      TInject1.Send(AChatID, MsgBot);
    end;
  end;

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaCadastroNomeCliente(AChatID, Mensagem : String) : String;
var
  BotEstado, sql: string;
begin
  BotEstado := 'cadastra_nome_cliente';

  if UpperCase(Mensagem) = 'V' then
    BotEstado := ExecutaMenuPosCompra(AChatID, '')
  else begin
    sql := 'UPDATE mt_bot_interaction SET '+
           'name = '+QuotedStr(Mensagem)+' '+
           'WHERE merchant_id = '+FMerchantID.ToString+' '+
           'AND number_whatsapp = '+QuotedStr(AChatID);
    Tabelas.InjectSQL(sql);
    BotEstado := ExecutaMenuTipoRetirada(AChatID,'');
  end;

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaVisualizaCarrinho(AChatID, Mensagem : String) : String;
var
  BotEstado, MensagemBot, sql, Json, DataHora: string;
  ArrayDados : TJSONArray;
  sub_total, car_total, CarrinhoTotal: double;
  PedidoSubTotal, PedidoTotal : double;
  x, item, item_escolhido, PedidoID: Integer;
  CarrinhoIDs : Array of Integer;
begin
  BotEstado := 'menu_visualiza_carrinho';

  if (UpperCase(Mensagem) = 'C') or (UpperCase(Mensagem) = 'F') then
    BotEstado := ExecutaMenuPosCompra(AChatID, Mensagem)
  else begin
    sql := 'SELECT mt_bot_cart_temp.id AS cart_id '+
           'FROM mt_bot_cart_temp, mt_bot_order_temp '+
           'WHERE	mt_bot_cart_temp.order_id = mt_bot_order_temp.id '+
           'AND mt_bot_order_temp.number_whatsapp LIKE '+QuotedStr(AChatID)+' '+
           'AND	mt_bot_order_temp.merchant_id = '+FMerchantID.ToString;
    Json := Tabelas.InjectSQL(sql);

    if (Json <> 'sql_vazio') and (TryStrToInt(Mensagem, item_escolhido)) then begin
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

      x := 0;
      while x < ArrayDados.Size do
      begin
        SetLength(CarrinhoIDs, x+1);
        CarrinhoIDs[x] := ArrayDados.Get(x).GetValue<integer>('cart_id', 0);
        x := x + 1;
      end;

      if (item_escolhido > 0) and (item_escolhido <= x) then begin
        sql := 'SELECT DISTINCT '+
               'mt_bot_cart_temp.total AS cart_total, '+
               'mt_bot_order_temp.id AS order_id, '+
               'mt_bot_order_temp.subtotal AS order_subtotal, '+
               'mt_bot_order_temp.total AS order_total '+
               'FROM mt_bot_cart_temp, mt_bot_order_temp '+
               'WHERE	mt_bot_cart_temp.order_id = mt_bot_order_temp.id '+
               'AND mt_bot_cart_temp.id = '+CarrinhoIDs[item_escolhido-1].ToString;
        Json := Tabelas.InjectSQL(sql);
        ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

        PedidoID := ArrayDados.Get(0).GetValue<integer>('order_id', 0);
        CarrinhoTotal := ArrayDados.Get(0).GetValue<double>('cart_total', 0);
        PedidoSubTotal := ArrayDados.Get(0).GetValue<double>('order_subtotal', 0);
        PedidoTotal := ArrayDados.Get(0).GetValue<double>('order_total', 0);
        PedidoTotal := PedidoTotal - CarrinhoTotal;
        PedidoSubTotal := PedidoSubTotal - CarrinhoTotal;

        sql := 'UPDATE mt_bot_order_temp SET '+
               '  subtotal = '+StringReplace(FloatToStr(PedidoSubTotal),',','.',[rfReplaceAll])+', '+
               '  total = '+StringReplace(FloatToStr(PedidoTotal),',','.',[rfReplaceAll])+' '+
               'WHERE id = '+PedidoID.ToString;
        Tabelas.InjectSQL(sql);

        sql := 'DELETE FROM mt_bot_cart_temp WHERE id = '+CarrinhoIDs[item_escolhido-1].ToString;
        Tabelas.InjectSQL(sql);

        sql := 'SELECT '+
               '      mt_bot_cart_temp.id AS cart_id, '+
               '      mt_bot_cart_temp.qty AS cart_qty, '+
               '      mt_bot_cart_temp.description AS description, '+
               '      mt_bot_cart_temp.type_unit AS type_unit, '+
               '      mt_bot_cart_temp.product_value AS product_value, '+
               '      mt_bot_cart_temp.total AS cart_total '+
               'FROM	mt_bot_cart_temp, mt_bot_order_temp '+
               'WHERE	mt_bot_cart_temp.order_id = mt_bot_order_temp.id '+
               'AND		mt_bot_order_temp.number_whatsapp = '+QuotedStr(AChatID)+' '+
               'AND		mt_bot_order_temp.merchant_id = '+FMerchantID.ToString;
        Json := Tabelas.InjectSQL(sql);

        if Json <> 'sql_vazio' then
        begin
          ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

          MensagemBot := 'Item removido com sucesso 👏\n'+
                         FMsgDivisor+'\n\n'+
                         '*Meu carrinho* 🛒';

          x := 0;
          item := 0;
          sub_total := 0;
          while x < ArrayDados.Size do
          begin
            item := item + 1;
            MensagemBot := MensagemBot+'\n\n*['+item.ToString+']* '+
                           ArrayDados.Get(x).GetValue<string>('description', '')+'\n';

            if ArrayDados.Get(x).GetValue<string>('type_unit', '') <> 'UN' then
              MensagemBot := MensagemBot + FormatFloat('#,0.000', StrToFloat(StringReplace(ArrayDados.Get(x).GetValue<string>('cart_qty', ''),'.',',',[rfReplaceAll])))
            else
              MensagemBot := MensagemBot + ArrayDados.Get(x).GetValue<string>('cart_qty', '');

            MensagemBot := MensagemBot + ' x '+FormatFloat('#,0.00', StrToFloat(StringReplace(ArrayDados.Get(x).GetValue<string>('product_value', ''),'.',',',[rfReplaceAll]))) + ' = ';

            car_total := StrToFloat(StringReplace(ArrayDados.Get(x).GetValue<string>('cart_total', ''),'.',',',[rfReplaceAll]));
            sub_total := sub_total + car_total;

            MensagemBot := MensagemBot + FormatFloat('#,0.00', car_total);
            x := x + 1;
          end;

          MensagemBot := MensagemBot + '\n\n*Sub-Total: R$'+FormatFloat('#,0.00', sub_total)+ '*\n'+
                         FrmPrincipal.FMsgDivisor +'\n\n'+
                         'Para *remover* um produto do carrinho informe o número do item.\n'+
                         FrmPrincipal.FMsgDivisor +'\n\n'+
                         '*[C]* Continuar comprando\n'+
                         '*[F]* Finalizar pedido';
          TInject1.Send(AChatID, MensagemBot);
        end else
        begin
        MensagemBot := 'Item removido com sucesso 👏\n'+
                       FMsgDivisor+'\n\n'+
                       '*Meu carrinho* 🛒\n\n'+
                       '(Carrinho vazio)\n'+FrmPrincipal.FMsgDivisor+'\n\n'+
                       '*[C]* Continuar comprando\n'+
                       '*[F]* Finalizar pedido';
          TInject1.Send(AChatID, MensagemBot);
        end;
      end else
        BotEstado := ExecutaVisualizaCarrinho(AChatID, 'a');
    end else begin
      sql := 'SELECT '+
             '      mt_bot_cart_temp.id AS cart_id, '+
             '      mt_bot_cart_temp.qty AS cart_qty, '+
             '      mt_bot_cart_temp.description AS description, '+
             '      mt_bot_cart_temp.type_unit AS type_unit, '+
             '      mt_bot_cart_temp.product_value AS product_value, '+
             '      mt_bot_cart_temp.total AS cart_total '+
             'FROM	mt_bot_cart_temp, mt_bot_order_temp '+
             'WHERE	mt_bot_cart_temp.order_id = mt_bot_order_temp.id '+
             'AND		mt_bot_order_temp.number_whatsapp = '+QuotedStr(AChatID)+' '+
             'AND		mt_bot_order_temp.merchant_id = '+FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
      if Json <> 'sql_vazio' then begin
        ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
        MensagemBot := '*Meu carrinho* 🛒';

        x := 0;
        item := 0;
        sub_total := 0;
        while x < ArrayDados.Size do
        begin
          item := item + 1;
          MensagemBot := MensagemBot+'\n\n*['+item.ToString+']* '+
                         ArrayDados.Get(x).GetValue<string>('description', '')+'\n';

          if ArrayDados.Get(x).GetValue<string>('type_unit', '') <> 'UN' then
            MensagemBot := MensagemBot + FormatFloat('#,0.000', StrToFloat(StringReplace(ArrayDados.Get(x).GetValue<string>('cart_qty', ''),'.',',',[rfReplaceAll])))
          else
            MensagemBot := MensagemBot + ArrayDados.Get(x).GetValue<string>('cart_qty', '');

          MensagemBot := MensagemBot + ' x '+FormatFloat('#,0.00', StrToFloat(StringReplace(ArrayDados.Get(x).GetValue<string>('product_value', '0'),'.',',',[rfReplaceAll]))) + ' = ';

          car_total := StrToFloat(StringReplace(ArrayDados.Get(x).GetValue<string>('cart_total', ''),'.',',',[rfReplaceAll]));
          sub_total := sub_total + car_total;

          MensagemBot := MensagemBot + FormatFloat('#,0.00', car_total);
          x := x + 1;
        end;

        MensagemBot := MensagemBot + '\n\n*Sub-Total: R$'+FormatFloat('#,0.00', sub_total)+ '*\n'+
                       FrmPrincipal.FMsgDivisor +'\n\n'+
                       'Para *remover* um produto do carrinho informe o número do item.\n'+
                       FrmPrincipal.FMsgDivisor +'\n\n'+
                       '*[C]* Continuar comprando\n'+
                       '*[F]* Finalizar pedido';
        TInject1.Send(AChatID, MensagemBot);
      end else begin
        MensagemBot := '*Meu carrinho* 🛒\n\n'+
                       '(Carrinho vazio)\n'+FrmPrincipal.FMsgDivisor+'\n\n'+
                       '*[C]* Continuar comprando\n'+
                       '*[F]* Finalizar pedido';
        TInject1.Send(AChatID, MensagemBot);
      end;
    end;
  end;

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaMenuPosCompra(AChatID, Mensagem : String) : String;
var
  BotEstado, MensagemBot, sql, Json, DataHora: string;
  ArrayDados : TJSONArray;
  x, item: Integer;
  sub_total, car_total: double;
begin
  BotEstado := 'menu_pos_compra';

  DataHora := Copy(DateToStr(Date()),7,4)+'-'+
              Copy(DateToStr(Date()),4,2)+'-'+
              Copy(DateToStr(Date()),1,2)+' '+
              TimeToStr(Time());

  if UpperCase(Mensagem) = 'V' then
    BotEstado := ExecutaVisualizaCarrinho(AChatID, '')
  else if UpperCase(Mensagem) = 'C' then
    BotEstado := ExecutaCategoria(AChatID, '')
  else if UpperCase(Mensagem) = 'F' then begin
    sql := 'SELECT mt_bot_cart_temp.id AS cart_id '+
           'FROM mt_bot_cart_temp, mt_bot_order_temp '+
           'WHERE	mt_bot_cart_temp.order_id = mt_bot_order_temp.id '+
           'AND	mt_bot_order_temp.number_whatsapp = '+QuotedStr(AChatID)+' '+
           'AND	mt_bot_order_temp.merchant_id = '+FMerchantID.ToString;
    Json := Tabelas.InjectSQL(sql);
    if Json = 'sql_vazio' then begin
      MensagemBot := 'Seu carrinho está vazio! Adicione produtos ao seu '+
                     'carrinho para prosseguir com seu pedido.\n'+
                     FMsgDivisor+'\n\n'+FMsgMenuPosCompra;

      TInject1.Send(AChatID, MensagemBot);
    end else begin
      sql := 'SELECT DISTINCT '+
             '   mt_client.name AS client_name '+
             'FROM mt_client, mt_client_phone '+
             'WHERE mt_client.id = mt_client_phone.client_id '+
             'AND mt_client.merchant_id = '+FMerchantID.ToString+' '+
             'AND mt_client_phone.phone LIKE '+QuotedStr(ConvertWhatsappToNumber(AChatID));
      Json := Tabelas.InjectSQL(sql);
      if Json = 'sql_vazio' then begin
        MensagemBot := FMsgSolicitaNomeCliente;
        MensagemBot := StringReplace(MensagemBot,'[div]',FMsgDivisor,[rfReplaceAll]);
        MensagemBot := StringReplace(MensagemBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);
        TInject1.Send(AChatID, MensagemBot);
        BotEstado := 'cadastra_nome_cliente';
      end else begin
        ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
        BotEstado := ExecutaCadastroNomeCliente(AChatID, ArrayDados.Get(0).GetValue<string>('client_name', ''));
      end;
    end;
  end else begin
    MensagemBot := FMsgMenuPosCompra;
    TInject1.Send(AChatID, MensagemBot);
  end;

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaQuantidade(AChatID, Mensagem: String) : String;
var
  BotEstado, Json, sql, DataHora, MsgBot, PedidoID: string;
  Valido : Boolean;
  QtdDouble, CartTotal, OrderSubTotal, OrderTotal: Double;
  QtdInt: Integer;
  ArrayDados : TJSONArray;
begin
  DataHora := Copy(DateToStr(Date()),7,4)+'-'+
              Copy(DateToStr(Date()),4,2)+'-'+
              Copy(DateToStr(Date()),1,2)+' '+
              TimeToStr(Time());

  if UpperCase(Mensagem) = 'V' then
  begin
    if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
      sql := 'SELECT category_select AS id '
    else
      sql := 'SELECT cmd_catg_select AS id ';

    sql := sql +
          'FROM mt_bot_interaction '+
          'WHERE number_whatsapp LIKE '+QuotedStr(AChatID)+' '+
          'AND merchant_id = '+FMerchantID.ToString;
    Json := Tabelas.InjectSQL(sql);
    ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
    BotEstado := ExecutaCategoria(AChatID, ArrayDados.Get(0).GetValue<string>('id', '0'));
  end else if Mensagem = '' then begin
    sql := 'SELECT DISTINCT '+
           '   mt_product.name AS product_name '+
           'FROM mt_product, mt_bot_interaction '+
           'WHERE mt_product.id = mt_bot_interaction.product_select '+
           'AND mt_bot_interaction.merchant_id = '+FMerchantID.ToString+' '+
           'AND mt_bot_interaction.number_whatsapp LIKE '+QuotedStr(AChatID);
    Json := Tabelas.InjectSQL(sql);
    ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

    MsgBot := FMsgMenuQuantidade;
    MsgBot := StringReplace(MsgBot,'[nome_produto]',ArrayDados.Get(0).GetValue<string>('product_name', ''),[rfReplaceAll]);
    MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
    MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);

    TInject1.Send(AChatID, MsgBot);
    BotEstado := 'quantidade';
  end else if TryStrToFloat(Mensagem, QtdDouble) and (QtdDouble > 0) then begin
    sql := 'SELECT DISTINCT '+
           '   mt_product.id AS product_id, '+
           '   mt_product.name AS product_name, '+
           '   mt_product.type_unit AS product_type_unit, '+
           '   mt_product.value AS product_value, '+
           '  (SELECT id FROM mt_bot_order_temp WHERE merchant_id = '+FMerchantID.ToString+' '+
           '   AND number_whatsapp = '+QuotedStr(AChatID)+') AS order_id, '+
           '  (SELECT subtotal FROM mt_bot_order_temp WHERE merchant_id = '+FMerchantID.ToString+' '+
           '   AND number_whatsapp = '+QuotedStr(AChatID)+') AS order_subtotal, '+
           '  (SELECT delivery_fee FROM mt_bot_order_temp WHERE merchant_id = '+FMerchantID.ToString+' '+
           '   AND number_whatsapp = '+QuotedStr(AChatID)+') AS order_delivery_fee '+
           'FROM mt_product, mt_bot_interaction '+
           'WHERE mt_product.id = mt_bot_interaction.product_select '+
           'AND	mt_product.merchant_id = '+FMerchantID.ToString+' '+
           'AND	mt_bot_interaction.merchant_id = '+FMerchantID.ToString+' '+
           'AND	mt_bot_interaction.number_whatsapp = '+QuotedStr(AChatID);
    Json := Tabelas.InjectSQL(sql);
    ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
    Valido := true;

    if (ArrayDados.Get(0).GetValue<string>('product_type_unit', '') = 'UN') and (TryStrToInt(Mensagem, QtdInt) = false) then
      Valido := false;

    if Valido then begin
      PedidoID := ArrayDados.Get(0).GetValue<string>('order_id', '');

      if PedidoID = '' then begin
        sql := 'INSERT INTO mt_bot_order_temp (id, number_whatsapp, merchant_id, '+
               'payment_id, address_id, date_created, type_out, remark, delivery_fee, subtotal, '+
               'total, paid_out, change_money) VALUES (NULL, '+QuotedStr(AChatID)+', '+
               FMerchantID.ToString+', 0, 0, '+QuotedStr(DataHora)+', '''', '''', 0, 0, 0, 0, 0)';
        Tabelas.InjectSQL(sql);

        sql := 'SELECT DISTINCT '+
               '   mt_product.id AS product_id, '+
               '   mt_product.name AS product_name, '+
               '   mt_product.type_unit AS product_type_unit, '+
               '   mt_product.value AS product_value, '+
               '  (SELECT id FROM mt_bot_order_temp WHERE merchant_id = '+FMerchantID.ToString+' '+
               '   AND number_whatsapp = '+QuotedStr(AChatID)+') AS order_id, '+
               '  (SELECT subtotal FROM mt_bot_order_temp WHERE merchant_id = '+FMerchantID.ToString+' '+
               '   AND number_whatsapp = '+QuotedStr(AChatID)+') AS order_subtotal, '+
               '  (SELECT delivery_fee FROM mt_bot_order_temp WHERE merchant_id = '+FMerchantID.ToString+' '+
               '   AND number_whatsapp = '+QuotedStr(AChatID)+') AS order_delivery_fee '+
               'FROM mt_product, mt_bot_interaction '+
               'WHERE mt_product.id = mt_bot_interaction.product_select '+
               'AND	mt_product.merchant_id = '+FMerchantID.ToString+' '+
               'AND	mt_bot_interaction.merchant_id = '+FMerchantID.ToString+' '+
               'AND	mt_bot_interaction.number_whatsapp = '+QuotedStr(AChatID);
        Json := Tabelas.InjectSQL(sql);
        ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
        PedidoID := ArrayDados.Get(0).GetValue<string>('order_id', '0');
      end;

      CartTotal := StrToFloat(Mensagem) * ArrayDados.Get(0).GetValue<double>('product_value', 0);
      OrderSubTotal := ArrayDados.Get(0).GetValue<double>('order_subtotal', 0) + CartTotal;
      OrderTotal := OrderSubTotal + ArrayDados.Get(0).GetValue<double>('order_delivery_fee', 0);

      sql := 'INSERT INTO mt_bot_cart_temp (id, order_id, description, type_unit, qty, '+
             'product_id, product_value, total) VALUES (NULL, '+PedidoID+', '+
             QuotedStr(ArrayDados.Get(0).GetValue<string>('product_name', ''))+', '+
             QuotedStr(ArrayDados.Get(0).GetValue<string>('product_type_unit', ''))+', '+
             StringReplace(Mensagem,',','.',[rfReplaceAll])+', '+
             ArrayDados.Get(0).GetValue<string>('product_id', '')+', '+
             ArrayDados.Get(0).GetValue<string>('product_value', '')+', '+
             StringReplace(FloatToStr(CartTotal),',','.',[rfReplaceAll])+')';
      Tabelas.InjectSQL(sql);

      sql := 'UPDATE mt_bot_order_temp SET '+
             '  subtotal = '+StringReplace(FloatToStr(OrderSubTotal),',','.',[rfReplaceAll])+', '+
             '  total = '+StringReplace(FloatToStr(OrderTotal),',','.',[rfReplaceAll])+' '+
             'WHERE id = '+PedidoID;
      Tabelas.InjectSQL(sql);

      MsgBot := FMsgProdAdd+'\n'+
                FMsgDivisor+'\n\n'+
                FMsgMenuPosCompra;
      TInject1.Send(AChatID, MsgBot);
      BotEstado := 'menu_pos_compra';
    end else
      BotEstado := ExecutaQuantidade(AChatID,'');
  end else
    BotEstado := ExecutaQuantidade(AChatID, '');

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaProduto(AChatID, Mensagem : String) : String;
var
  BotEstado, MensagemBot, sql, Json, DataHora: string;
  ArrayDados : TJSONArray;
begin
  BotEstado := 'menu_produto';

  DataHora := Copy(DateToStr(Date()),7,4)+'-'+
              Copy(DateToStr(Date()),4,2)+'-'+
              Copy(DateToStr(Date()),1,2)+' '+
              TimeToStr(Time());

  if UpperCase(Mensagem) = 'V' then
    BotEstado := ExecutaCategoria(AChatID, '')
  else if Mensagem = '' then begin
    if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
      sql := 'SELECT category_select AS id '
    else
      sql := 'SELECT cmd_catg_select AS id ';

    sql := sql +
          'FROM mt_bot_interaction '+
          'WHERE number_whatsapp = '+QuotedStr(AChatID)+' '+
          'AND merchant_id = '+FMerchantID.ToString;
    Json := Tabelas.InjectSQL(sql);
    ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
    BotEstado := ExecutaCategoria(AChatID, ArrayDados.Get(0).GetValue<string>('id', '0'));
  end else begin
    sql := 'SELECT '+
           '  mt_product.id AS id '+
           'FROM mt_category, mt_product, mt_bot_interaction '+
           'WHERE mt_product.category_id = mt_category.id '+
           'AND mt_bot_interaction.number_whatsapp LIKE '+QuotedStr(AChatID)+' '+
           'AND mt_bot_interaction.category_select = mt_category.id '+
           'AND mt_product.active LIKE ''Sim'' ';
    if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
      sql := sql + 'AND mt_product.id = '+QuotedStr(Mensagem)+' '
    else
      sql := sql + 'AND mt_product.command = '+QuotedStr(Mensagem)+' ';
    sql := sql + 'AND mt_product.merchant_id = '+FMerchantId.ToString+' ';
    if Tabelas.mt_settings.FieldByName('block_negative_stock').AsString = 's' then
      sql := sql + 'AND mt_product.qtd > 0 ';
    sql := sql +'AND mt_category.merchant_id = '+FMerchantId.ToString+' '+
           'AND mt_bot_interaction.merchant_id = '+FMerchantId.ToString;
    Json := Tabelas.InjectSQL(sql);
    if Json = 'sql_vazio' then
      BotEstado := ExecutaProduto(AChatID,'')
    else begin
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

      sql := 'UPDATE mt_bot_interaction SET '+
             'product_select = '+ArrayDados.Get(0).GetValue<string>('id', '0')+', '+
             'cmd_prod_select = '+Mensagem+' '+
             'WHERE number_whatsapp LIKE '+QuotedStr(AChatID)+' '+
             'AND merchant_id = '+FMerchantId.ToString;
      Tabelas.InjectSQL(sql);

      BotEstado := ExecutaQuantidade(AChatID, '');
    end;
  end;

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaCategoria(AChatID, Mensagem : String) : String;
var
  BotEstado, MsgBot, Categorias, Produtos: string;
  Json, sql, DataHora, MsgFinalizarPedido: string;
  CmdCatgID, CmdProdID : string;
  ArrayDados : TJSONArray;
  x : integer;
  ExistePedido : Boolean;
begin
  BotEstado := 'menu_categoria';

  DataHora := Copy(DateToStr(Date()),7,4)+'-'+
              Copy(DateToStr(Date()),4,2)+'-'+
              Copy(DateToStr(Date()),1,2)+' '+
              TimeToStr(Time());

  {Verifica se existe pedido em andamento com itens no carringo para
   adicionar a mensagem de "Voltar ao menu anterior" na mensagem de categorias.}
  begin
    sql := 'SELECT id FROM mt_bot_order_temp '+
           'WHERE number_whatsapp LIKE '+QuotedStr(AChatID)+' '+
           'AND merchant_id = '+FMerchantID.ToString;
    Json := Tabelas.InjectSQL(sql);
    if Json = 'sql_vazio' then
      ExistePedido := False
    else
      ExistePedido := True
  end;

  if (ExistePedido) and (UpperCase(Mensagem) = 'V') then
    BotEstado := ExecutaMenuPosCompra(AChatID,'')
  else if (ExistePedido = False) and (UpperCase(Mensagem) = 'V') then
    BotEstado := ExecutaMenuInicial(AChatID,'')
  else if Mensagem = '' then begin
    sql := 'SELECT * FROM mt_category '+
           'WHERE active LIKE ''Sim'' '+
           'AND merchant_id = '+FMerchantID.ToString+' ';
    if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
      sql := sql + 'ORDER BY id'
    else
      sql := sql + 'ORDER BY command';
    Json := Tabelas.InjectSQL(sql);
    if Json = 'sql_vazio' then begin
      MsgBot := 'Nenhuma categoria disponível\n'+FMsgDivisor+'\n'+FMsgVoltar;
      TInject1.Send(AChatID,MsgBot);
    end else begin
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      Categorias := '';
      x := 0;
      while x < ArrayDados.Size do
      begin
        if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
          CmdCatgID := ArrayDados.Get(x).GetValue<string>('id', '0')
        else
          CmdCatgID := ArrayDados.Get(x).GetValue<string>('command', '0');

        Categorias := Categorias + '*['+CmdCatgID+']* '+ArrayDados.Get(x).GetValue<string>('name', '')+'\n';
        x := x + 1;
      end;
      Delete(Categorias,Length(Categorias)-1,2);

      MsgBot := FMsgMenuCategoria;
      MsgBot := StringReplace(MsgBot,'[categorias]',Categorias,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);

      TInject1.Send(AChatID,MsgBot);
    end;
  end else begin
    sql := 'SELECT DISTINCT '+
           '   mt_product.id AS product_id, '+
           '   mt_product.command AS product_command, '+
           '   mt_product.name AS product_name, '+
           '   mt_category.id AS category_id, '+
           '   mt_category.name AS category_name, '+
           '   mt_product.value AS product_value '+
           'FROM mt_product, mt_category '+
           'WHERE mt_product.category_id = mt_category.id '+
           'AND mt_category.active LIKE ''Sim'' '+
           'AND mt_product.active LIKE ''Sim'' '+
           'AND mt_category.merchant_id = '+FMerchantID.ToString+' '+
           'AND mt_product.merchant_id = '+FMerchantID.ToString+' ';
    if Tabelas.mt_settings.FieldByName('block_negative_stock').AsString = 's' then
      sql := sql + 'AND mt_product.qtd > 0 ';
    if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
      sql := sql + 'AND mt_category.id = '+QuotedStr(Mensagem)+' '
    else
      sql := sql + 'AND mt_category.command = '+QuotedStr(Mensagem)+' ';
    if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
      sql := sql + 'ORDER BY 1 ASC'
    else
      sql := sql + 'ORDER BY 2 ASC';
    Json := Tabelas.InjectSQL(sql);
    if Json = 'sql_vazio' then
      BotEstado := ExecutaCategoria(AChatID,'')
    else begin
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

      sql := 'UPDATE mt_bot_interaction SET '+
             'category_select = '+ArrayDados.Get(0).GetValue<string>('category_id', '')+', '+
             'cmd_catg_select = '+Mensagem+' '+
             'WHERE number_whatsapp = '+QuotedStr(AChatID)+' '+
             'AND merchant_id = '+FMerchantID.ToString;
      Tabelas.InjectSQL(sql);

      x := 0;
      Produtos := '';
      while x < ArrayDados.Size do
      begin
        if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
          CmdProdID := ArrayDados.Get(x).GetValue<string>('product_id', '')
        else
          CmdProdID := ArrayDados.Get(x).GetValue<string>('product_command', '');

        Produtos := Produtos + '*['+CmdProdID+']* '+
                    ArrayDados.Get(x).GetValue<string>('product_name', '')+' (R$'+
                    FormatFloat('#,0.00',ArrayDados.Get(x).GetValue<double>('product_value', 0))+')\n';
        x := x + 1;
      end;
      Delete(Produtos,Length(Produtos)-1,2);

      MsgBot := FMsgMenuProduto;
      MsgBot := StringReplace(MsgBot,'[nome_categoria]',ArrayDados.Get(0).GetValue<string>('category_name', ''),[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[produtos]',Produtos,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[div]',FMsgDivisor,[rfReplaceAll]);
      MsgBot := StringReplace(MsgBot,'[voltar]',FMsgVoltar,[rfReplaceAll]);

      TInject1.Send(AChatID,MsgBot);
      BotEstado := 'menu_produto';
    end;
  end;

  Result := BotEstado;
end;

function TFrmPrincipal.ExecutaMenuInicial(AChatID, Mensagem : String) : String;
var
  BotEstado, sql, MsgBot, Json, Telefones, Pagamentos: string;
  ArrayDados : TJSONArray;
  x : integer;
begin
  BotEstado := 'menu_inicial';

  if Mensagem = '1' then
    BotEstado := ExecutaCategoria(AChatID,'')
  else if Mensagem = '2' then begin
    Telefones := '';
    Telefones := Tabelas.mt_merchant.FieldByName('phone1').AsString+'\n\n';
    if Tabelas.mt_merchant.FieldByName('phone2').AsString = '' then
      Delete(Telefones,Length(Telefones)-3,4)
    else
      Telefones := Telefones + Tabelas.mt_merchant.FieldByName('phone2').AsString;

    MsgBot := FMsgFalarAtendente;
    MsgBot := StringReplace(MsgBot,'[telefones]',Telefones,[rfReplaceAll]);
    TInject1.Send(AChatID,MsgBot);
  end else if Mensagem = '3' then begin
    MsgBot := Tabelas.mt_merchant.FieldByName('opening_hours').AsString;
    TInject1.Send(AChatID,MsgBot);
  end else if Mensagem = '4' then begin
    sql := 'SELECT * FROM mt_payment '+
           'WHERE merchant_id = '+FMerchantID.ToString+' '+
           'AND active LIKE ''Sim'' '+
           'AND name NOT LIKE ''A prazo'' '+
           'ORDER BY 1 ASC';
    Json := Tabelas.InjectSQL(sql);

    if Json = 'sql_vazio' then
      MsgBot := 'Nenhum pagamento encontrado\n'+FMsgDivisor+'\n\n'+FMsgVoltar
    else begin
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

      Pagamentos := '';
      x := 0;
      while x < ArrayDados.Size do begin
        Pagamentos := Pagamentos + '- '+
                      ArrayDados.Get(x).GetValue<string>('name', '')+'\n';
        x := x + 1;
      end;
      Delete(Pagamentos,Length(Pagamentos)-1,2);

      MsgBot := FMsgFormaPagamento;
      MsgBot := StringReplace(MsgBot,'[pagamentos]',Pagamentos,[rfReplaceAll]);
    end;

    TInject1.Send(AChatID,MsgBot);
  end else begin
    MsgBot := FMsgMenuInicial;
    TInject1.Send(AChatID,MsgBot);
  end;

  Result := BotEstado;
end;

procedure TfrmPrincipal.btBairrosClick(Sender: TObject);
var
  sql, Json: string;
begin
  if not AllowOperator('district_view') then
    Exit;

  Enabled := False;
  frmLoading.Show;
  Application.CreateForm(TfrmBairros, frmBairros);

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM	mt_district '+
             'WHERE merchant_id = '+FMerchantID.ToString+' '+
             'AND name NOT LIKE ''S/B'' '+
             'ORDER BY active DESC, command, name';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_district, ConvertJsonToValue(Json));
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if Json = 'sql_erro' then
        ShowMessage('Ocorreu um erro de conexão')
      else if Json = 'sql_vazio' then begin
        frmBairros.NotExistsDados;
        frmBairros.ShowModal;
      end else begin
        frmBairros.ExistsDados;
        frmBairros.ShowModal;
      end;

      frmBairros.Free;
    end);
  end).Start;
end;

procedure TfrmPrincipal.btCategoriasClick(Sender: TObject);
var
  sql, Json: string;
begin
  if not AllowOperator('category_view') then
    Exit;

  Enabled := False;
  frmLoading.Show;
  Application.CreateForm(TfrmCategorias, frmCategorias);

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM	mt_category '+
             'WHERE merchant_id = '+FMerchantID.ToString+' '+
             'ORDER BY active DESC, command, name';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_category, Json);
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if Json = 'sql_erro' then
        ShowMessage('Ocorreu um erro de conexão')
      else if Json = 'sql_vazio' then begin
        frmCategorias.NotExistsDados;
        frmCategorias.ShowModal;
      end else begin
        frmCategorias.ExistsDados;
        frmCategorias.ShowModal;
      end;

      frmCategorias.Free;
    end);
  end).Start;
end;

procedure TfrmPrincipal.btClientesClick(Sender: TObject);
var
  sql, Json : string;
begin
  if not AllowOperator('client_view') then
    Exit;

  Enabled := false;
  frmLoading.Show;
  Application.CreateForm(TfrmClientes, frmClientes);

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM mt_district WHERE name NOT LIKE ''S/B'' ORDER BY id ASC';
      Json := Tabelas.InjectSQL(sql);

      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_district, ConvertJsonToValue(Json));

        sql := 'SELECT DISTINCT '+
               '       mt_client.id AS id, '+
               '       mt_client_phone.major AS phone_major, '+
               '       mt_client_address.major AS address_major, '+
               '       mt_client.name AS name, '+
               '       mt_client.obs AS obs, '+
               '       mt_client_address.id AS address_id, '+
               '       mt_client_phone.id AS phone_id, '+
               '       mt_client_phone.phone AS phone, '+
               '       mt_client_address.address AS address, '+
               '       mt_district.name AS district '+
               'FROM   mt_client, mt_client_address, mt_client_phone, mt_district '+
               'WHERE  mt_client.id = mt_client_address.client_id '+
               'AND    mt_client.id = mt_client_phone.client_id '+
               'AND    mt_client_address.district_id = mt_district.id '+
               'AND    mt_client.merchant_id = '+FMerchantID.ToString+' '+
               'AND    mt_client.name NOT LIKE ''Consumidor'' '+
               'AND    mt_client_phone.phone NOT LIKE ''S/T'' '+
               'AND    mt_client_address.address NOT LIKE ''S/L'' '+
               'GROUP BY mt_client.id '+
               'ORDER BY name, phone_major DESC, address_major DESC';
        Json := Tabelas.InjectSQL(sql);

        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
          Tabelas.JsonToDataset(Tabelas.mt_client, Json);
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if Json = 'sql_erro' then
        ShowMessage('Ocorreu um erro de conexão')
      else if Json = 'sql_vazio' then begin
        frmClientes.NotExistsDados;
        frmClientes.ShowModal;
      end else begin
        frmClientes.ExistsDados;
        frmClientes.ShowModal;
      end;

      frmClientes.Free;
    end);
  end).Start;
end;

procedure TfrmPrincipal.btConectarWhatsappClick(Sender: TObject);
begin
  try
    FrmConsole.Close;
  except
  end;

  if not TInject1.Auth(false) then
  Begin
    TInject1.FormQrCodeType := TFormQrCodeType(1);
    TInject1.FormQrCodeStart;
  End;

  if not TInject1.FormQrCodeShowing then
     TInject1.FormQrCodeShowing := True;

  FrmConsole.Caption := 'Whatsapp Web';
  FrmConsole.WindowState := TWindowState.wsMaximized;
  FrmConsole.Pnl_Top.Visible := false;
end;

procedure TfrmPrincipal.btContasClick(Sender: TObject);
var
  sql, json : string;
  ArrayDados : TJSONArray;
begin
  if not AllowOperator('bill_view') then
    Exit;

  Enabled := false;
  frmLoading.Show;
  Application.CreateForm(TfrmContas, frmContas);

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM	mt_merchant WHERE id = '+frmPrincipal.FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);

      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
          Tabelas.JsonToDataset(Tabelas.mt_merchant, Json);

        sql := 'SELECT DISTINCT '+
               '   mt_bill_receive.id AS bill_id, '+
               '     mt_client.name AS client_name, '+
               '     mt_bill_receive.date_created AS date_created, '+
               '     mt_bill_receive.status AS status, '+
               '    (SELECT SUM(mt_order.valor_total) FROM mt_order, mt_list_bill_receive '+
               '     WHERE mt_order.id = mt_list_bill_receive.order_id '+
               '     AND mt_list_bill_receive.bill_receive_id = bill_id)  AS valor_total '+
               'FROM mt_bill_receive, mt_list_bill_receive, mt_client '+
               'WHERE mt_bill_receive.id = mt_list_bill_receive.bill_receive_id '+
               'AND mt_bill_receive.client_id = mt_client.id '+
               'AND mt_bill_receive.merchant_id = '+FMerchantID.ToString+' '+
               'AND mt_bill_receive.status LIKE ''Em aberto'' '+
               'ORDER BY 4 ASC, 3 DESC, 2 ASC';
        Json := Tabelas.InjectSQL(sql);
        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
          Tabelas.JsonToDataset(Tabelas.mt_bill_receive, ConvertJsonToValue(Json));
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if Json = 'sql_erro' then
        ShowMessage('Ocorreu um erro de conexão')
      else if Json = 'sql_vazio' then begin
        frmContas.NotExistsDados;
        frmContas.ShowModal;
      end else begin
        frmContas.ExistsDados;
        frmContas.ShowModal;
      end;

      frmContas.Free;

    end);
  end).Start;
end;

procedure TfrmPrincipal.btEntrarClick(Sender: TObject);
var
  FOperatorID, Reg: Integer;
  sql, Json, Versao: String;
  ArrayDados : TJSONArray;
begin
  Enabled := false;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      Reg := VerificaRegistro(StrToInt(edtMerchant.Text));

      if Reg <> -1 then begin
        sql := 'SELECT * FROM mt_operator '+
               'WHERE BINARY user LIKE '+QuotedStr(edtUsuario.Text)+' '+
               'AND BINARY password LIKE '+QuotedStr(MD5String(edtSenha.Text))+' '+
               'AND merchant_id = '+edtMerchant.Text;
        Json := Tabelas.InjectSQL(sql);
        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
          ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
          FOperatorID := ArrayDados.Get(0).GetValue<integer>('id', 0);

          sql := 'SELECT * FROM mt_operator WHERE merchant_id = '+edtMerchant.Text;
          Json := Tabelas.InjectSQL(sql);
          if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
            Tabelas.JsonToDataset(Tabelas.mt_operator, Json);
            Tabelas.mt_operator.Locate('id',FOperatorID,[loCaseInsensitive]);

            sql := 'UPDATE mt_settings SET version = '+QuotedStr(Versao)+' '+
                   'WHERE merchant_id = '+edtMerchant.Text;
            Tabelas.InjectSQL(sql);

            sql := 'SELECT * FROM mt_settings WHERE merchant_id = '+edtMerchant.Text;
            Json :=  Tabelas.InjectSQL(sql);
            if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
              Tabelas.JsonToDataset(Tabelas.mt_settings, Json);

              sql := 'SELECT * FROM mt_merchant WHERE id = '+edtMerchant.Text;
              Json :=  Tabelas.InjectSQL(sql);
              if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
                Tabelas.JsonToDataset(Tabelas.mt_merchant, Json);
                FMerchantID := StrToInt(edtMerchant.Text);
                if not ProcessLoadingMessageBot then
                  Json := 'sql_erro';
              end;
            end;
          end;
        end;
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if Json = 'sql_erro' then
        ShowMessage('Ocorreu um erro de conexão')
      else if Json = 'sql_vazio' then
        ShowMessage('Dados de acesso inválidos')
      else begin
        lbStatusRegistro.Caption := '';
        lbDataExpiracao.Caption := '';

        if Reg = 0 then
          lbStatusRegistro.Caption := 'Registro Inválido!'
        else if Reg = 1 then
          lbStatusRegistro.Caption := 'Registro Válido!'
        else if Reg = 2 then
          lbStatusRegistro.Caption := 'Registro Expirado!'
        else if Reg = 3 then begin
          ShowMessage('Erro na proteção do sistema!'+#13+'Ligue para o suporte!');
          Application.Terminate;
        end;

        Versao := GetBuildInfo(ExtractFilePath(ParamStr(0))+'FazPedido.exe');
        Versao := Copy(Versao,1,Length(Versao)-2);
        lbVersao.Caption := 'Versão ' + Versao;

        lbUser.Caption := Tabelas.mt_operator.FieldByName('name').AsString;

        pnLogin.Visible := false;
        pnPrincipal.Visible := true;
        BorderIcons := BorderIcons + [biMaximize];
        BorderStyle := bsSizeable;
        WindowState := wsMaximized;
        frmPrincipal.Constraints.MinWidth := 900;
        frmPrincipal.Constraints.MinHeight := 600;

        if Reg <> 1 then begin
          if Application.MessageBox('Registro Inválido'+#13+'Deseja efetuar o registro agora?','Atenção!',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then begin
            Application.CreateForm(TfrmValidacaoRegistro, frmValidacaoRegistro);
            frmValidacaoRegistro.edtCodigo.Text := FCodigoRegistro;
            frmValidacaoRegistro.ShowModal;
            frmValidacaoRegistro.Free;
          end else
            Application.Terminate;
        end
      end;

    end);
  end).Start;
end;

procedure TfrmPrincipal.btGeralClick(Sender: TObject);
begin
  Application.CreateForm(TfrmGeral, frmGeral);
  frmGeral.FOperadorLogado := Tabelas.mt_operator.FieldByName('id').AsInteger;
  frmGeral.ShowModal;
  frmGeral.Free;
end;

procedure TfrmPrincipal.btPagamentosClick(Sender: TObject);
var
  sql, Json: string;
begin
  if not AllowOperator('payment_view') then
    Exit;

  Enabled := False;
  frmLoading.Show;
  Application.CreateForm(TfrmPagamentos, frmPagamentos);

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM	mt_payment '+
             'WHERE merchant_id = '+FMerchantID.ToString+' '+
             'ORDER BY active DESC, command';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_payment, ConvertJsonToValue(Json));
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if Json = 'sql_erro' then
        ShowMessage('Ocorreu um erro de conexão')
      else if Json = 'sql_vazio' then begin
        frmPagamentos.NotExistsDados;
        frmPagamentos.ShowModal;
      end else begin
        frmPagamentos.ExistsDados;
        frmPagamentos.ShowModal;
      end;

      frmPagamentos.Free;
    end);
  end).Start;
end;

procedure TfrmPrincipal.btPedidosClick(Sender: TObject);
var
  sql, Json, DataHora, DataHoje: string;
  OperadorAtual, QtdPedidos: Integer;
  ArrayDados : TJSONArray;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM mt_payment '+
             'WHERE merchant_id = '+FMerchantID.ToString+' '+
             'AND active LIKE ''Sim'' '+
             'ORDER BY id';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_payment, ConvertJsonToValue(Json));

        sql := 'SELECT * FROM mt_district '+
               'WHERE merchant_id = '+FMerchantID.ToString+' '+
               'AND name NOT LIKE ''S/B'' '+
               'ORDER BY id ASC';
        Json := Tabelas.InjectSQL(sql);
        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
          Tabelas.JsonToDataset(Tabelas.mt_district, ConvertJsonToValue(Json));

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
                 'AND     mt_merchant.id = '+FMerchantID.ToString+' '+
                 'AND     mt_order.date_created LIKE '+QuotedStr(DataHoje+'%')+' '+
                 'ORDER BY mt_order.id DESC;';
          Json := Tabelas.InjectSQL(sql);
          if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
            ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
            while QtdPedidos < ArrayDados.Size do
              Inc(QtdPedidos);

            Tabelas.JsonToDataset(Tabelas.mt_order, ConvertJsonToValue(Json));
          end;
        end;
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := True;
      frmLoading.FClose := True;
      frmLoading.Close;

      if Json = 'sql_erro' then
        ShowMessage('Ocorreu um erro na conexão')
      else begin
        Application.CreateForm(TfrmPedidos, frmPedidos);
        frmPedidos.lbNumPedidos.Caption := 'Pedidos: '+QtdPedidos.ToString;

        Tabelas.mt_district.First;
        frmPedidos.cbBairros.Items.Clear;
        frmPedidos.cbBairros.Items.Add('Todos os bairros');
        while not Tabelas.mt_district.Eof do begin
          frmPedidos.cbBairros.Items.Add(Tabelas.mt_district.FieldByName('name').AsString);
          Tabelas.mt_district.Next;
        end;
        frmPedidos.cbBairros.ItemIndex := 0;

        Tabelas.mt_payment.First;
        frmPedidos.cbPagamento.Items.Clear;
        frmPedidos.cbPagamento.Items.Add('Todos os pagamentos');
        while not Tabelas.mt_payment.Eof do begin
          frmPedidos.cbPagamento.Items.Add(Tabelas.mt_payment.FieldByName('name').AsString);
          Tabelas.mt_payment.Next;
        end;
        frmPedidos.cbPagamento.ItemIndex := 0;

        OperadorAtual := Tabelas.mt_operator.FieldByName('id').AsInteger;
        Tabelas.mt_operator.First;
        frmPedidos.cbAtendente.Items.Clear;
        frmPedidos.cbAtendente.Items.Add('Todos os atendentes');
        while not Tabelas.mt_operator.Eof do begin
          frmPedidos.cbAtendente.Items.Add(Tabelas.mt_operator.FieldByName('name').AsString);
          Tabelas.mt_operator.Next;
        end;
        frmPedidos.cbAtendente.ItemIndex := 0;
        Tabelas.mt_operator.Locate('id',OperadorAtual,[loCaseInsensitive]);

        if Json = 'sql_vazio' then
          frmPedidos.NotExistsDados
        else
          frmPedidos.ExistsDados;

        frmPedidos.ShowModal;
        frmPedidos.Free;
      end;
    end);
  end).Start;
end;

procedure TfrmPrincipal.btProdutosClick(Sender: TObject);
var
  sql, JsonCatg, JsonProd: string;
begin
  if not AllowOperator('product_view') then
    Exit;

  Enabled := False;
  frmLoading.Show;
  Application.CreateForm(TfrmProdutos, frmProdutos);

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM mt_category WHERE merchant_id = '+FMerchantID.ToString+' ORDER BY id ASC;';
      JsonCatg := Tabelas.InjectSQL(sql);

      if (JsonCatg <> 'sql_erro') and (JsonCatg <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_category, JsonCatg);
        sql := 'SELECT '+
               '      mt_product.id AS id, '+
               '      mt_product.command AS command, '+
               '      mt_category.id AS category_id, '+
               '      mt_category.name AS category_name, '+
               '      mt_product.name AS name, '+
               '      mt_product.value AS value, '+
               '      mt_product.qtd AS qtd, '+
               '      mt_product.detail AS detail, '+
               '      mt_product.active AS active, '+
               '      mt_product.type_unit, '+
               '      mt_product.merchant_id '+
               'FROM	mt_product, mt_category '+
               'WHERE	mt_category.id = mt_product.category_id '+
               'AND mt_category.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
               'AND mt_product.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
               'ORDER BY 9 DESC, 3, 2';
        JsonProd := Tabelas.InjectSQL(sql);
        if (JsonProd <> 'sql_erro') and (JsonProd <> 'sql_vazio') then
          Tabelas.JsonToDataset(Tabelas.mt_product, ConvertJsonToValue(JsonProd));
      end;
    except
      JsonCatg := 'sql_erro';
      JsonProd := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := True;
      frmLoading.FClose := True;
      frmLoading.Close;

      if (JsonCatg = 'sql_erro') or (JsonProd = 'sql_erro') then
        ShowMessage('Ocorreu um erro na conexão')
      else if JsonCatg = 'sql_vazio' then
        ShowMessage('Nenhuma categoria cadastrada')
      else begin
        frmProdutos.cbCategoria.Items.Clear;
        frmProdutos.cbCategoria.Items.Add('Todas as categorias');
        Tabelas.mt_category.First;
        while not Tabelas.mt_category.Eof do begin
          frmProdutos.cbCategoria.Items.Add(Tabelas.mt_category.FieldByName('name').AsString);
          Tabelas.mt_category.Next;
        end;
        frmProdutos.cbCategoria.ItemIndex := 0;

        if JsonProd = 'sql_vazio' then begin
          frmProdutos.NotExistsDados;
          frmProdutos.ShowModal;
        end else begin
          frmProdutos.ExistsDados;
          frmProdutos.ShowModal;
        end;
      end;

      frmProdutos.Free;
    end);
  end).Start;
end;

procedure TfrmPrincipal.btRelatoriosClick(Sender: TObject);
begin
  Application.CreateForm(TfrmRelatorios, frmRelatorios);
  frmRelatorios.ShowModal;
  frmRelatorios.Free;
end;

procedure TfrmPrincipal.edtMerchantKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    edtUsuario.SetFocus;
    key := #0;
  end;
end;

procedure TfrmPrincipal.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    btEntrar.Click;
    key := #0;
  end;
end;

procedure TfrmPrincipal.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    edtSenha.SetFocus;
    key := #0;
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown  := false;
  FIniciando := True;
  try
    GlobalCEFApp.LogConsoleActive := true;
  finally
    FIniciando := False;
  end;

  FWhatsappConectado := false;
  Width := 380;
  Height := 340;
  pnPrincipal.Align := alClient;
  pnLogin.Align := alClient;
  pnPrincipal.Visible := false;
  pnLogin.Visible := true;
end;

procedure TfrmPrincipal.FormResize(Sender: TObject);
var
  Intervalo: Integer;
begin
  Intervalo := Trunc((Width - 60 - (90 * 9)) / 8);
  pnBtClientes.Left := 20;
  pnBtBairros.Left := pnBtClientes.Left + pnBtClientes.Width + 1 + Intervalo;
  pnBtCategorias.Left := pnBtBairros.Left + pnBtBairros.Width + 1 + Intervalo;
  pnBtProdutos.Left := pnBtCategorias.Left + pnBtCategorias.Width + 1 + Intervalo;
  pnBtPainel.Left := pnBtProdutos.Left + pnBtProdutos.Width + 1 + Intervalo;
  pnPagamentos.Left := pnBtPainel.Left + pnBtPainel.Width + 1 + Intervalo;
  pnContas.Left := pnPagamentos.Left + pnPagamentos.Width + 1 + Intervalo;
  pnRelatorios.Left := pnContas.Left + pnContas.Width + 1 + Intervalo;
  pnGeral.Left := pnRelatorios.Left + pnRelatorios.Width + 1 + Intervalo;

  image2.Left := Trunc(image5.Width/2 - image2.Width/2);
  pnEntrar.Left := Trunc(image5.Width/2 - pnEntrar.Width/2);
  imgLogo.Left := Trunc(Width/2 - imgLogo.Width/2);
  imgLogo.Top := Trunc(Height/2 - imgLogo.Height/2);

  lbStatusWhatsapp.Left := pnStatus.Width - lbStatusWhatsapp.Width - 10;
  Label3.Left := lbStatusWhatsapp.Left - Label3.Width - 5;
  lbVersao.Top := pnStatus.Top - lbVersao.Height - 5;
  lbVersao.Left := pnStatus.Width - lbVersao.Width - 5;
  lbDataExpiracao.Top := lbVersao.Top - lbDataExpiracao.Height - 5;
  lbDataExpiracao.Left := pnStatus.Width - lbDataExpiracao.Width - 5;
  lbStatusRegistro.Top := lbDataExpiracao.Top - lbStatusRegistro.Height - 5;
  lbStatusRegistro.Left := pnStatus.Width - lbStatusRegistro.Width - 5;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  arq : TextFile;
  linha : string;
  Key : TKey;
  Code : TCode;
  Modifier : Longint;
  d : TDateTime;
begin
  //ler arquivo da url de conexão do servidor
  AssignFile(arq, ExtractFilePath(ParamStr(0))+'connection.dat');
  Reset(arq);
  Readln(arq, linha);
  Tabelas.FURLServidor := linha;
  CloseFile(arq);
end;

end.
