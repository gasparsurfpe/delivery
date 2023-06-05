object Tabelas: TTabelas
  OldCreateOrder = False
  Height = 209
  Width = 388
  object DSmt_client: TDataSource
    DataSet = mt_client
    Left = 16
    Top = 56
  end
  object mt_client_phone: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 56
    Top = 8
    object mt_client_phoneid: TIntegerField
      FieldName = 'id'
    end
    object mt_client_phoneclient_id: TIntegerField
      FieldName = 'client_id'
    end
    object mt_client_phonephone: TStringField
      FieldName = 'phone'
      EditMask = '\(00\) 00000-0000;0;_'
      Size = 25
    end
    object mt_client_phonemajor: TStringField
      FieldName = 'major'
      Size = 1
    end
  end
  object DSmt_client_phone: TDataSource
    DataSet = mt_client_phone
    Left = 56
    Top = 56
  end
  object DSmt_client_address: TDataSource
    DataSet = mt_client_address
    Left = 96
    Top = 56
  end
  object mt_client_address: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 96
    Top = 8
    object mt_client_addressid: TIntegerField
      FieldName = 'id'
    end
    object mt_client_addressclient_id: TIntegerField
      FieldName = 'client_id'
    end
    object mt_client_addressdistrict_id: TIntegerField
      FieldName = 'district_id'
    end
    object mt_client_addressaddress: TStringField
      FieldName = 'address'
      Size = 255
    end
    object mt_client_addressdistrict_name: TStringField
      FieldName = 'district_name'
      Size = 255
    end
    object mt_client_addressmajor: TStringField
      FieldName = 'major'
      Size = 1
    end
  end
  object DSmt_product: TDataSource
    DataSet = mt_product
    Left = 256
    Top = 56
  end
  object mt_client: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 16
    Top = 8
    object mt_clientid: TIntegerField
      FieldName = 'id'
    end
    object mt_clientname: TStringField
      FieldName = 'name'
      Size = 100
    end
    object mt_clientobs: TStringField
      FieldName = 'obs'
      Size = 255
    end
    object mt_clientaddress_id: TIntegerField
      FieldName = 'address_id'
    end
    object mt_clientphone_id: TIntegerField
      FieldName = 'phone_id'
    end
    object mt_clientphone: TStringField
      FieldName = 'phone'
      EditMask = '\(00\) 00000-0000;0;_'
      Size = 25
    end
    object mt_clientaddress: TStringField
      FieldName = 'address'
      Size = 255
    end
    object mt_clientdistrict: TStringField
      FieldName = 'district'
      Size = 255
    end
  end
  object mt_category: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 216
    Top = 8
    object mt_categoryid: TIntegerField
      FieldName = 'id'
    end
    object mt_categorycommand: TIntegerField
      FieldName = 'command'
    end
    object mt_categoryname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object mt_categorydetail: TStringField
      FieldName = 'detail'
      Size = 255
    end
    object mt_categoryactive: TStringField
      FieldName = 'active'
      Size = 50
    end
  end
  object DSmt_category: TDataSource
    DataSet = mt_category
    Left = 216
    Top = 56
  end
  object mt_product: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 256
    Top = 8
    object mt_productid: TIntegerField
      FieldName = 'id'
    end
    object mt_productcommand: TIntegerField
      FieldName = 'command'
    end
    object mt_productname: TStringField
      FieldName = 'name'
      Size = 100
    end
    object mt_productdetail: TStringField
      FieldName = 'detail'
      Size = 255
    end
    object mt_productvalue: TFloatField
      FieldName = 'value'
      DisplayFormat = '#,0.00'
    end
    object mt_productactive: TStringField
      FieldName = 'active'
      Size = 50
    end
    object mt_productcategory_id: TIntegerField
      FieldName = 'category_id'
    end
    object mt_productqtd: TFloatField
      FieldName = 'qtd'
      DisplayFormat = '#,0.000'
    end
    object mt_productcategory_name: TStringField
      FieldName = 'category_name'
      Size = 50
    end
    object mt_producttype_unit: TStringField
      FieldName = 'type_unit'
      Size = 50
    end
    object mt_productmerchant_id: TIntegerField
      FieldName = 'merchant_id'
    end
  end
  object mt_order: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'client_id'
        DataType = ftInteger
      end
      item
        Name = 'client_name'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'client_phone'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'client_district_id'
        DataType = ftInteger
      end
      item
        Name = 'client_address'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'client_address_id'
        DataType = ftInteger
      end
      item
        Name = 'client_phone_id'
        DataType = ftInteger
      end
      item
        Name = 'payment_id'
        DataType = ftInteger
      end
      item
        Name = 'payment_name'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'status'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'tipo_saida'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'date_created'
        DataType = ftDateTime
      end
      item
        Name = 'input_type'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'last_modified'
        DataType = ftDateTime
      end
      item
        Name = 'pago'
        DataType = ftFloat
      end
      item
        Name = 'troco'
        DataType = ftFloat
      end
      item
        Name = 'subtotal'
        DataType = ftFloat
      end
      item
        Name = 'desconto'
        DataType = ftFloat
      end
      item
        Name = 'acrescimo'
        DataType = ftFloat
      end
      item
        Name = 'valor_total'
        DataType = ftFloat
      end
      item
        Name = 'qty_items'
        DataType = ftFloat
      end
      item
        Name = 'imp_cliente'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'delivery_fee'
        DataType = ftFloat
      end
      item
        Name = 'imp_endereco'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'imp_obs'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'imp_telefone'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'imp_num_mesa'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'imp_bairro'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 136
    Top = 8
    object mt_orderid: TIntegerField
      FieldName = 'id'
    end
    object mt_orderclient_id: TIntegerField
      FieldName = 'client_id'
    end
    object mt_orderclient_name: TStringField
      FieldName = 'client_name'
      Size = 255
    end
    object mt_orderclient_phone: TStringField
      FieldName = 'client_phone'
      EditMask = '\(00\) 00000-0000;0;_'
      Size = 30
    end
    object mt_orderclient_district_id: TIntegerField
      FieldName = 'client_district_id'
    end
    object mt_orderclient_address: TStringField
      FieldName = 'client_address'
      Size = 255
    end
    object mt_orderclient_address_id: TIntegerField
      FieldName = 'client_address_id'
    end
    object mt_orderclient_phone_id: TIntegerField
      FieldName = 'client_phone_id'
    end
    object mt_orderpayment_id: TIntegerField
      FieldName = 'payment_id'
    end
    object mt_orderpayment_name: TStringField
      FieldName = 'payment_name'
      Size = 50
    end
    object mt_orderstatus: TStringField
      FieldName = 'status'
      Size = 255
    end
    object mt_ordertipo_saida: TStringField
      FieldName = 'tipo_saida'
      Size = 255
    end
    object mt_orderdate_created: TDateTimeField
      FieldName = 'date_created'
    end
    object mt_orderinput_type: TStringField
      FieldName = 'input_type'
      Size = 50
    end
    object mt_orderlast_modified: TDateTimeField
      FieldName = 'last_modified'
    end
    object mt_orderpago: TFloatField
      FieldName = 'pago'
      DisplayFormat = '#,0.00'
    end
    object mt_ordertroco: TFloatField
      FieldName = 'troco'
      DisplayFormat = '#,0.00'
    end
    object mt_ordersubtotal: TFloatField
      FieldName = 'subtotal'
      DisplayFormat = '#,0.00'
    end
    object mt_orderdesconto: TFloatField
      FieldName = 'desconto'
      DisplayFormat = '#,0.00'
    end
    object mt_orderacrescimo: TFloatField
      FieldName = 'acrescimo'
      DisplayFormat = '#,0.00'
    end
    object mt_ordervalor_total: TFloatField
      FieldName = 'valor_total'
      DisplayFormat = '#,0.00'
    end
    object mt_orderqty_items: TFloatField
      FieldName = 'qty_items'
      DisplayFormat = '#,0.000'
    end
    object mt_orderimp_cliente: TStringField
      FieldName = 'imp_cliente'
      Size = 255
    end
    object mt_orderdelivery_fee: TFloatField
      FieldName = 'delivery_fee'
      DisplayFormat = '#,0.00'
    end
    object mt_orderimp_endereco: TStringField
      FieldName = 'imp_endereco'
      Size = 255
    end
    object mt_orderimp_obs: TStringField
      FieldName = 'imp_obs'
      Size = 255
    end
    object mt_orderimp_telefone: TStringField
      FieldName = 'imp_telefone'
      EditMask = '\(00\) 00000-0000;0;_'
      Size = 25
    end
    object mt_orderimp_num_mesa: TStringField
      FieldName = 'imp_num_mesa'
      Size = 50
    end
    object mt_orderimp_bairro: TStringField
      FieldName = 'imp_bairro'
      Size = 255
    end
  end
  object DSmt_order: TDataSource
    DataSet = mt_order
    Left = 136
    Top = 56
  end
  object mt_cart: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 176
    Top = 8
    object mt_cartid: TIntegerField
      FieldName = 'id'
    end
    object mt_cartorder_id: TIntegerField
      FieldName = 'order_id'
    end
    object mt_cartdate_created: TDateTimeField
      FieldName = 'date_created'
    end
    object mt_cartdescricao_produto: TStringField
      FieldName = 'descricao_produto'
      Size = 255
    end
    object mt_cartvalor_unit: TFloatField
      FieldName = 'valor_unit'
      DisplayFormat = '#,0.00'
    end
    object mt_cartproduct_id: TIntegerField
      FieldName = 'product_id'
    end
    object mt_cartqtd: TFloatField
      FieldName = 'qtd'
      DisplayFormat = '#,0.000'
    end
    object mt_carttotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '#,0.00'
    end
  end
  object DSmt_cart: TDataSource
    DataSet = mt_cart
    Left = 176
    Top = 56
  end
  object mt_payment: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 296
    Top = 8
    object mt_paymentid: TIntegerField
      FieldName = 'id'
    end
    object mt_paymentcommand: TIntegerField
      FieldName = 'command'
    end
    object mt_paymentname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object mt_paymenttaxa: TFloatField
      FieldName = 'taxa'
      DisplayFormat = '#,0.00'
    end
    object mt_paymentactive: TStringField
      FieldName = 'active'
      Size = 10
    end
  end
  object DSmt_payment: TDataSource
    DataSet = mt_payment
    Left = 296
    Top = 56
  end
  object mt_district: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 336
    Top = 8
    object mt_districtid: TIntegerField
      FieldName = 'id'
    end
    object mt_districtcommand: TIntegerField
      FieldName = 'command'
    end
    object mt_districtname: TStringField
      FieldName = 'name'
      Size = 255
    end
    object mt_districttax: TFloatField
      FieldName = 'tax'
      DisplayFormat = '#,0.00'
    end
    object mt_districtactive: TStringField
      FieldName = 'active'
      Size = 10
    end
  end
  object DSmt_district: TDataSource
    DataSet = mt_district
    Left = 336
    Top = 56
  end
  object mt_rpt_vendas: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 176
    Top = 104
    object mt_rpt_vendaspp_id: TIntegerField
      FieldName = 'pp_id'
    end
    object mt_rpt_vendaspayment_name: TStringField
      FieldName = 'payment_name'
      Size = 255
    end
    object mt_rpt_vendasqtd_pedidos: TIntegerField
      FieldName = 'qtd_pedidos'
    end
    object mt_rpt_vendasvalor_total: TFloatField
      FieldName = 'valor_total'
      DisplayFormat = '#,0.00'
    end
  end
  object DSmt_rpt_vendas: TDataSource
    DataSet = mt_rpt_vendas
    Left = 176
    Top = 144
  end
  object DSmt_rpt_mais_vendidos: TDataSource
    DataSet = mt_rpt_mais_vendidos
    Left = 216
    Top = 144
  end
  object mt_rpt_mais_vendidos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 216
    Top = 104
    object mt_rpt_mais_vendidosp_product_id: TIntegerField
      FieldName = 'p_product_id'
    end
    object mt_rpt_mais_vendidoscategory_name: TStringField
      FieldName = 'category_name'
      Size = 255
    end
    object mt_rpt_mais_vendidosproduct_name: TStringField
      FieldName = 'product_name'
      Size = 255
    end
    object mt_rpt_mais_vendidosqtd: TFloatField
      FieldName = 'qtd'
      DisplayFormat = '#,0.000'
    end
    object mt_rpt_mais_vendidostotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '#,0.00'
    end
    object mt_rpt_mais_vendidostotal_geral: TFloatField
      FieldName = 'total_geral'
      DisplayFormat = '#,0.00'
    end
  end
  object mt_operator: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 16
    Top = 104
    object mt_operatorid: TIntegerField
      FieldName = 'id'
    end
    object mt_operatorname: TStringField
      FieldName = 'name'
      Size = 255
    end
    object mt_operatoruser: TStringField
      FieldName = 'user'
      Size = 100
    end
    object mt_operatorpassword: TStringField
      FieldName = 'password'
      Size = 100
    end
    object mt_operatorlevel: TStringField
      FieldName = 'level'
      Size = 100
    end
    object mt_operatorclient_view: TStringField
      FieldName = 'client_view'
      Size = 1
    end
    object mt_operatorclient_insert: TStringField
      FieldName = 'client_insert'
      Size = 1
    end
    object mt_operatorclient_update: TStringField
      FieldName = 'client_update'
      Size = 1
    end
    object mt_operatorclient_delete: TStringField
      FieldName = 'client_delete'
      Size = 1
    end
    object mt_operatordistrict_view: TStringField
      FieldName = 'district_view'
      Size = 1
    end
    object mt_operatordistrict_insert: TStringField
      FieldName = 'district_insert'
      Size = 1
    end
    object mt_operatordistrict_update: TStringField
      FieldName = 'district_update'
      Size = 1
    end
    object mt_operatordistrict_delete: TStringField
      FieldName = 'district_delete'
      Size = 1
    end
    object mt_operatorcategory_view: TStringField
      FieldName = 'category_view'
      Size = 1
    end
    object mt_operatorcategory_insert: TStringField
      FieldName = 'category_insert'
      Size = 1
    end
    object mt_operatorcategory_update: TStringField
      FieldName = 'category_update'
      Size = 1
    end
    object mt_operatorcategory_delete: TStringField
      FieldName = 'category_delete'
      Size = 1
    end
    object mt_operatorproduct_view: TStringField
      FieldName = 'product_view'
      Size = 1
    end
    object mt_operatorproduct_insert: TStringField
      FieldName = 'product_insert'
      Size = 1
    end
    object mt_operatorproduct_update: TStringField
      FieldName = 'product_update'
      Size = 1
    end
    object mt_operatorproduct_delete: TStringField
      FieldName = 'product_delete'
      Size = 1
    end
    object mt_operatorpayment_view: TStringField
      FieldName = 'payment_view'
      Size = 1
    end
    object mt_operatorpayment_insert: TStringField
      FieldName = 'payment_insert'
      Size = 1
    end
    object mt_operatorpayment_update: TStringField
      FieldName = 'payment_update'
      Size = 1
    end
    object mt_operatorpayment_delete: TStringField
      FieldName = 'payment_delete'
      Size = 1
    end
    object mt_operatorreport_sale: TStringField
      FieldName = 'report_sale'
      Size = 1
    end
    object mt_operatorreport_best_seller: TStringField
      FieldName = 'report_best_seller'
      Size = 1
    end
    object mt_operatorreport_revenues: TStringField
      FieldName = 'report_revenues'
      Size = 1
    end
    object mt_operatorbill_view: TStringField
      FieldName = 'bill_view'
      Size = 1
    end
    object mt_operatorbill_receive: TStringField
      FieldName = 'bill_receive'
      Size = 1
    end
    object mt_operatorbill_detail: TStringField
      FieldName = 'bill_detail'
      Size = 1
    end
    object mt_operatorbill_print: TStringField
      FieldName = 'bill_print'
      Size = 1
    end
  end
  object DSmt_operator: TDataSource
    DataSet = mt_operator
    Left = 16
    Top = 152
  end
  object mt_merchant: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 56
    Top = 104
    object mt_merchantid: TIntegerField
      FieldName = 'id'
    end
    object mt_merchantname: TStringField
      FieldName = 'name'
      Size = 100
    end
    object mt_merchantstreet: TStringField
      FieldName = 'street'
      Size = 255
    end
    object mt_merchantdistrict: TStringField
      FieldName = 'district'
      Size = 255
    end
    object mt_merchantphone1: TStringField
      FieldName = 'phone1'
      Size = 25
    end
    object mt_merchantphone2: TStringField
      FieldName = 'phone2'
      Size = 25
    end
    object mt_merchantmsg_cupom: TStringField
      FieldName = 'msg_cupom'
      Size = 255
    end
    object mt_merchantopening_hours: TStringField
      FieldName = 'opening_hours'
      Size = 255
    end
  end
  object DSmt_merchant: TDataSource
    DataSet = mt_merchant
    Left = 56
    Top = 152
  end
  object mt_bill_receive: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 96
    Top = 104
    object mt_bill_receivebill_id: TIntegerField
      FieldName = 'bill_id'
    end
    object mt_bill_receiveclient_name: TStringField
      FieldName = 'client_name'
      Size = 255
    end
    object mt_bill_receivedate_created: TDateTimeField
      FieldName = 'date_created'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object mt_bill_receivestatus: TStringField
      FieldName = 'status'
      Size = 50
    end
    object mt_bill_receivevalor_total: TFloatField
      FieldName = 'valor_total'
      DisplayFormat = '#,0.00'
    end
  end
  object DSmt_bill_receive: TDataSource
    DataSet = mt_bill_receive
    Left = 96
    Top = 152
  end
  object mt_list_order_bill: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 136
    Top = 104
    object mt_list_order_billorder_id: TIntegerField
      FieldName = 'order_id'
    end
    object mt_list_order_billdate_created: TDateTimeField
      FieldName = 'date_created'
    end
    object mt_list_order_billtipo_saida: TStringField
      FieldName = 'tipo_saida'
      Size = 50
    end
    object mt_list_order_billvalor_total: TFloatField
      FieldName = 'valor_total'
      DisplayFormat = '#,0.00'
    end
    object mt_list_order_billqty_items: TIntegerField
      FieldName = 'qty_items'
    end
  end
  object DSmt_list_order_bill: TDataSource
    DataSet = mt_list_order_bill
    Left = 136
    Top = 152
  end
  object mt_settings: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 256
    Top = 104
    object mt_settingsid: TIntegerField
      FieldName = 'id'
    end
    object mt_settingspre_visualizar_impressao: TStringField
      FieldName = 'pre_visualizar_impressao'
      Size = 50
    end
    object mt_settingsversion: TStringField
      FieldName = 'version'
      Size = 50
    end
    object mt_settingsbot_power: TStringField
      FieldName = 'bot_power'
      Size = 1
    end
    object mt_settingsbot_list_command: TStringField
      FieldName = 'bot_list_command'
      Size = 1
    end
    object mt_settingsblock_negative_stock: TStringField
      FieldName = 'block_negative_stock'
      Size = 1
    end
    object mt_settingscount_stock: TStringField
      FieldName = 'count_stock'
      Size = 1
    end
  end
  object DSmt_settings: TDataSource
    DataSet = mt_settings
    Left = 256
    Top = 144
  end
end
