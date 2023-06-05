{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit uCadastroPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.Mask, MaskUtils, RLReport, System.JSON;

type
  TfrmCadastroPedido = class(TForm)
    pnTopo: TPanel;
    Image1: TImage;
    lbTitulo: TLabel;
    gbCarrinho: TGroupBox;
    gbCliente: TGroupBox;
    gbPagamento: TGroupBox;
    Label1: TLabel;
    lbQtdProdutos: TLabel;
    Label2: TLabel;
    lbSubTotal: TLabel;
    Label4: TLabel;
    lbDesconto: TLabel;
    Label6: TLabel;
    lbValorTotal: TLabel;
    Label8: TLabel;
    lbDescPagamento: TLabel;
    Label10: TLabel;
    lbValorPago: TLabel;
    Label12: TLabel;
    lbTroco: TLabel;
    imgAddPagamento: TImage;
    imgRemoveItem: TImage;
    pnBottom: TPanel;
    rbEntrega: TRadioButton;
    rbRetirada: TRadioButton;
    grdCart: TDBGrid;
    DScdsCarrinho: TDataSource;
    imgAddItem: TImage;
    pnInfoCliente: TPanel;
    Label17: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    gbStatusPedido: TGroupBox;
    rbMesa: TRadioButton;
    gbObservacoes: TGroupBox;
    mmObservacoes: TMemo;
    edtCliente: TEdit;
    btSalvarImprimir: TBitBtn;
    cbMesa: TComboBox;
    rpEntrega: TRLReport;
    RLBand1: TRLBand;
    rpELbLogradouroEmpresa: TRLLabel;
    rpELbNomeEmpresa: TRLLabel;
    rpELbBairroEmpresa: TRLLabel;
    rpELbWhatsAppEmpresa: TRLLabel;
    rpELbTelefoneEmpresa: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    rpELbNumPedido: TRLLabel;
    RLLabel3: TRLLabel;
    rpELbClienteNome: TRLLabel;
    RLLabel5: TRLLabel;
    rpELbAtendente: TRLLabel;
    RLLabel7: TRLLabel;
    rpELbClienteTelefone: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    rpELbClienteBairro: TRLLabel;
    rpEMmEndereco: TRLMemo;
    RLDraw2: TRLDraw;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel25: TRLLabel;
    RLBand2: TRLBand;
    RLLabel23: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand3: TRLBand;
    RLDraw4: TRLDraw;
    RLLabel22: TRLLabel;
    rpELbObs: TRLMemo;
    RLLabel24: TRLLabel;
    RLDraw5: TRLDraw;
    rpELbPagamento: TRLLabel;
    RLLabel27: TRLLabel;
    rpELbSubTotal: TRLLabel;
    RLLabel29: TRLLabel;
    rpELbDesconto: TRLLabel;
    RLLabel31: TRLLabel;
    rpELbValorTotal: TRLLabel;
    RLLabel33: TRLLabel;
    rpELbValorPago: TRLLabel;
    RLLabel35: TRLLabel;
    rpELbTroco: TRLLabel;
    RLDraw6: TRLDraw;
    rpElbMsgCupom: TRLLabel;
    rpRetirada: TRLReport;
    RLBand4: TRLBand;
    rpRLbLogradouroEmpresa: TRLLabel;
    rpRLbNomeEmpresa: TRLLabel;
    rpRLbBairroEmpresa: TRLLabel;
    rpRLbWhatsAppEmpresa: TRLLabel;
    rpRLbTelefoneEmpresa: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel12: TRLLabel;
    rpRLbNumPedido: TRLLabel;
    RLLabel40: TRLLabel;
    rpRLbCliente: TRLLabel;
    RLLabel42: TRLLabel;
    rpRLbAtendente: TRLLabel;
    RLLabel44: TRLLabel;
    rpRLbTelefone: TRLLabel;
    RLDraw8: TRLDraw;
    RLBand5: TRLBand;
    RLLabel60: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    rpRBandBottom: TRLBand;
    RLDraw10: TRLDraw;
    RLLabel61: TRLLabel;
    rpRLbObs: TRLMemo;
    RLLabel62: TRLLabel;
    RLDraw11: TRLDraw;
    rpRLbPagamento: TRLLabel;
    RLLabel64: TRLLabel;
    rpRLbSubTotal: TRLLabel;
    RLLabel66: TRLLabel;
    rpRLbDesconto: TRLLabel;
    RLLabel68: TRLLabel;
    rpRLbValorTotal: TRLLabel;
    RLLabel70: TRLLabel;
    rpRLbValorPago: TRLLabel;
    RLLabel72: TRLLabel;
    rpRLbTroco: TRLLabel;
    RLDraw12: TRLDraw;
    rpRlbMsgCupom: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel46: TRLLabel;
    rpRLbTipo: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLDraw9: TRLDraw;
    rpMesa: TRLReport;
    RLBand6: TRLBand;
    rpMlbEmpresaLogradouro: TRLLabel;
    rpMlbEmpresaNome: TRLLabel;
    rpMlbEmpresaBairro: TRLLabel;
    rpMlbEmpresaWhatsapp: TRLLabel;
    rpMlbEmpresaTelefone: TRLLabel;
    RLDraw14: TRLDraw;
    RLLabel14: TRLLabel;
    rpMlbNumPedido: TRLLabel;
    RLLabel43: TRLLabel;
    rpMlbCliente: TRLLabel;
    RLLabel47: TRLLabel;
    rpMlbAtendente: TRLLabel;
    RLLabel49: TRLLabel;
    rpMlbNumMesa: TRLLabel;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLLabel51: TRLLabel;
    rpMlbTipo: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel67: TRLLabel;
    RLDraw17: TRLDraw;
    RLBand7: TRLBand;
    RLLabel69: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLBand8: TRLBand;
    RLDraw18: TRLDraw;
    RLLabel71: TRLLabel;
    rpMmmObs: TRLMemo;
    RLLabel73: TRLLabel;
    RLDraw19: TRLDraw;
    rpMlbPagamento: TRLLabel;
    RLLabel77: TRLLabel;
    rpMlbSubTotal: TRLLabel;
    RLLabel79: TRLLabel;
    rpMlbDesconto: TRLLabel;
    RLLabel81: TRLLabel;
    rpMlbValorTotal: TRLLabel;
    RLLabel83: TRLLabel;
    rpMlbValorPago: TRLLabel;
    RLLabel85: TRLLabel;
    rpMlbTroco: TRLLabel;
    RLDraw20: TRLDraw;
    rpMlbMsgCupom: TRLLabel;
    btSalvar: TBitBtn;
    lbResultClient: TLabel;
    pnSalvarImprimir: TPanel;
    imgSalvarImprimir: TImage;
    lbSalvarImprimir: TLabel;
    pnSalvar: TPanel;
    imgSalvar: TImage;
    lbSalvar: TLabel;
    Label11: TLabel;
    lbAcrescimo: TLabel;
    mmEndereco: TMemo;
    Label3: TLabel;
    edtTelefone: TEdit;
    cbBairro: TDBLookupComboBox;
    Label9: TLabel;
    lbClienteSelecionado: TLabel;
    Label13: TLabel;
    lbTaxaEntrega: TLabel;
    RLLabel2: TRLLabel;
    rpRlbAcrescimo: TRLLabel;
    RLLabel4: TRLLabel;
    rpElbAcrescimo: TRLLabel;
    RLDraw21: TRLDraw;
    RLLabel8: TRLLabel;
    rpELbTipo: TRLLabel;
    RLDraw22: TRLDraw;
    RLLabel6: TRLLabel;
    rpElbTaxa: TRLLabel;
    RLLabel9: TRLLabel;
    rpMlbAcrescimo: TRLLabel;
    cdsCarrinho: TClientDataSet;
    cdsCarrinhoid: TIntegerField;
    cdsCarrinhoitem: TIntegerField;
    cdsCarrinhoproduct_id: TIntegerField;
    cdsCarrinhoproduct_name: TStringField;
    cdsCarrinhoqtd: TFloatField;
    cdsCarrinhovlr_unit: TFloatField;
    cdsCarrinhototal: TFloatField;
    lbStatusPedido: TLabel;
    pnFaixaStatus: TPanel;
    imgModificarStatus: TImage;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    imgAddCliente: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure imgAddItemClick(Sender: TObject);
    procedure imgRemoveItemClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdCartDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure imgAddClienteClick(Sender: TObject);
    procedure imgAddPagamentoClick(Sender: TObject);
    procedure cbStatusPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure btSalvarImprimirClick(Sender: TObject);
    procedure edtClienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumKeyPress(Sender: TObject; var Key: Char);
    procedure edtReferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure edtTelefoneChange(Sender: TObject);
    procedure rbRetiradaClick(Sender: TObject);
    procedure rbEntregaClick(Sender: TObject);
    procedure rbMesaClick(Sender: TObject);
    procedure cbMesaKeyPress(Sender: TObject; var Key: Char);
    procedure btSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbBairroCloseUp(Sender: TObject);
    procedure cbBairroKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imgModificarStatusClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FImprimir : boolean;
    procedure AddCliente;
    procedure Imprimir;
    procedure NovoPedido;
    procedure AtualizaPedido;
    { Private declarations }
  public
    FModoEdit: Boolean;
    FPaymentID, FQtdImpressao: Integer;
    FStatusPedidoInicial, FMsgAdicional : string;
    FNotificar : Boolean;

    // -- Dados do cliente --
    FClientID, FClientAddressID, FClientPhoneID, FBairroID: Integer;
    FNomeCliente, FEndereco, FTelefone: String;
    FEditClientName, FEditClientAddress, FEditClientPhone: Integer;
    // -------------------------------------------

    // -- Carrinho de pedido --
    FItem: Integer;
    FCartModify: boolean;
    // -------------------------------------------

    // -- Valores --
    FQtdItens: Integer;
    FSubTotal: Double;
    FDesconto: Double;
    FAcrescimo: Double;
    FValorTotal: Double;
    FValorPago: Double;
    FTaxaEntrega: Double;
    FTroco: Double;
    // -------------------------------------------

    procedure AtualizaValores;
    { Public declarations }
  end;

var
  frmCadastroPedido: TfrmCadastroPedido;

implementation

{$R *.dfm}

uses uTabelas, uLoading, uLIstaProdutos, uListaClientes, uConsultaPagamento,
  uPrincipal, uPedidos, uFormat, uFunctions,
  uConfirmaModificacaoCliente, uPerguntaQtdPrint, uModificarStatus;

function ProcessDadosCliente:Boolean;
var
  sql, Json, PhoneNum: string;
  ArrayDados : TJSONArray;
begin
  Result := false;

  PhoneNum := frmCadastroPedido.edtTelefone.Text;
  PhoneNum := StringReplace(PhoneNum,' ','',[rfReplaceAll]);
  PhoneNum := StringReplace(PhoneNum,'(','',[rfReplaceAll]);
  PhoneNum := StringReplace(PhoneNum,')','',[rfReplaceAll]);
  PhoneNum := StringReplace(PhoneNum,'-','',[rfReplaceAll]);

  if (frmCadastroPedido.FNomeCliente <> 'Consumidor') and
     (frmCadastroPedido.FEndereco <> 'S/L') and
     (frmCadastroPedido.FTelefone <> 'S/T') then begin
    if frmCadastroPedido.FEditClientName = 1 then begin
      sql := 'UPDATE mt_client SET '+
             'name = '+QuotedStr(frmCadastroPedido.edtCliente.Text)+', '+
             'obs = '+QuotedStr(frmCadastroPedido.mmObservacoes.Text)+' '+
             'WHERE id = '+frmCadastroPedido.FClientID.ToString;
      Tabelas.InjectSQL(sql);
    end else begin
      sql := 'UPDATE mt_client SET '+
             'obs = '+QuotedStr(frmCadastroPedido.mmObservacoes.Text)+' '+
             'WHERE id = '+frmCadastroPedido.FClientID.ToString;
      Tabelas.InjectSQL(sql);
    end;

    if (frmCadastroPedido.rbEntrega.Checked) or (frmCadastroPedido.rbRetirada.Checked) then begin
      if frmCadastroPedido.FEditClientPhone = 1 then begin
        sql := 'SELECT * FROM mt_client_phone '+
               'WHERE phone LIKE '+QuotedStr(PhoneNum)+' '+
               'AND client_id = '+frmCadastroPedido.FClientID.ToString;
        Json := Tabelas.InjectSQL(sql);

        if Json = 'sql_vazio' then begin
          sql := 'UPDATE mt_client_phone SET '+
                 'phone = '+QuotedStr(PhoneNum)+' '+
                 'WHERE id = '+frmCadastroPedido.FClientPhoneID.ToString;
          Tabelas.InjectSQL(sql);
        end;
      end else if frmCadastroPedido.FEditClientPhone = 2 then begin
        sql := 'SELECT * FROM mt_client_phone '+
               'WHERE phone LIKE '+QuotedStr(PhoneNum)+' '+
               'AND client_id = '+frmCadastroPedido.FClientID.ToString;
        Json := Tabelas.InjectSQL(sql);

        if Json = 'sql_vazio' then begin
          sql := 'INSERT INTO mt_client_phone (id, client_id, phone, major) VALUES (NULL, '+
                 frmCadastroPedido.FClientID.ToString+', '+
                 QuotedStr(PhoneNum)+', ''s'')';
          Tabelas.InjectSQL(sql);
          sql := 'SELECT MAX(id) AS id FROM mt_client_phone WHERE client_id = '+frmCadastroPedido.FClientID.ToString;
          Json := Tabelas.InjectSQL(sql);
        end;

        if Json <> 'sql_erro' then begin
          ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
          frmCadastroPedido.FClientPhoneID := ArrayDados.Get(0).GetValue<integer>('id', 0);
        end;
      end;
    end;

    if frmCadastroPedido.rbEntrega.Checked then begin
      if frmCadastroPedido.FEditClientAddress = 1 then begin
        sql := 'SELECT * FROM mt_client_address '+
               'WHERE address LIKE '+QuotedStr(frmCadastroPedido.mmEndereco.Lines.Text)+' '+
               'AND district_id = '+IntToStr(frmCadastroPedido.cbBairro.KeyValue)+' '+
               'AND client_id = '+frmCadastroPedido.FClientID.ToString;
        Json := Tabelas.InjectSQL(sql);

        if Json = 'sql_vazio' then begin
          sql := 'UPDATE mt_client_address SET '+
                 'address = '+QuotedStr(frmCadastroPedido.mmEndereco.Lines.Text)+', '+
                 'district_id = '+IntToStr(frmCadastroPedido.cbBairro.KeyValue)+' '+
                 'WHERE id = '+frmCadastroPedido.FClientAddressID.ToString;
          Tabelas.InjectSQL(sql);
        end;
      end else if frmCadastroPedido.FEditClientAddress = 2 then begin
        sql := 'SELECT * FROM mt_client_address '+
               'WHERE address LIKE '+QuotedStr(frmCadastroPedido.mmEndereco.Lines.Text)+' '+
               'AND district_id = '+IntToStr(frmCadastroPedido.cbBairro.KeyValue)+' '+
               'AND client_id = '+frmCadastroPedido.FClientID.ToString;
        Json := Tabelas.InjectSQL(sql);

        if Json = 'sql_vazio' then begin
          sql := 'INSERT INTO mt_client_address (id, client_id, address, district_id, major) VALUES (NULL, '+
                 frmCadastroPedido.FClientID.ToString+', '+
                 QuotedStr(frmCadastroPedido.mmEndereco.Lines.Text)+', '+
                 IntToStr(frmCadastroPedido.cbBairro.KeyValue)+', ''s'')';
          Tabelas.InjectSQL(sql);
          sql := 'SELECT MAX(id) AS id FROM mt_client_address WHERE client_id = '+frmCadastroPedido.FClientID.ToString;
          Json := Tabelas.InjectSQL(sql);
        end;

        if Json <> 'sql_erro' then begin
          ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
          frmCadastroPedido.FClientAddressID := ArrayDados.Get(0).GetValue<integer>('id', 0);
        end;
      end;
    end;

    sql := 'UPDATE mt_client_phone SET major = ''n'' WHERE client_id = '+frmCadastroPedido.FClientID.ToString;
    Tabelas.InjectSQL(sql);
    sql := 'UPDATE mt_client_phone SET major = ''s'' WHERE id = '+frmCadastroPedido.FClientPhoneID.ToString;
    Tabelas.InjectSQL(sql);
    sql := 'UPDATE mt_client_address SET major = ''n'' WHERE client_id = '+frmCadastroPedido.FClientID.ToString;
    Tabelas.InjectSQL(sql);
    sql := 'UPDATE mt_client_address SET major = ''s'' WHERE id = '+frmCadastroPedido.FClientAddressID.ToString;
    Tabelas.InjectSQL(sql);
  end;

  Result := true;
end;

function ProcessVendaPrazo(OrderID:String):Boolean;
var
  x : integer;
  ExistePedido : Boolean;
  sql, Json, dtNow, BillID: String;
  ArrayDados : TJSONArray;
begin
  Result := false;

  dtNow := DateTimeToStr(Now);
  dtNow := Copy(dtNow,7,4)+'-'+
           Copy(dtNow,4,2)+'-'+
           Copy(dtNow,1,2)+' '+
           Copy(dtNow,12,8);

  Tabelas.mt_payment.Locate('id',frmCadastroPedido.FPaymentID,[loCaseInsensitive]);
  if UpperCase(Tabelas.mt_payment.FieldByName('name').AsString) = 'A PRAZO' then begin
    sql := 'SELECT DISTINCT '+
           '  mt_bill_receive.id AS id, '+
           '  mt_list_bill_receive.order_id AS order_id '+
           'FROM mt_bill_receive, mt_list_bill_receive '+
           'WHERE mt_bill_receive.id = mt_list_bill_receive.bill_receive_id '+
           'AND mt_bill_receive.client_id = '+frmCadastroPedido.FClientID.ToString+' '+
           'AND mt_bill_receive.status LIKE ''Em aberto'' '+
           'AND mt_bill_receive.merchant_id = '+frmPrincipal.FMerchantID.ToString;
    Json := Tabelas.InjectSQL(sql);

    if (Json = 'sql_vazio') and (POS('CANCELADO',UpperCase(frmCadastroPedido.lbStatusPedido.Caption)) <= 0) then begin
      sql := 'INSERT INTO mt_bill_receive (id, client_id, date_created, '+
             'last_modified, status, merchant_id) VALUES (NULL, '+
             frmCadastroPedido.FClientID.ToString+', '+
             QuotedStr(dtNow)+', '+
             QuotedStr(dtNow)+', ''Em aberto'', '+frmPrincipal.FMerchantID.ToString+')';
      Tabelas.InjectSQL(sql);

      sql := 'INSERT INTO mt_list_bill_receive (id, order_id, bill_receive_id) '+
             'VALUES (NULL, '+OrderID+', '+
             '       (SELECT id FROM mt_bill_receive '+
             '        WHERE client_id = '+frmCadastroPedido.FClientID.ToString+' '+
             '        AND status LIKE ''Em aberto'' AND merchant_id = '+frmPrincipal.FMerchantID.ToString+'))';
      Tabelas.InjectSQL(sql);

      sql := 'SELECT DISTINCT '+
             '  mt_bill_receive.id AS id, '+
             '  mt_list_bill_receive.order_id AS order_id '+
             'FROM mt_bill_receive, mt_list_bill_receive '+
             'WHERE mt_bill_receive.id = mt_list_bill_receive.bill_receive_id '+
             'AND mt_bill_receive.client_id = '+frmCadastroPedido.FClientID.ToString+' '+
             'AND mt_bill_receive.status LIKE ''Em aberto'' '+
             'AND mt_bill_receive.merchant_id = '+frmPrincipal.FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
    end;

    if (Json <> 'sql_vazio') and (Json <> 'sql_erro') then begin
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      BillID := ArrayDados.Get(0).GetValue<string>('id', '0');

      if POS('CANCELADO',UpperCase(frmCadastroPedido.lbStatusPedido.Caption)) > 0 then begin
        sql := 'DELETE FROM mt_list_bill_receive WHERE order_id = '+OrderID;
        Tabelas.InjectSQL(sql);

        if (ArrayDados.Size = 1) and (ArrayDados.Get(0).GetValue<string>('order_id', '0') = OrderID) then begin
          sql := 'DELETE FROM mt_bill_receive WHERE id = '+BillID;
          Tabelas.InjectSQL(sql);
        end;
      end else begin
        ExistePedido := False;
        x := 0;
        while x < ArrayDados.Size do begin
          if OrderID = ArrayDados.Get(x).GetValue<string>('order_id', '0') then begin
            ExistePedido := true;
            Break;
          end;
          x := x + 1;
        end;

        if not ExistePedido then begin
          sql := 'INSERT INTO mt_list_bill_receive (id, order_id, bill_receive_id) '+
                 'VALUES (NULL, '+OrderID+', '+BillID+')';
          Tabelas.InjectSQL(sql);
        end;
      end;
    end;
  end else begin
    sql := 'SELECT DISTINCT '+
           '  mt_bill_receive.id AS id, '+
           '  mt_list_bill_receive.order_id AS order_id '+
           'FROM mt_bill_receive, mt_list_bill_receive '+
           'WHERE mt_bill_receive.id = mt_list_bill_receive.bill_receive_id '+
           'AND mt_bill_receive.client_id = '+frmCadastroPedido.FClientID.ToString+' '+
           'AND mt_bill_receive.status LIKE ''Em aberto'' '+
           'AND mt_bill_receive.merchant_id = '+frmPrincipal.FMerchantID.ToString;
    Json := Tabelas.InjectSQL(sql);

    if Json <> 'sql_vazio' then begin
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      BillID := ArrayDados.Get(0).GetValue<string>('id', '0');

      sql := 'DELETE FROM mt_list_bill_receive WHERE order_id = '+OrderID;
      Tabelas.InjectSQL(sql);

      if (ArrayDados.Size = 1) and (ArrayDados.Get(0).GetValue<string>('order_id', '0') = OrderID) then begin
        sql := 'DELETE FROM mt_bill_receive WHERE id = '+BillID;
        Tabelas.InjectSQL(sql);
      end;
    end;
  end;

  Result := true;
end;

procedure TfrmCadastroPedido.AddCliente;
var
  sql, Json: string;
begin
  Enabled := false;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM mt_client WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString+' ORDER BY name ASC;';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_client, Json);

        sql := 'SELECT DISTINCT '+
               'mt_client_address.id AS id, '+
               'mt_client_address.client_id AS client_id, '+
               'mt_district.id AS district_id, '+
               'mt_client_address.address AS address, '+
               'mt_district.name AS district_name, '+
               'mt_client_address.major AS major '+
               'FROM mt_client_address, mt_district '+
               'WHERE mt_client_address.district_id = mt_district.id '+
               'AND mt_client_address.client_id = '+Tabelas.Mt_client.FieldByName('id').AsInteger.ToString+' '+
               'ORDER BY mt_client_address.major DESC';
        Json := Tabelas.InjectSQL(sql);
        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
          Tabelas.JsonToDataset(Tabelas.mt_client_address, Json);

          sql := 'SELECT * FROM mt_client_phone '+
                 'WHERE client_id = '+Tabelas.Mt_client.FieldByName('id').AsInteger.ToString+' '+
                 'ORDER BY major DESC;';
          Json := Tabelas.InjectSQL(sql);
          if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
            Tabelas.JsonToDataset(Tabelas.mt_client_phone, Json);
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
        ShowMessage('Ocorreu um erro de conexão!')
      else if Json = 'sql_vazio' then begin
        Application.CreateForm(TfrmConsultaCliente, frmConsultaCliente);
        frmConsultaCliente.NotExistsDados;
        frmConsultaCliente.ShowModal;
        frmConsultaCliente.Free;
      end else begin
        Application.CreateForm(TfrmConsultaCliente, frmConsultaCliente);
        frmConsultaCliente.ExistsDados;
        frmConsultaCliente.ShowModal;
        frmConsultaCliente.Free;
      end;
    end);
  end).Start;
