unit uTabelas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.JSON, Data.DB, REST.Response.Adapter;

type
  TTabelas = class(TDataModule)
    DSmt_client: TDataSource;
    mt_client_phone: TFDMemTable;
    DSmt_client_phone: TDataSource;
    DSmt_client_address: TDataSource;
    mt_client_address: TFDMemTable;
    DSmt_product: TDataSource;
    mt_client: TFDMemTable;
    mt_clientname: TStringField;
    mt_clientobs: TStringField;
    mt_clientaddress_id: TIntegerField;
    mt_clientphone_id: TIntegerField;
    mt_clientdistrict: TStringField;
    mt_clientphone: TStringField;
    mt_client_phoneid: TIntegerField;
    mt_client_phoneclient_id: TIntegerField;
    mt_client_phonephone: TStringField;
    mt_client_phonemajor: TStringField;
    mt_client_addressid: TIntegerField;
    mt_client_addressclient_id: TIntegerField;
    mt_client_addressmajor: TStringField;
    mt_category: TFDMemTable;
    DSmt_category: TDataSource;
    mt_categoryid: TIntegerField;
    mt_categoryname: TStringField;
    mt_categorydetail: TStringField;
    mt_categoryactive: TStringField;
    mt_product: TFDMemTable;
    mt_productid: TIntegerField;
    mt_productname: TStringField;
    mt_productdetail: TStringField;
    mt_productvalue: TFloatField;
    mt_productactive: TStringField;
    mt_productcategory_id: TIntegerField;
    mt_productqtd: TFloatField;
    mt_productcategory_name: TStringField;
    mt_order: TFDMemTable;
    mt_orderid: TIntegerField;
    mt_orderclient_id: TIntegerField;
    mt_orderclient_name: TStringField;
    mt_orderpayment_id: TIntegerField;
    mt_orderpayment_name: TStringField;
    mt_orderstatus: TStringField;
    mt_ordertipo_saida: TStringField;
    mt_orderlast_modified: TDateTimeField;
    mt_orderpago: TFloatField;
    mt_ordertroco: TFloatField;
    mt_ordersubtotal: TFloatField;
    mt_ordervalor_total: TFloatField;
    mt_orderimp_cliente: TStringField;
    mt_orderimp_obs: TStringField;
    mt_orderimp_telefone: TStringField;
    DSmt_order: TDataSource;
    mt_cart: TFDMemTable;
    mt_cartid: TIntegerField;
    mt_cartorder_id: TIntegerField;
    mt_cartproduct_id: TIntegerField;
    mt_cartqtd: TFloatField;
    mt_carttotal: TFloatField;
    DSmt_cart: TDataSource;
    mt_orderdate_created: TDateTimeField;
    mt_orderclient_address_id: TIntegerField;
    mt_orderclient_phone_id: TIntegerField;
    mt_payment: TFDMemTable;
    mt_paymentid: TIntegerField;
    mt_paymentname: TStringField;
    mt_paymenttaxa: TFloatField;
    mt_paymentactive: TStringField;
    DSmt_payment: TDataSource;
    mt_orderdesconto: TFloatField;
    mt_orderacrescimo: TFloatField;
    mt_orderimp_num_mesa: TStringField;
    mt_district: TFDMemTable;
    DSmt_district: TDataSource;
    mt_districtid: TIntegerField;
    mt_districtname: TStringField;
    mt_districttax: TFloatField;
    mt_districtactive: TStringField;
    mt_client_addressaddress: TStringField;
    mt_client_addressdistrict_id: TIntegerField;
    mt_clientaddress: TStringField;
    mt_client_addressdistrict_name: TStringField;
    mt_orderimp_endereco: TStringField;
    mt_orderimp_bairro: TStringField;
    mt_rpt_vendas: TFDMemTable;
    DSmt_rpt_vendas: TDataSource;
    mt_rpt_vendaspayment_name: TStringField;
    mt_rpt_vendasvalor_total: TFloatField;
    DSmt_rpt_mais_vendidos: TDataSource;
    mt_rpt_mais_vendidos: TFDMemTable;
    mt_rpt_mais_vendidosp_product_id: TIntegerField;
    mt_rpt_mais_vendidoscategory_name: TStringField;
    mt_rpt_mais_vendidosproduct_name: TStringField;
    mt_rpt_mais_vendidosqtd: TFloatField;
    mt_rpt_mais_vendidostotal: TFloatField;
    mt_rpt_mais_vendidostotal_geral: TFloatField;
    mt_orderclient_address: TStringField;
    mt_orderclient_district_id: TIntegerField;
    mt_orderclient_phone: TStringField;
    mt_operator: TFDMemTable;
    DSmt_operator: TDataSource;
    mt_operatorid: TIntegerField;
    mt_operatorname: TStringField;
    mt_operatoruser: TStringField;
    mt_operatorpassword: TStringField;
    mt_operatorlevel: TStringField;
    mt_operatorclient_view: TStringField;
    mt_operatorclient_insert: TStringField;
    mt_operatorclient_update: TStringField;
    mt_operatorclient_delete: TStringField;
    mt_producttype_unit: TStringField;
    mt_merchant: TFDMemTable;
    DSmt_merchant: TDataSource;
    mt_merchantid: TIntegerField;
    mt_merchantname: TStringField;
    mt_merchantstreet: TStringField;
    mt_merchantdistrict: TStringField;
    mt_merchantphone1: TStringField;
    mt_merchantphone2: TStringField;
    mt_merchantmsg_cupom: TStringField;
    mt_operatordistrict_view: TStringField;
    mt_operatordistrict_insert: TStringField;
    mt_operatordistrict_update: TStringField;
    mt_operatordistrict_delete: TStringField;
    mt_operatorcategory_view: TStringField;
    mt_operatorcategory_insert: TStringField;
    mt_operatorcategory_update: TStringField;
    mt_operatorcategory_delete: TStringField;
    mt_operatorproduct_view: TStringField;
    mt_operatorproduct_insert: TStringField;
    mt_operatorproduct_update: TStringField;
    mt_operatorproduct_delete: TStringField;
    mt_operatorpayment_view: TStringField;
    mt_operatorpayment_insert: TStringField;
    mt_operatorpayment_update: TStringField;
    mt_operatorpayment_delete: TStringField;
    mt_operatorreport_sale: TStringField;
    mt_operatorreport_best_seller: TStringField;
    mt_operatorreport_revenues: TStringField;
    mt_bill_receive: TFDMemTable;
    DSmt_bill_receive: TDataSource;
    mt_bill_receivebill_id: TIntegerField;
    mt_bill_receiveclient_name: TStringField;
    mt_bill_receivedate_created: TDateTimeField;
    mt_bill_receivestatus: TStringField;
    mt_bill_receivevalor_total: TFloatField;
    mt_orderqty_items: TFloatField;
    mt_list_order_bill: TFDMemTable;
    DSmt_list_order_bill: TDataSource;
    mt_list_order_billorder_id: TIntegerField;
    mt_list_order_billdate_created: TDateTimeField;
    mt_list_order_billtipo_saida: TStringField;
    mt_list_order_billvalor_total: TFloatField;
    mt_list_order_billqty_items: TIntegerField;
    mt_operatorbill_view: TStringField;
    mt_operatorbill_receive: TStringField;
    mt_operatorbill_detail: TStringField;
    mt_operatorbill_print: TStringField;
    mt_clientid: TIntegerField;
    mt_orderdelivery_fee: TFloatField;
    mt_cartdescricao_produto: TStringField;
    mt_cartvalor_unit: TFloatField;
    mt_settings: TFDMemTable;
    DSmt_settings: TDataSource;
    mt_settingsid: TIntegerField;
    mt_settingspre_visualizar_impressao: TStringField;
    mt_cartdate_created: TDateTimeField;
    mt_settingsversion: TStringField;
    mt_settingsbot_power: TStringField;
    mt_merchantopening_hours: TStringField;
    mt_productmerchant_id: TIntegerField;
    mt_orderinput_type: TStringField;
    mt_rpt_vendaspp_id: TIntegerField;
    mt_settingsblock_negative_stock: TStringField;
    mt_settingscount_stock: TStringField;
    mt_settingsbot_list_command: TStringField;
    mt_categorycommand: TIntegerField;
    mt_productcommand: TIntegerField;
    mt_districtcommand: TIntegerField;
    mt_paymentcommand: TIntegerField;
    mt_rpt_vendasqtd_pedidos: TIntegerField;
  private
    { Private declarations }
  public
    //FErroWS : string;
    FURLConexao, FURLServidor : string;
    procedure JsonToDataset(aDataset: TDataSet; aJSON: string);
    function InjectSQL(SQL: string): String;
    { Public declarations }
  end;