end;

procedure TfrmCadastroPedido.AtualizaPedido;
var
  sql, sql2, Json, DataHora, TipoSaida, PhoneNum, DataHoje, MsgBot: string;
  OrderID: Integer;
  Qpont: TBookmark;
  QtdPedidos : Integer;
  ArrayDados : TJSONArray;
begin
  Enabled := false;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      PhoneNum := frmCadastroPedido.edtTelefone.Text;
      PhoneNum := StringReplace(PhoneNum,' ','',[rfReplaceAll]);
      PhoneNum := StringReplace(PhoneNum,'(','',[rfReplaceAll]);
      PhoneNum := StringReplace(PhoneNum,')','',[rfReplaceAll]);
      PhoneNum := StringReplace(PhoneNum,'-','',[rfReplaceAll]);

      Qpont := Tabelas.Mt_order.Bookmark;
      OrderID := Tabelas.Mt_order.FieldByName('id').AsInteger;

      DataHora := DateTimeToStr(Now());
      DataHora := Copy(DataHora,7,4)+'-'+Copy(DataHora,4,2)+'-'+Copy(DataHora,1,2)+' '+
                  Copy(DataHora,12,8);
      DataHoje := Copy(DataHora,1,10);

      if rbEntrega.Checked then
        TipoSaida := 'Entrega'
      else if rbRetirada.Checked then
        TipoSaida := 'Retirada'
      else
        TipoSaida := 'Mesa';

      ProcessDadosCliente;

      sql := 'UPDATE mt_order SET '+
             'merchant_id = '+frmPrincipal.FMerchantID.ToString+', '+
             'client_id = '+FClientID.ToString+', '+
             'payment_id = '+FPaymentID.ToString+', '+
             'status = '+QuotedStr(lbStatusPedido.Caption)+', '+
             'tipo_saida = '+QuotedStr(TipoSaida)+', '+
             'last_modified = '+QuotedStr(DataHora)+', '+
             'desconto = '+StringReplace(FloatToStr(FDesconto),',','.',[rfReplaceAll])+', '+
             'acrescimo = '+StringReplace(FloatToStr(FAcrescimo),',','.',[rfReplaceAll])+', '+
             'pago = '+StringReplace(FloatToStr(FValorPago),',','.',[rfReplaceAll])+', '+
             'troco = '+StringReplace(FloatToStr(FTroco),',','.',[rfReplaceAll])+', '+
             'subtotal = '+StringReplace(FloatToStr(FSubTotal),',','.',[rfReplaceAll])+', '+
             'valor_total = '+StringReplace(FloatToStr(FValorTotal),',','.',[rfReplaceAll])+', '+
             'qty_items = '+FQtdItens.ToString+', '+
             'delivery_fee = '+StringReplace(FloatToStr(FTaxaEntrega),',','.',[rfReplaceAll])+' '+
             'WHERE id = '+OrderID.ToString;
      Tabelas.InjectSQL(sql);

      sql := 'UPDATE mt_delivery_info SET '+
             'client_id = '+FClientID.ToString+', '+
             'client_address_id = '+FClientAddressID.ToString+', '+
             'client_phone_id = '+FClientPhoneID.ToString+', '+
             'phone = '+QuotedStr(PhoneNum)+', '+
             'address = '+QuotedStr(mmEndereco.Lines.Text)+', '+
             'district_name = '+QuotedStr(Tabelas.mt_district.FieldByName('name').AsString)+', '+
             'obs = '+QuotedStr(mmObservacoes.Text)+', '+
             'client_name = '+QuotedStr(edtCliente.Text)+', '+
             'num_mesa = '+QuotedStr(cbMesa.Text)+' '+
             'WHERE order_id = '+OrderID.ToString;
      Tabelas.InjectSQL(sql);

      if FCartModify then
      begin
        sql := 'DELETE FROM mt_cart WHERE order_id = '+OrderID.ToString;
        Tabelas.InjectSQL(sql);

        sql := 'INSERT INTO mt_cart (id, order_id, date_created, product_id, descricao_produto, '+
               'valor_unit, qtd, total) VALUES ';
        cdsCarrinho.First;
        while not cdsCarrinho.Eof do
        begin
          if POS('[CANCELADO]',UpperCase(cdsCarrinho.FieldByName('product_name').AsString)) <= 0 then begin
            if (cdsCarrinho.FieldByName('id').AsInteger = 0) and (Tabelas.mt_settings.FieldByName('count_stock').AsString = 's') then begin
              //Subtrai os produtos da tabela mt_product
              sql2 := 'CALL UPT_PROD_QTY('+
                     cdsCarrinho.FieldByName('product_id').AsInteger.ToString+', '+
                     StringReplace(FloatToStr(cdsCarrinho.FieldByName('qtd').AsFloat),',','.',[rfReplaceAll])+', '+
                     '''-'')';
              Tabelas.InjectSQL(sql2);
            end;

            //Adiciona item na tabela mt_cart
            sql := sql + '(NULL, '+OrderID.ToString+', '+QuotedStr(DataHora)+', '+
                   cdsCarrinho.FieldByName('product_id').AsInteger.ToString+', '+
                   QuotedStr(cdsCarrinho.FieldByName('product_name').AsString)+', '+
                   StringReplace(FloatToStr(cdsCarrinho.FieldByName('vlr_unit').AsFloat),',','.',[rfReplaceAll])+', '+
                   StringReplace(FloatToStr(cdsCarrinho.FieldByName('qtd').AsFloat),',','.',[rfReplaceAll])+', '+
                   StringReplace(FloatToStr(cdsCarrinho.FieldByName('total').AsFloat),',','.',[rfReplaceAll])+'),';
          end else if (cdsCarrinho.FieldByName('id').AsInteger > 0) and (Tabelas.mt_settings.FieldByName('count_stock').AsString = 's') then begin
            //Soma os produtos da tabela mt_product
            sql2 := 'CALL UPT_PROD_QTY('+
                   cdsCarrinho.FieldByName('product_id').AsInteger.ToString+', '+
                   StringReplace(FloatToStr(cdsCarrinho.FieldByName('qtd').AsFloat),',','.',[rfReplaceAll])+', '+
                   '''+'')';
            Tabelas.InjectSQL(sql2);
          end;
          cdsCarrinho.Next;
        end;
        Delete(sql,Length(sql),1);
        Tabelas.InjectSQL(sql);
      end;

      ProcessVendaPrazo(OrderID.ToString);

      Json := Tabelas.InjectSQL(frmPedidos.OrderSQLText);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
        while QtdPedidos < ArrayDados.Size do
          Inc(QtdPedidos);

        Tabelas.JsonToDataset(Tabelas.mt_order, ConvertJsonToValue(Json));
        Tabelas.Mt_order.Locate('id',OrderID,[loCaseInsensitive]);
        sql := 'SELECT * FROM mt_cart '+
               'WHERE	order_id = '+OrderID.ToString+' '+
               'ORDER BY id ASC';
        Json := Tabelas.InjectSQL(sql);
        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
          Tabelas.JsonToDataset(Tabelas.mt_cart, ConvertJsonToValue(Json));
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
        ShowMessage('Ocorreu um erro')
      else begin
        frmPedidos.lbNumPedidos.Caption := 'Pedidos: '+QtdPedidos.ToString;

        if (FNotificar) and (frmPrincipal.FWhatsappConectado) and
           (lbStatusPedido.Caption <> 'Pendente') and
           (lbStatusPedido.Caption <> 'Cancelado pelo cliente') and
           (FStatusPedidoInicial <> lbStatusPedido.Caption) then begin

          if lbStatusPedido.Caption = 'Em preparo' then
            MsgBot := frmPrincipal.FMsgStatusPreparo
          else if lbStatusPedido.Caption = 'Pronto' then
            MsgBot := frmPrincipal.FMsgStatusPronto
          else if lbStatusPedido.Caption = 'Saiu para entrega' then
            MsgBot := frmPrincipal.FMsgStatusSaiuEntrega
          else if lbStatusPedido.Caption = 'Entregue' then
            MsgBot := frmPrincipal.FMsgStatusEntregue
          else
            MsgBot := frmPrincipal.FMsgStatusCancelado;

          if FMsgAdicional <> '' then
            MsgBot := StringReplace(MsgBot,'[mensagem_operador]','\n\n*'+Tabelas.mt_operator.FieldByName('name').AsString+' diz:*\n'+FMsgAdicional,[rfReplaceAll])
          else
            MsgBot := StringReplace(MsgBot,'[mensagem_operador]','',[rfReplaceAll]);

          frmPrincipal.TInject1.Send(ConvertNumberToWhatsapp(PhoneNum,'@'),MsgBot);
        end;

        if Json = 'sql_vazio' then
          frmPedidos.NotExistsDados
        else
          frmPedidos.ExistsDados;

        if FImprimir then
          Imprimir;
      end;

      Close;
    end);
  end).Start;