var
  Tabelas: TTabelas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Requisicao;

{$R *.dfm}

function TTabelas.InjectSQL(SQL: string): String;
var
  Json: string;
  Requisicao : TRequisicao;
  Parametro : TStringList;
begin
  Json := 'erro';

  Requisicao := TRequisicao.create;
  Parametro := TStringList.Create;
  Parametro.Clear;
  Parametro.Add('sql='+SQL);

  try
    Json := Requisicao.POST(FURLServidor, Parametro);
  finally
    Requisicao.Free;
    Parametro.Free;
  end;

  if Requisicao.HTTP.ResponseCode <> 200 then
    Json := 'sql_erro'
  else if POS('nothing', Json) > 0 then
    Json := 'sql_vazio';

  Result := Json;
end;

procedure TTabelas.JsonToDataset(aDataset: TDataSet; aJSON: string);
var
  JObj: TJSONArray;
  vConv : TCustomJSONDataSetAdapter;
begin
  if (aJSON = EmptyStr) then
  begin
    Exit;
  end;

  JObj := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
  vConv := TCustomJSONDataSetAdapter.Create(Nil);

  try
    vConv.Dataset := aDataset;
    vConv.UpdateDataSet(JObj);
  finally
    vConv.Free;
    JObj.Free;
  end;
end;

end.