end;

procedure TfrmCadastroPedido.AtualizaValores;
begin
  if not rbEntrega.Checked then
    FTaxaEntrega := 0;

  FValorTotal := FSubTotal + FTaxaEntrega + FAcrescimo - FDesconto;

  Tabelas.mt_payment.Locate('id',FPaymentID,[loCaseInsensitive]);
  if UpperCase(Tabelas.mt_payment.FieldByName('name').AsString) = 'DINHEIRO' then
    FTroco := FValorPago - FValorTotal;

  if FTroco < 0 then
    FTroco := 0;

  lbValorTotal.Caption := 'R$ '+FormatFloat('#,0.00',frmCadastroPedido.FValorTotal);
  lbTaxaEntrega.Caption := 'R$ '+FormatFloat('#,0.00',frmCadastroPedido.FTaxaEntrega);
  lbTroco.Caption := 'R$ '+FormatFloat('#,0.00',frmCadastroPedido.FTroco);
end;

procedure TfrmCadastroPedido.btSalvarClick(Sender: TObject);
var
  Cont : Integer;
  PhoneNum : String;
begin
  FImprimir := false;

  edtCliente.Text := AllTrim(edtCliente.Text);
  edtCliente.SelStart := Length(edtCliente.Text);
  mmEndereco.Text := AllTrim(mmEndereco.Text);
  mmEndereco.SelStart := Length(mmEndereco.Text);
  mmObservacoes.Text := AllTrim(mmObservacoes.Text);
  mmObservacoes.SelStart := Length(mmObservacoes.Text);
  PhoneNum := edtTelefone.Text;
  PhoneNum := StringReplace(PhoneNum,' ','',[rfReplaceAll]);
  PhoneNum := StringReplace(PhoneNum,'-','',[rfReplaceAll]);
  PhoneNum := StringReplace(PhoneNum,'(','',[rfReplaceAll]);
  PhoneNum := StringReplace(PhoneNum,')','',[rfReplaceAll]);

  if (FQtdItens = 0) then
  begin
    ShowMessage('Adicione pelo menos um produto no CARRINHO!');
    Exit;
  end;

  if (FValorPago < FValorTotal) or (FValorPago = 0) then
  begin
    ShowMessage('Valor pago deve ser MAIOR ou IGUAL que o valor total!');
    Exit;
  end;

  Tabelas.mt_payment.Locate('id',FPaymentID,[loCaseInsensitive]);
  if (FValorPago > FValorTotal) and (UpperCase(Tabelas.mt_payment.FieldByName('name').AsString) <> 'DINHEIRO') then
  begin
    ShowMessage('O valor pago dever ser igual ao valor total!');
    Exit;
  end;

  if (UpperCase(Tabelas.mt_payment.FieldByName('name').AsString) = 'A PRAZO') and
     (FNomeCliente = 'Consumidor') and
     (FEndereco = 'S/L') and
     (FTelefone = 'S/T') then begin
    ShowMessage('O cliente PADRÃO não permite esse tipo de pagamento!');
    Exit;
  end;
  

  if edtCliente.Text = '' then begin
    ShowMessage('Informe o NOME do cliente!');
    edtCliente.SetFocus;
    Exit
  end;

  if (rbMesa.Checked) and (cbMesa.Text = '') then
  begin
    ShowMessage('Informe a MESA do cliente!');
    cbMesa.SetFocus;
    Exit;
  end;

  if (rbEntrega.Checked) and (mmEndereco.Lines.Text = '') then begin
    ShowMessage('Informe o ENDEREÇO do cliente!');
    mmEndereco.SetFocus;
    Exit;
  end;

  if (rbEntrega.Checked) and (cbBairro.KeyValue <= 0) then begin
    ShowMessage('Informe o BAIRRO do cliente!');
    cbBairro.SetFocus;
    Exit;
  end;

  Cont := 0;
  if ((edtCliente.Text <> FNomeCliente) or
     (PhoneNum <> FTelefone) or
     (mmEndereco.Lines.Text <> FEndereco) or
     (cbBairro.KeyValue <> FBairroID)) and
     ((FNomeCliente <> 'Consumidor') and (FEndereco <> 'S/L') and (FTelefone <> 'S/T')) then
  begin
    Application.CreateForm(TfrmConfirmaModifacaoCliente, frmConfirmaModifacaoCliente);

    if edtCliente.Text <> FNomeCliente then begin
      Inc(Cont);
      frmConfirmaModifacaoCliente.gbDados.Visible := true;
    end;

    if (PhoneNum <> FTelefone) and ((rbEntrega.Checked) or (rbRetirada.Checked)) then begin
      Inc(Cont);
      frmConfirmaModifacaoCliente.gbTelefone.Visible := true;

      if not frmConfirmaModifacaoCliente.gbDados.Visible then
        frmConfirmaModifacaoCliente.gbTelefone.Top := 8;
    end;

    if ((mmEndereco.Lines.Text <> FEndereco) or (cbBairro.KeyValue <> FBairroID)) and (rbEntrega.Checked) then begin
      Inc(Cont);
      frmConfirmaModifacaoCliente.gbEndereco.Visible := true;

      if (frmConfirmaModifacaoCliente.gbDados.Visible = false) and (frmConfirmaModifacaoCliente.gbTelefone.Visible = false) then
        frmConfirmaModifacaoCliente.gbEndereco.Top := 8
      else if ((frmConfirmaModifacaoCliente.gbDados.Visible) and (frmConfirmaModifacaoCliente.gbTelefone.Visible = false)) or
              ((frmConfirmaModifacaoCliente.gbDados.Visible = false) and (frmConfirmaModifacaoCliente.gbTelefone.Visible)) then
        frmConfirmaModifacaoCliente.gbEndereco.Top := 103;
    end;

    if Cont = 1 then begin
      frmConfirmaModifacaoCliente.pnConfirma.Top := 110;
      frmConfirmaModifacaoCliente.Height := 185;
    end else if Cont = 2 then begin
      frmConfirmaModifacaoCliente.pnConfirma.Top := 200;
      frmConfirmaModifacaoCliente.Height := 275;
    end;

    if (rbEntrega.Checked) or (rbRetirada.Checked) then
      frmConfirmaModifacaoCliente.ShowModal;

    frmConfirmaModifacaoCliente.Free;
  end;

  if not FModoEdit then
    NovoPedido
  else
    AtualizaPedido;
end;

procedure TfrmCadastroPedido.btSalvarImprimirClick(Sender: TObject);
var
  PhoneNum : String;
  Cont : Integer;
begin
  FImprimir := true;

  edtCliente.Text := AllTrim(edtCliente.Text);
  edtCliente.SelStart := Length(edtCliente.Text);
  mmEndereco.Text := AllTrim(mmEndereco.Text);
  mmEndereco.SelStart := Length(mmEndereco.Text);
  mmObservacoes.Text := AllTrim(mmObservacoes.Text);
  mmObservacoes.SelStart := Length(mmObservacoes.Text);
  PhoneNum := edtTelefone.Text;
  PhoneNum := StringReplace(PhoneNum,' ','',[rfReplaceAll]);
  PhoneNum := StringReplace(PhoneNum,'-','',[rfReplaceAll]);
  PhoneNum := StringReplace(PhoneNum,'(','',[rfReplaceAll]);
  PhoneNum := StringReplace(PhoneNum,')','',[rfReplaceAll]);

  if (FQtdItens = 0) then
  begin
    ShowMessage('Adicione pelo menos um produto no CARRINHO!');
    Exit;
  end;

  if (FValorPago < FValorTotal) or (FValorPago = 0) then
  begin
    ShowMessage('Valor pago deve ser MAIOR ou IGUAL que o valor total!');
    Exit;
  end;

  Tabelas.mt_payment.Locate('id',FPaymentID,[loCaseInsensitive]);
  if (FValorPago > FValorTotal) and (UpperCase(Tabelas.mt_payment.FieldByName('name').AsString) <> 'DINHEIRO') then
  begin
    ShowMessage('O valor pago dever ser igual ao valor total!');
    Exit;
  end;

  if (UpperCase(Tabelas.mt_payment.FieldByName('name').AsString) = 'A PRAZO') and
     (FNomeCliente = 'Consumidor') and
     (FEndereco = 'S/L') and
     (FTelefone = 'S/T') then begin
    ShowMessage('O cliente PADRÃO não permite esse tipo de pagamento!');
    Exit;
  end;

  if edtCliente.Text = '' then begin
    ShowMessage('Informe o NOME do cliente!');
    edtCliente.SetFocus;
    Exit
  end;

  if (rbMesa.Checked) and (cbMesa.Text = '') then
  begin
    ShowMessage('Informe a MESA do cliente!');
    cbMesa.SetFocus;
    Exit;
  end;

  if (rbEntrega.Checked) and (mmEndereco.Lines.Text = '') then begin
    ShowMessage('Informe o ENDEREÇO do cliente!');
    mmEndereco.SetFocus;
    Exit;
  end;

  if (rbEntrega.Checked) and (cbBairro.KeyValue <= 0) then begin
    ShowMessage('Informe o BAIRRO do cliente!');
    cbBairro.SetFocus;
    Exit;
  end;

  Cont := 0;
  if ((edtCliente.Text <> FNomeCliente) or
     (PhoneNum <> FTelefone) or
     (mmEndereco.Lines.Text <> FEndereco) or
     (cbBairro.KeyValue <> FBairroID)) and
     ((FNomeCliente <> 'Consumidor') and (FEndereco <> 'S/L') and (FTelefone <> 'S/T')) then
  begin
    Application.CreateForm(TfrmConfirmaModifacaoCliente, frmConfirmaModifacaoCliente);

    if edtCliente.Text <> FNomeCliente then begin
      Inc(Cont);
      frmConfirmaModifacaoCliente.gbDados.Visible := true;
    end;

    if (PhoneNum <> FTelefone) and ((rbEntrega.Checked) or (rbRetirada.Checked)) then begin
      Inc(Cont);
      frmConfirmaModifacaoCliente.gbTelefone.Visible := true;

      if not frmConfirmaModifacaoCliente.gbDados.Visible then
        frmConfirmaModifacaoCliente.gbTelefone.Top := 8;
    end;

    if ((mmEndereco.Lines.Text <> FEndereco) or (cbBairro.KeyValue <> FBairroID)) and (rbEntrega.Checked) then begin
      Inc(Cont);
      frmConfirmaModifacaoCliente.gbEndereco.Visible := true;

      if (frmConfirmaModifacaoCliente.gbDados.Visible = false) and (frmConfirmaModifacaoCliente.gbTelefone.Visible = false) then
        frmConfirmaModifacaoCliente.gbEndereco.Top := 8
      else if ((frmConfirmaModifacaoCliente.gbDados.Visible) and (frmConfirmaModifacaoCliente.gbTelefone.Visible = false)) or
              ((frmConfirmaModifacaoCliente.gbDados.Visible = false) and (frmConfirmaModifacaoCliente.gbTelefone.Visible)) then
        frmConfirmaModifacaoCliente.gbEndereco.Top := 103;
    end;

    if Cont = 1 then begin
      frmConfirmaModifacaoCliente.pnConfirma.Top := 110;
      frmConfirmaModifacaoCliente.Height := 185;
    end else if Cont = 2 then begin
      frmConfirmaModifacaoCliente.pnConfirma.Top := 200;
      frmConfirmaModifacaoCliente.Height := 275;
    end;

    if (rbEntrega.Checked) or (rbRetirada.Checked) then
      frmConfirmaModifacaoCliente.ShowModal;

    frmConfirmaModifacaoCliente.Free;
  end;

  if lbStatusPedido.Caption = 'Pendente' then begin
    lbStatusPedido.Caption := 'Em preparo';
    pnFaixaStatus.Color := clYellow;
    lbStatusPedido.Font.Color := $000B827E;
  end;

  Application.CreateForm(TfrmPerguntaQtdPrint, frmPerguntaQtdPrint);
  frmPerguntaQtdPrint.ShowModal;
  frmPerguntaQtdPrint.Free;

  if not FModoEdit then
    NovoPedido
  else
    AtualizaPedido;
end;

procedure TfrmCadastroPedido.cbBairroCloseUp(Sender: TObject);
begin
  if cbBairro.KeyValue > 0 then begin
    FTaxaEntrega := Tabelas.mt_district.FieldByName('tax').AsFloat;
    AtualizaValores;
  end;
end;

procedure TfrmCadastroPedido.cbBairroKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if cbBairro.KeyValue > 0 then begin
    FTaxaEntrega := Tabelas.mt_district.FieldByName('tax').AsFloat;
    AtualizaValores;
  end;
end;

procedure TfrmCadastroPedido.cbMesaKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure TfrmCadastroPedido.cbStatusPedidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  key := #0;
end;

procedure TfrmCadastroPedido.edtClienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edtTelefone.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroPedido.edtNumKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    cbBairro.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroPedido.edtReferenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    mmObservacoes.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroPedido.edtTelefoneChange(Sender: TObject);
begin
  Formatar(TEdit(Sender), TFormato.Celular);
end;

procedure TfrmCadastroPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmPedidos.tmAutoBuscaPedido.Enabled := true;
end;

procedure TfrmCadastroPedido.FormCreate(Sender: TObject);
begin
  FEditClientName := 0;
  FEditClientAddress := 0;
  FEditClientPhone := 0;
end;

procedure TfrmCadastroPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F5 then
    imgAddItem.OnClick(Self)
  else if key = VK_F6 then
    AddCliente
  else if key = VK_F7 then
    imgAddPagamento.OnClick(Self)
  else if Key = VK_F8 then
    imgModificarStatus.OnClick(Self)
  else if Key = VK_F9 then
    btSalvar.Click
  else if key = VK_F10 then
    btSalvarImprimir.Click;
end;

procedure TfrmCadastroPedido.FormResize(Sender: TObject);
begin
  pnTopo.Width := Width;
  lbTitulo.Width := Width - 70;
  lbResultClient.Top := 104;
  lbResultClient.Left := 126;
end;

procedure TfrmCadastroPedido.grdCartDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if POS('[Cancelado]',cdsCarrinho.FieldByName('product_name').AsString) > 0 then
    TDBGrid(Sender).Canvas.Font.Color := clRed
  else
    TDBGrid(Sender).Canvas.Font.Color := clBlack;

  grdCart.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmCadastroPedido.Image1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroPedido.imgAddPagamentoClick(Sender: TObject);
var
  sql, Json: string;
  cont: integer;
begin
  if FSubTotal <= 0 then
    Exit;

  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM mt_payment '+
             'WHERE active = ''Sim'' '+
             'AND merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'ORDER BY id ASC;';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_payment, ConvertJsonToValue(Json));
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := True;
      frmLoading.FClose := True;
      frmLoading.Close;

      if Json = 'sql_erro' then
        ShowMessage('Erro na conexão')
      else if Json = 'sql_vazio' then
        ShowMessage('Nenhum pagamento disponível')
      else begin
        Application.CreateForm(TfrmConsultaPagamento, frmConsultaPagamento);

        if FPaymentID > 0 then
          frmConsultaPagamento.cbTipoPagamento.KeyValue := FPaymentID
        else begin
          Tabelas.mt_payment.First;
          frmConsultaPagamento.cbTipoPagamento.KeyValue := Tabelas.mt_payment.FieldByName('id').AsInteger;
        end;

        frmConsultaPagamento.ShowModal;
        frmConsultaPagamento.Free;
      end;
    end);
  end).Start;
end;

procedure TfrmCadastroPedido.imgModificarStatusClick(Sender: TObject);
begin
  Application.CreateForm(TfrmModificaStatus, frmModificaStatus);

  if UpperCase(lbStatusPedido.Caption) = 'PENDENTE' then
    frmModificaStatus.cbStatusPedido.ItemIndex := 0
  else if UpperCase(lbStatusPedido.Caption) = 'EM PREPARO' then
    frmModificaStatus.cbStatusPedido.ItemIndex := 1
  else if UpperCase(lbStatusPedido.Caption) = 'PRONTO' then
    frmModificaStatus.cbStatusPedido.ItemIndex := 2
  else if UpperCase(lbStatusPedido.Caption) = 'SAIU PARA ENTREGA' then
    frmModificaStatus.cbStatusPedido.ItemIndex := 3
  else if UpperCase(lbStatusPedido.Caption) = 'ENTREGUE' then
    frmModificaStatus.cbStatusPedido.ItemIndex := 4
  else if UpperCase(lbStatusPedido.Caption) = 'CANCELADO'  then
    frmModificaStatus.cbStatusPedido.ItemIndex := 5
  else
    frmModificaStatus.cbStatusPedido.ItemIndex := 6;

  frmModificaStatus.ShowModal;
  frmModificaStatus.Free;
end;

procedure TfrmCadastroPedido.rbEntregaClick(Sender: TObject);
begin
  cbMesa.Visible := false;
  edtTelefone.Visible := true;
  Label3.Visible := true;
  Label17.Visible := true;
  mmEndereco.Visible := true;
  cbBairro.Visible := true;
  Label7.Caption := 'Telefone';

  if cbBairro.KeyValue > 0 then begin
    Tabelas.mt_district.Locate('id',cbBairro.KeyValue,[loCaseInsensitive]);
    FTaxaEntrega := Tabelas.mt_district.FieldByName('tax').AsFloat;
    AtualizaValores;
  end;
end;

procedure TfrmCadastroPedido.rbMesaClick(Sender: TObject);
begin
  edtTelefone.Visible := false;
  cbMesa.Visible := true;
  Label3.Visible := false;
  Label17.Visible := false;
  cbBairro.Visible := false;
  mmEndereco.Visible := false;
  Label7.Caption := 'Identificação';
  FTaxaEntrega := 0;
  AtualizaValores;
end;

procedure TfrmCadastroPedido.rbRetiradaClick(Sender: TObject);
begin
  cbMesa.Visible := false;
  edtTelefone.Visible := true;
  Label3.Visible := false;
  Label17.Visible := false;
  mmEndereco.Visible := false;
  cbBairro.Visible := false;
  Label7.Caption := 'Telefone';
  FTaxaEntrega := 0;
  AtualizaValores;
end;

procedure TfrmCadastroPedido.imgAddClienteClick(Sender: TObject);
begin
  AddCliente;
end;

procedure TfrmCadastroPedido.imgAddItemClick(Sender: TObject);
var
  sql, Json: string;
begin
  Enabled := false;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * '+
             'FROM	 mt_category '+
             'WHERE  active = ''Sim'';';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_category, Json);

      sql := 'SELECT DISTINCT '+
             '      	mt_product.id AS id, '+
             '        mt_product.name AS name, '+
             '        mt_category.id AS category_id, '+
             '        mt_category.name AS category_name, '+
             '        mt_product.qtd AS qtd, '+
             '        mt_product.value AS value, '+
             '        mt_product.detail AS detail, '+
             '        mt_product.active AS active, '+
             '        mt_product.type_unit, '+
             '        mt_product.merchant_id '+
             'FROM	  mt_product, mt_category '+
             'WHERE	  mt_product.category_id = mt_category.id '+
             'AND     mt_category.active = ''Sim'' '+
             'AND     mt_product.active = ''Sim'' '+
             'AND     mt_category.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'AND     mt_product.merchant_id = '+frmPrincipal.FMerchantID.ToString+' ';

      if Tabelas.mt_settings.FieldByName('block_negative_stock').AsString = 's' then
        sql := sql + 'AND mt_product.qtd > 0 ';

      sql := sql + 'ORDER BY 2 ASC, 6 ASC';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.Mt_product, ConvertJsonToValue(Json));
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if Json = 'sql_erro' then
        ShowMessage('Problema na conexão')
      else if Json = 'sql_vazio' then begin
        Application.CreateForm(TfrmListaProdutos, frmListaProdutos);
        frmListaProdutos.NotExistsDados;
        frmListaProdutos.ShowModal;
        frmListaProdutos.Free;
      end else begin
        Application.CreateForm(TfrmListaProdutos, frmListaProdutos);
        frmListaProdutos.ExistsDados;
        frmListaProdutos.ShowModal;
        frmListaProdutos.Free;
      end;
    end);

  end).Start;
end;

procedure TfrmCadastroPedido.imgRemoveItemClick(Sender: TObject);
begin
  if (cdsCarrinho.FieldByName('product_name').AsString <> '') and (POS('[Cancelado]',cdsCarrinho.FieldByName('product_name').AsString) <= 0) then
  begin
    if Application.MessageBox('Deseja mesmo cancelar este item?','Atenção!',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
    begin
      try
        if POS('[Cancelado]',cdsCarrinho.FieldByName('product_name').AsString) <= 0 then
        begin
          FQtdItens := FQtdItens - 1;
          FSubTotal := FSubTotal - (cdsCarrinho.FieldByName('qtd').AsFloat * cdsCarrinho.FieldByName('vlr_unit').AsFloat);

          lbQtdProdutos.Caption := FloatToStr(FQtdItens);
          lbSubTotal.Caption := FormatFloat('R$ #,0.00',FSubTotal);

          cdsCarrinho.Edit;
          cdsCarrinho.FieldByName('product_name').AsString := '[Cancelado] '+cdsCarrinho.FieldByName('product_name').AsString;
          cdsCarrinho.Post;

          AtualizaValores;

          if FModoEdit then
            FCartModify := true;
        end;
      except
        ShowMessage('Ocorreu um erro');
      end;
    end;
  end;
end;

procedure TfrmCadastroPedido.Imprimir;
var
  x : integer;
begin
  if rbEntrega.Checked then begin
    rpELbNomeEmpresa.Caption := Tabelas.mt_merchant.FieldByName('name').AsString;
    rpELbLogradouroEmpresa.Caption := Tabelas.mt_merchant.FieldByName('street').AsString;
    rpELbBairroEmpresa.Caption := Tabelas.mt_merchant.FieldByName('district').AsString;
    rpELbWhatsAppEmpresa.Caption := Tabelas.mt_merchant.FieldByName('phone1').AsString;
    //rpELbWhatsAppEmpresa.Caption := '('+Copy(rpELbWhatsAppEmpresa.Caption,1,2)+') '+
    //                                Copy(rpELbWhatsAppEmpresa.Caption,3,5)+'-'+
    //                                Copy(rpELbWhatsAppEmpresa.Caption,8,4);
    rpELbTelefoneEmpresa.Caption := Tabelas.mt_merchant.FieldByName('phone2').AsString;
    //rpELbTelefoneEmpresa.Caption := '('+Copy(rpELbTelefoneEmpresa.Caption,1,2)+') '+
    //                                Copy(rpELbTelefoneEmpresa.Caption,3,5)+'-'+
    //                                Copy(rpELbTelefoneEmpresa.Caption,8,4);
    rpElbMsgCupom.Caption := Tabelas.mt_merchant.FieldByName('msg_cupom').AsString;

    rpELbNumPedido.Caption := Tabelas.Mt_order.FieldByName('id').AsInteger.ToString;
    rpELbAtendente.Caption := Tabelas.mt_operator.FieldByName('name').AsString;
    rpELbClienteNome.Caption := edtCliente.Text;
    rpELbClienteTelefone.Caption := edtTelefone.Text;
    rpELbClienteBairro.Caption := Tabelas.mt_district.FieldByName('name').AsString;

    rpELbTipo.Caption := 'Entrega';

    rpEMmEndereco.Lines.Clear;
    rpEMmEndereco.Lines.Text := mmEndereco.Lines.Text;
    rpELbObs.Lines.Clear;
    rpELbObs.Lines.Text := mmObservacoes.Lines.Text;

    rpEntrega.PageSetup.PaperHeight := rpEntrega.PageSetup.PaperHeight + rpELbObs.Height - 16;
    rpEntrega.PageSetup.PaperHeight := rpEntrega.PageSetup.PaperHeight + rpEmmEndereco.Height - 16;

    rpELbPagamento.Caption := lbDescPagamento.Caption;
    rpELbSubTotal.Caption := FormatFloat('#,0.00',FSubTotal);
    rpELbDesconto.Caption := FormatFloat('#,0.00',FDesconto);
    rpELbAcrescimo.Caption := FormatFloat('#,0.00',FAcrescimo);
    rpELbTaxa.Caption := FormatFloat('#,0.00',FTaxaEntrega);
    rpELbValorTotal.Caption := FormatFloat('#,0.00',FValorTotal);
    rpELbValorPago.Caption := FormatFloat('#,0.00',FValorPago);
    rpELbTroco.Caption := FormatFloat('#,0.00',FTroco);

    RLLabel13.Top := rpEmmEndereco.Top + rpEmmEndereco.Height + 1;
    rpElbClienteBairro.Top := RLLabel13.Top + RLLabel13.Height + 1;
    RLDraw2.Top := rpElbClienteBairro.Top + rpElbClienteBairro.Height + 1;
    RLLabel18.Top := RLDraw2.Top + RLDraw2.Height + 1;
    RLLabel25.Top := RLLabel18.Top;
    RLLabel17.Top := RLLabel25.Top;
    RLLabel19.Top := RLLabel17.Top + RLLabel17.Height + 1;
    RLLabel20.Top := RLLabel19.Top;
    RLDraw3.Top := RLLabel20.Top + RLLabel20.Height + 1;

    RLDraw5.Top := rpELbObs.Top + rpELbObs.Height + 1;
    RLLabel24.Top := RLDraw5.Top + RLDraw5.Height + 1;
    RLLabel27.Top := RLLabel24.Top;
    rpELbSubTotal.Top := RLLabel27.Top;
    rpELbPagamento.Top := RLLabel24.Top + RLLabel2.Height + 1;
    RLLabel29.Top := rpELbPagamento.Top;
    rpELbDesconto.Top := RLLabel29.Top;
    RLLabel4.Top := RLLabel29.Top + RLLabel29.Height + 1;
    rpElbAcrescimo.Top := RLLabel4.Top;
    RLLabel6.Top := RLLabel4.Top + RLLabel4.Height + 1;
    rpElbTaxa.Top := RLLabel6.Top;
    RLLabel31.Top := RLLabel6.Top + RLLabel6.Height + 1;
    rpELbValorTotal.Top := RLLabel31.Top;
    RLLabel33.Top := RLLabel31.Top + RLLabel31.Height +1;
    rpELbValorPago.Top := RLLabel33.Top;
    RLLabel35.Top := RLLabel33.Top + RLLabel33.Height + 1;
    rpELbTroco.Top := RLLabel35.Top;
    RLDraw6.Top := rpELbTroco.Top + rpELbTroco.Height + 1;
    rpElbMsgCupom.Top := RLDraw6.Top + RLDraw6.Height + 1;

    if Tabelas.mt_settings.FieldByName('pre_visualizar_impressao').AsString = 's' then begin
      for x := 1 to FQtdImpressao do
        rpEntrega.Preview;
    end else begin
      for x := 1 to FQtdImpressao do
        rpEntrega.Print;
    end;
  end else if rbRetirada.Checked then begin
    rpRLbNomeEmpresa.Caption := Tabelas.mt_merchant.FieldByName('name').AsString;
    rpRLbLogradouroEmpresa.Caption := Tabelas.mt_merchant.FieldByName('street').AsString;
    rpRLbBairroEmpresa.Caption := Tabelas.mt_merchant.FieldByName('district').AsString;
    rpRLbWhatsAppEmpresa.Caption := Tabelas.mt_merchant.FieldByName('phone1').AsString;
    //rpRLbWhatsAppEmpresa.Caption := '('+Copy(rpRLbWhatsAppEmpresa.Caption,1,2)+') '+
    //                                Copy(rpRLbWhatsAppEmpresa.Caption,3,5)+'-'+
    //                                Copy(rpRLbWhatsAppEmpresa.Caption,8,4);
    rpRLbTelefoneEmpresa.Caption := Tabelas.mt_merchant.FieldByName('phone2').AsString;
    //rpRLbTelefoneEmpresa.Caption := '('+Copy(rpRLbTelefoneEmpresa.Caption,1,2)+') '+
    //                                Copy(rpRLbTelefoneEmpresa.Caption,3,5)+'-'+
    //                                Copy(rpRLbTelefoneEmpresa.Caption,8,4);
    rpRlbMsgCupom.Caption := Tabelas.mt_merchant.FieldByName('msg_cupom').AsString;

    rpRLbNumPedido.Caption := Tabelas.Mt_order.FieldByName('id').AsInteger.ToString;
    rpRLbAtendente.Caption := Tabelas.mt_operator.FieldByName('name').AsString;
    rpRLbCliente.Caption := edtCliente.Text;
    rpRLbTelefone.Caption := edtTelefone.Text;

    rpRLbTipo.Caption := 'Retirada';

    rpRLbObs.Lines.Clear;
    rpRLbObs.Lines.Text := mmObservacoes.Lines.Text;

    rpRLbPagamento.Caption := lbDescPagamento.Caption;
    rpRLbSubTotal.Caption := FormatFloat('#,0.00',FSubTotal);
    rpRLbDesconto.Caption := FormatFloat('#,0.00',FDesconto);
    rpRLbAcrescimo.Caption := FormatFloat('#,0.00',FAcrescimo);
    rpRLbValorTotal.Caption := FormatFloat('#,0.00',FValorTotal);
    rpRLbValorPago.Caption := FormatFloat('#,0.00',FValorPago);
    rpRLbTroco.Caption := FormatFloat('#,0.00',FTroco);

    rpRetirada.PageSetup.PaperHeight := rpRetirada.PageSetup.PaperHeight + rpRLbObs.Height - 16;
    rpRBandBottom.Height := rpRBandBottom.Height + rpRLbObs.Height - 16;

    RLDraw11.Top := rpRLbObs.Top + rpRLbObs.Height + 1;
    RLLabel62.Top := RLDraw11.Top + RLDraw11.Height + 1;
    rpRLbPagamento.Top := RLLabel62.Top + RLLabel62.Height + 1;
    RLLabel64.Top := RLLabel62.Top;
    rpRLbSubTotal.Top := RLLabel62.Top;
    RLLabel66.Top := rpRLbSubTotal.Top + rpRLbSubTotal.Height + 1;
    rpRLbDesconto.Top := RLLabel66.Top;
    RLLabel2.Top := RLLabel66.Top + RLLabel66.Height + 1;
    rpRLbAcrescimo.Top := RLLabel2.Top;
    RLLabel68.Top := RLLabel2.Top + RLLabel2.Height + 1;
    rpRLbValorTotal.Top := RLLabel68.Top;
    RLLabel70.Top := rpRLbValorTotal.Top + rpRLbValorTotal.Height + 1;
    rpRLbValorPago.Top := RLLabel70.Top;
    RLLabel72.Top := rpRLbValorPago.Top + rpRLbValorPago.Height + 1;
    rpRLbTroco.Top := RLLabel72.Top;
    RLDraw12.Top := rpRLbTroco.Top + rpRLbTroco.Height + 1;
    rpRlbMsgCupom.Top := RLDraw12.Top + RLDraw12.Height + 1;

    if Tabelas.mt_settings.FieldByName('pre_visualizar_impressao').AsString = 's' then begin
      for x := 1 to FQtdImpressao do
        rpRetirada.Preview;
    end else begin
      for x := 1 to FQtdImpressao do
        rpRetirada.Print;
    end;
  end else if rbMesa.Checked then begin
    rpMLbEmpresaNome.Caption := Tabelas.mt_merchant.FieldByName('name').AsString;
    rpMLbEmpresaLogradouro.Caption := Tabelas.mt_merchant.FieldByName('street').AsString;
    rpMLbEmpresaBairro.Caption := Tabelas.mt_merchant.FieldByName('district').AsString;
    rpMLbEmpresaWhatsApp.Caption := Tabelas.mt_merchant.FieldByName('phone1').AsString;
    //rpMLbEmpresaWhatsApp.Caption := '('+Copy(rpMLbEmpresaWhatsApp.Caption,1,2)+') '+
    //                                Copy(rpMLbEmpresaWhatsApp.Caption,3,5)+'-'+
    //                                Copy(rpMLbEmpresaWhatsApp.Caption,8,4);
    rpMLbEmpresaTelefone.Caption := Tabelas.mt_merchant.FieldByName('phone2').AsString;
    //rpMLbEmpresaTelefone.Caption := '('+Copy(rpMLbEmpresaTelefone.Caption,1,2)+') '+
    //                                Copy(rpMLbEmpresaTelefone.Caption,3,5)+'-'+
    //                                Copy(rpMLbEmpresaTelefone.Caption,8,4);
    rpMlbMsgCupom.Caption := Tabelas.mt_merchant.FieldByName('msg_cupom').AsString;

    rpMLbNumPedido.Caption := Tabelas.Mt_order.FieldByName('id').AsInteger.ToString;
    rpMLbAtendente.Caption := Tabelas.mt_operator.FieldByName('name').AsString;
    rpMLbCliente.Caption := edtCliente.Text;
    rpMLbNumMesa.Caption := cbMesa.Text;

    rpMlbTipo.Caption := 'Mesa';

    rpMmmObs.Lines.Clear;
    rpMmmObs.Lines.Text := mmObservacoes.Lines.Text;

    rpMlbPagamento.Caption := lbDescPagamento.Caption;
    rpMlbSubTotal.Caption := FormatFloat('#,0.00',FSubTotal);
    rpMlbDesconto.Caption := FormatFloat('#,0.00',FDesconto);
    rpMlbAcrescimo.Caption := FormatFloat('#,0.00',FAcrescimo);
    rpMlbValorTotal.Caption := FormatFloat('#,0.00',FValorTotal);
    rpMlbValorPago.Caption := FormatFloat('#,0.00',FValorPago);
    rpMlbTroco.Caption := FormatFloat('#,0.00',FTroco);

    rpMesa.PageSetup.PaperHeight := rpMesa.PageSetup.PaperHeight + rpMmmObs.Height - 16;

    RLDraw19.Top := rpMmmObs.Top + rpMmmObs.Height + 1;
    RLLabel73.Top := RLDraw19.Top + RLDraw19.Height + 1;
    rpMlbPagamento.Top := RLLabel73.Top + RLLabel73.Height + 1;
    RLLabel77.Top := RLLabel73.Top;
    rpMlbSubTotal.Top := RLLabel77.Top;
    RLLabel79.Top := rpMlbSubTotal.Top + rpMlbSubTotal.Height + 1;
    rpMlbDesconto.Top := RLLabel79.Top;
    RLLabel9.Top := RLLabel79.Top + RLLabel79.Height + 1;
    rpMlbAcrescimo.Top := RLLabel9.Top;
    RLLabel81.Top := RLLabel9.Top + RLLabel9.Height + 1;
    rpMlbValorTotal.Top := RLLabel81.Top;
    RLLabel83.Top := rpMlbValorTotal.Top + rpMlbValorTotal.Height + 1;
    rpMlbValorPago.Top := RLLabel83.Top;
    RLLabel85.Top := RLLabel83.Top + RLLabel83.Height + 1;
    rpMlbTroco.Top := RLLabel85.Top;
    RLDraw20.Top := rpMlbTroco.Top + rpMlbTroco.Height + 1;
    rpMlbMsgCupom.Top := RLDraw20.Top + RLDraw20.Height + 1;

    if Tabelas.mt_settings.FieldByName('pre_visualizar_impressao').AsString = 's' then begin
      for x := 1 to FQtdImpressao do
        rpMesa.Preview;
    end else begin
      for x := 1 to FQtdImpressao do
        rpMesa.Print;
    end;
  end;
end;

procedure TfrmCadastroPedido.NovoPedido;
var
  sql, sql2, Json, TipoSaida, DataHora, StatusPedido, PhoneNum, DataHoje: string;
  MsgBot : string;
  OrderID, QtdPedidos: integer;
  ArrayDados : TJSONArray;
begin
  Enabled := false;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      PhoneNum := frmCadastroPedido.edtTelefone.Text;
      PhoneNum := StringReplace(PhoneNum,' ','',[rfReplaceAll]);
      PhoneNum := StringReplace(PhoneNum,'(','',[rfReplaceAll]);
      PhoneNum := StringReplace(PhoneNum,')','',[rfReplaceAll]);
      PhoneNum := StringReplace(PhoneNum,'-','',[rfReplaceAll]);

      DataHora := DateTimeToStr(Now());
      DataHora := Copy(DataHora,7,4)+'-'+Copy(DataHora,4,2)+'-'+Copy(DataHora,1,2)+' '+
                  Copy(DataHora,12,8);
      DataHoje := Copy(DataHora,1,10);

      if rbEntrega.Checked then
        TipoSaida := 'Entrega'
      else if rbRetirada.Checked then
        TipoSaida := 'Retirada'
      else
        TipoSaida := 'Mesa';

      ProcessDadosCliente;

      sql := 'INSERT INTO mt_order (id, merchant_id, client_id, payment_id, '+
             'status, tipo_saida, date_created, last_modified, check_bot, input_type, desconto, '+
             'acrescimo, pago, troco, subtotal, valor_total, qty_items, delivery_fee) VALUES (NULL, '+
             frmPrincipal.FMerchantID.ToString+', '+
             FClientID.ToString+', '+
             FPaymentID.ToString+', '+
             QuotedStr(lbStatusPedido.Caption)+', '+
             QuotedStr(TipoSaida)+', '+
             QuotedStr(DataHora)+', '+
             QuotedStr(DataHora)+', ''n'', '+
             QuotedStr(Tabelas.mt_operator.FieldByName('name').AsString)+', '+
             StringReplace(FloatToStr(FDesconto),',','.',[rfReplaceAll])+', '+
             StringReplace(FloatToStr(FAcrescimo),',','.',[rfReplaceAll])+', '+
             StringReplace(FloatToStr(FValorPago),',','.',[rfReplaceAll])+', '+
             StringReplace(FloatToStr(FTroco),',','.',[rfReplaceAll])+', '+
             StringReplace(FloatToStr(FSubTotal),',','.',[rfReplaceAll])+', '+
             StringReplace(FloatToStr(FValorTotal),',','.',[rfReplaceAll])+', '+
             FQtdItens.ToString+', '+
             StringReplace(FloatToStr(FTaxaEntrega),',','.',[rfReplaceAll])+')';
      Tabelas.InjectSQL(sql);

      sql := 'SELECT MAX(id) AS id FROM mt_order '+
             'WHERE client_id = '+FClientID.ToString+' '+
             'AND merchant_id = '+frmPrincipal.FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      OrderID := ArrayDados.Get(0).GetValue<integer>('id', 0);

      sql := 'INSERT INTO mt_delivery_info (id, client_id, client_address_id, '+
             'client_phone_id, order_id, phone, address, '+
             'district_name, obs, client_name, '+
             'date_created, num_mesa) VALUES (NULL, '+
             FClientID.ToString+', '+
             FClientAddressID.ToString+', '+
             FClientPhoneID.ToString+', '+
             OrderID.ToString+', '+
             QuotedStr(PhoneNum)+', '+
             QuotedStr(mmEndereco.Lines.Text)+', '+
             QuotedStr(Tabelas.mt_district.FieldByName('name').AsString)+', '+
             QuotedStr(mmObservacoes.Text)+', '+
             QuotedStr(edtCliente.Text)+', '+
             QuotedStr(DataHora)+', '+
             QuotedStr(cbMesa.Text)+')';
      Tabelas.InjectSQL(sql);

      sql := 'INSERT INTO mt_cart (id, order_id, date_created, product_id, descricao_produto, '+
             'valor_unit, qtd, total) VALUES ';
      cdsCarrinho.First;
      while not cdsCarrinho.Eof do
      begin
        if POS('[CANCELADO]',UpperCase(cdsCarrinho.FieldByName('product_name').AsString)) <= 0 then begin
          if Tabelas.mt_settings.FieldByName('count_stock').AsString = 's' then begin
            //Subtrai os produtos da tabela mt_product
            sql2 := 'CALL UPT_PROD_QTY('+
                   cdsCarrinho.FieldByName('product_id').AsInteger.ToString+', '+
                   StringReplace(FloatToStr(cdsCarrinho.FieldByName('qtd').AsFloat),',','.',[rfReplaceAll])+', '+
                   '''-'')';
            Tabelas.InjectSQL(sql2);
          end;

          //Adiciona item na tabela mt_cart
          sql := sql + '(NULL, '+OrderID.ToString+', '+QuotedStr(DataHora)+', '+
                 cdsCarrinho.FieldByName('product_id').AsInteger.ToString+', '+
                 QuotedStr(cdsCarrinho.FieldByName('product_name').AsString)+', '+
                 StringReplace(FloatToStr(cdsCarrinho.FieldByName('vlr_unit').AsFloat),',','.',[rfReplaceAll])+', '+
                 StringReplace(FloatToStr(cdsCarrinho.FieldByName('qtd').AsFloat),',','.',[rfReplaceAll])+', '+
                 StringReplace(FloatToStr(cdsCarrinho.FieldByName('total').AsFloat),',','.',[rfReplaceAll])+'),';
        end;
        cdsCarrinho.Next;
      end;
      Delete(sql,Length(sql),1);
      Tabelas.InjectSQL(sql);

      ProcessVendaPrazo(OrderID.ToString);

      Json := Tabelas.InjectSQL(frmPedidos.OrderSQLText);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
        while QtdPedidos < ArrayDados.Size do
          Inc(QtdPedidos);

        Tabelas.JsonToDataset(Tabelas.mt_order, ConvertJsonToValue(Json));
        Tabelas.Mt_order.Locate('id',OrderID,[loCaseInsensitive]);

        sql := 'SELECT * FROM mt_cart '+
               'WHERE	order_id = '+OrderID.ToString+' '+
               'ORDER BY id ASC;';
        Json := Tabelas.InjectSQL(sql);
        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
          Tabelas.JsonToDataset(Tabelas.mt_cart, ConvertJsonToValue(Json));
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
        ShowMessage('Ocorreu um erro')
      else begin
        frmPedidos.lbNumPedidos.Caption := 'Pedidos: '+QtdPedidos.ToString;

        if Json = 'sql_vazio' then
          frmPedidos.NotExistsDados
        else
          frmPedidos.ExistsDados;

        if (FNotificar) and (frmPrincipal.FWhatsappConectado) and
           (lbStatusPedido.Caption <> 'Pendente') and
           (lbStatusPedido.Caption <> 'Cancelado pelo cliente') and
           (FStatusPedidoInicial <> lbStatusPedido.Caption) then begin

          if lbStatusPedido.Caption = 'Em preparo' then
            MsgBot := frmPrincipal.FMsgStatusPreparo
          else if lbStatusPedido.Caption = 'Pronto' then
            MsgBot := frmPrincipal.FMsgStatusPronto
          else if lbStatusPedido.Caption = 'Saiu para entrega' then
            MsgBot := frmPrincipal.FMsgStatusSaiuEntrega
          else if lbStatusPedido.Caption = 'Entregue' then
            MsgBot := frmPrincipal.FMsgStatusEntregue
          else
            MsgBot := frmPrincipal.FMsgStatusCancelado;

          if FMsgAdicional <> '' then
            MsgBot := StringReplace(MsgBot,'[mensagem_operador]','\n\n*'+Tabelas.mt_operator.FieldByName('name').AsString+' diz:*\n'+FMsgAdicional,[rfReplaceAll])
          else
            MsgBot := StringReplace(MsgBot,'[mensagem_operador]','',[rfReplaceAll]);

          frmPrincipal.TInject1.Send(ConvertNumberToWhatsapp(PhoneNum,'@'),MsgBot);
        end;

        if FImprimir then
          Imprimir;
      end;

      Close;
    end);
  end).Start;
end;

end.
