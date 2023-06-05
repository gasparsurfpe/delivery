unit uRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.ComCtrls, System.DateUtils, System.JSON, RLReport;

type
  TfrmRelatorios = class(TForm)
    pnTopo: TPanel;
    lbTitulo: TLabel;
    Image1: TImage;
    pnRptVendas: TPanel;
    grdVendas: TDBGrid;
    lbVendasResult: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pn15dias: TPanel;
    img15dias: TImage;
    imgBtFull: TImage;
    lb15dias: TLabel;
    bt15dias: TBitBtn;
    pn30dias: TPanel;
    img30dias: TImage;
    lb30dias: TLabel;
    bt30dias: TBitBtn;
    pnOntem: TPanel;
    imgOntem: TImage;
    lbOntem: TLabel;
    btOntem: TBitBtn;
    pnHoje: TPanel;
    ImgHoje: TImage;
    lbHoje: TLabel;
    btHoje: TBitBtn;
    imgBtEmpty: TImage;
    pnBuscar: TPanel;
    imgBuscar: TImage;
    lbBuscar: TLabel;
    btBuscar: TBitBtn;
    pnMenu: TPanel;
    pnBtVendas: TPanel;
    imgBtVendas: TImage;
    lbBtVendas: TLabel;
    btVendas: TBitBtn;
    pnBtMaisVendidos: TPanel;
    imgBtMaisVendidos: TImage;
    lbBtMaisVendidos: TLabel;
    btMaisVendidos: TBitBtn;
    pnBtFaturamento: TPanel;
    ImgBtFaturamento: TImage;
    lbBtFaturamento: TLabel;
    btFaturamento: TBitBtn;
    Shape1: TShape;
    cbVendasPagamentos: TComboBox;
    pnRptMaisVendidos: TPanel;
    lbMVResult: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Image2: TImage;
    Image3: TImage;
    Shape2: TShape;
    grdMaisVendidos: TDBGrid;
    pnMVBuscar: TPanel;
    imgMVBuscar: TImage;
    lbMVBuscar: TLabel;
    btMVBuscar: TBitBtn;
    cbMVCatg: TComboBox;
    lbTitleMVTotalGeral: TLabel;
    lbMVTotalGeral: TLabel;
    edtMVDataInicial: TDateTimePicker;
    edtMVDataFinal: TDateTimePicker;
    edtVendasDataInicial: TDateTimePicker;
    edtVendasDataFinal: TDateTimePicker;
    pnRptFaturamento: TPanel;
    imgFtOntem: TImage;
    pnFtOntem: TPanel;
    Label4: TLabel;
    Shape3: TShape;
    Label11: TLabel;
    lbFtSubtotalOntem: TLabel;
    Label13: TLabel;
    lbFtTotalOntem: TLabel;
    Label15: TLabel;
    lbFtPedidosOntem: TLabel;
    Label17: TLabel;
    lbFtTckMedioOntem: TLabel;
    pnFtHoje: TPanel;
    imgFtHoje: TImage;
    Label12: TLabel;
    Shape4: TShape;
    Label14: TLabel;
    lbFtSubtotalHoje: TLabel;
    Label18: TLabel;
    lbFtTotalHoje: TLabel;
    Label20: TLabel;
    lbFtPedidosHoje: TLabel;
    Label22: TLabel;
    lbFtTckMedioHoje: TLabel;
    pnFtMes: TPanel;
    imgFtMes: TImage;
    Label24: TLabel;
    Shape5: TShape;
    Label25: TLabel;
    lbFtSubtotalMes: TLabel;
    Label27: TLabel;
    lbFtTotalMes: TLabel;
    Label29: TLabel;
    lbFtPedidosMes: TLabel;
    Label31: TLabel;
    lbFtTckMedioMes: TLabel;
    pnFtTodo: TPanel;
    imgFtTodo: TImage;
    Label33: TLabel;
    Shape6: TShape;
    Label34: TLabel;
    lbFtSubtotalTodo: TLabel;
    Label36: TLabel;
    lbFtTotalTodo: TLabel;
    Label38: TLabel;
    lbFtPedidosTodo: TLabel;
    Label40: TLabel;
    lbFtTckMedioTodo: TLabel;
    lbVendaTotalGeral: TLabel;
    lbTitleVendaTotalGeral: TLabel;
    rpVenda: TRLReport;
    RLBand4: TRLBand;
    rLbNomeEmpresa: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel44: TRLLabel;
    rLbVendaDtInicial: TRLLabel;
    RLLabel45: TRLLabel;
    rLbVendaDtFinal: TRLLabel;
    rpRBandBottom: TRLBand;
    RLDraw10: TRLDraw;
    RLLabel68: TRLLabel;
    rLbVendaTotalGeral: TRLLabel;
    RLDraw12: TRLDraw;
    rLbVendaMsgCupom: TRLLabel;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDraw2: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    BtVdImp: TBitBtn;
    pnVdImp: TPanel;
    imgVdImp: TImage;
    lbVdImp: TLabel;
    RLDBText3: TRLDBText;
    RLLabel3: TRLLabel;
    procedure Image1Click(Sender: TObject);
    procedure bt15diasClick(Sender: TObject);
    procedure bt30diasClick(Sender: TObject);
    procedure btOntemClick(Sender: TObject);
    procedure btHojeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btVendasClick(Sender: TObject);
    procedure edtVendasDataInicialChange(Sender: TObject);
    procedure edtVendasDataFinalChange(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure btMaisVendidosClick(Sender: TObject);
    procedure btMVBuscarClick(Sender: TObject);
    procedure btFaturamentoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtVdImpClick(Sender: TObject);
  private
    procedure ExistsDadosMaisVendidos;
    procedure NotExistsDadosMaisVendidos;
    { Private declarations }
  public
    procedure BuscarVendas;
    procedure BuscarMaisVendidos;
    procedure ExistsDadosVendas;
    procedure NotExistsDadosVendas;
    { Public declarations }
  end;

var
  frmRelatorios: TfrmRelatorios;

implementation

{$R *.dfm}

uses uTabelas, uLoading, uFormat, uFunctions, uPrincipal;

procedure TfrmRelatorios.NotExistsDadosVendas;
begin
  lbTitleVendaTotalGeral.Visible := false;
  lbVendaTotalGeral.Visible := false;
  grdVendas.Visible := false;
  pnVdImp.Visible := false;
  lbVendasResult.Visible := true;
end;

procedure TfrmRelatorios.ExistsDadosVendas;
begin
  lbVendasResult.Visible := false;
  grdVendas.Visible := true;
  lbTitleVendaTotalGeral.Visible := true;
  lbVendaTotalGeral.Visible := true;
  pnVdImp.Visible := true;
  lbTitleVendaTotalGeral.Left := lbVendaTotalGeral.Left - lbTitleVendaTotalGeral.Width - 5;
end;

procedure TfrmRelatorios.NotExistsDadosMaisVendidos;
begin
  grdMaisVendidos.Visible := false;
  lbMVTotalGeral.Visible := false;
  lbTitleMVTotalGeral.Visible := false;
  lbMVResult.Visible := true;
end;

procedure TfrmRelatorios.ExistsDadosMaisVendidos;
begin
  lbMVResult.Visible := false;
  grdMaisVendidos.Visible := true;
  lbMVTotalGeral.Visible := true;
  lbTitleMVTotalGeral.Visible := true;
  lbTitleMVTotalGeral.Left := lbMVTotalGeral.Left - lbTitleMVTotalGeral.Width - 5;
end;

procedure TfrmRelatorios.BuscarMaisVendidos;
var
  sql, Json, dtInicial, dtFinal, tpCatg: string;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      dtInicial := Copy(DateToStr(edtMVDataInicial.Date),7,4)+'-'+
                   Copy(DateToStr(edtMVDataInicial.Date),4,2)+'-'+
                   Copy(DateToStr(edtMVDataInicial.Date),1,2)+' '+
                   '00:00:00';
      dtFinal := Copy(DateToStr(edtMVDataFinal.Date),7,4)+'-'+
                   Copy(DateToStr(edtMVDataFinal.Date),4,2)+'-'+
                   Copy(DateToStr(edtMVDataFinal.Date),1,2)+' '+
                   '23:59:59';
      tpCatg := cbMVCatg.Text;
      if tpCatg = 'Todas as categorias' then
        tpCatg := '%%';

      sql := 'SELECT DISTINCT '+
             '   mt_product.id AS p_product_id, '+
             '   mt_category.name AS category_name, '+
             '   mt_product.name AS product_name, '+
             '   (SELECT SUM(mt_cart.qtd) FROM mt_order, mt_cart, mt_product, mt_category WHERE mt_order.id = mt_cart.order_id '+
             '   AND mt_cart.product_id = mt_product.id AND mt_product.category_id = mt_category.id '+
             '   AND mt_order.date_created BETWEEN '+QuotedStr(dtInicial)+' AND '+QuotedStr(dtFinal)+' '+
             '   AND  mt_order.status <> ''Cancelado'' AND  mt_order.status <> ''Cancelado pelo cliente'' '+
             '   AND mt_product.id = p_product_id AND mt_category.name LIKE '+QuotedStr(tpCatg)+' '+
             '   AND mt_order.merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS qtd, '+
             '   (SELECT SUM(mt_cart.total) FROM mt_order, mt_cart, mt_product, mt_category WHERE mt_order.id = mt_cart.order_id '+
             '   AND mt_cart.product_id = mt_product.id AND mt_product.category_id = mt_category.id '+
             '   AND mt_order.date_created BETWEEN '+QuotedStr(dtInicial)+' AND '+QuotedStr(dtFinal)+' '+
             '   AND  mt_order.status <> ''Cancelado'' AND  mt_order.status <> ''Cancelado pelo cliente'' '+
             '   AND mt_product.id = p_product_id AND mt_category.name LIKE '+QuotedStr(tpCatg)+' '+
             '   AND mt_order.merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS total, '+
             '   (SELECT SUM(mt_cart.total) FROM mt_order, mt_cart, mt_product, mt_category WHERE mt_order.id = mt_cart.order_id '+
             '   AND mt_cart.product_id = mt_product.id AND mt_product.category_id = mt_category.id '+
             '   AND mt_order.date_created BETWEEN '+QuotedStr(dtInicial)+' AND '+QuotedStr(dtFinal)+' '+
             '   AND  mt_order.status <> ''Cancelado'' AND  mt_order.status <> ''Cancelado pelo cliente'' '+
             '   AND mt_category.name LIKE '+QuotedStr(tpCatg)+' '+
             '   AND mt_order.merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS total_geral '+
             'FROM mt_order, mt_cart, mt_product, mt_category '+
             'WHERE mt_order.id = mt_cart.order_id '+
             'AND mt_cart.product_id = mt_product.id '+
             'AND mt_product.category_id = mt_category.id '+
             'AND mt_order.date_created BETWEEN '+QuotedStr(dtInicial)+' AND '+QuotedStr(dtFinal)+' '+
             'AND mt_order.status <> ''Cancelado'' '+
             'AND mt_order.status <> ''Cancelado pelo cliente'' '+
             'AND mt_order.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'AND mt_category.name LIKE '+QuotedStr(tpCatg)+' '+
             'ORDER BY 4 DESC, 5 DESC, 3 ASC, 2 ASC';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_rpt_mais_vendidos, ConvertJsonToValue(Json));
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
        NotExistsDadosMaisVendidos
      else begin
        lbMVTotalGeral.Caption := FormatFloat('#,0.00',Tabelas.mt_rpt_mais_vendidos.FieldByName('total_geral').AsFloat);
        ExistsDadosMaisVendidos;
      end;
    end);
  end).Start;
end;

procedure TfrmRelatorios.BuscarVendas;
var
  x : integer;
  sql, Json, dtInicial, dtFinal, pag: string;
  TotalGeral : Double;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      dtInicial := QuotedStr(Copy(DateToStr(edtVendasDataInicial.Date),7,4)+'-'+
                   Copy(DateToStr(edtVendasDataInicial.Date),4,2)+'-'+
                   Copy(DateToStr(edtVendasDataInicial.Date),1,2)+' '+
                   '00:00:00');
      dtFinal := QuotedStr(Copy(DateToStr(edtVendasDataFinal.Date),7,4)+'-'+
                   Copy(DateToStr(edtVendasDataFinal.Date),4,2)+'-'+
                   Copy(DateToStr(edtVendasDataFinal.Date),1,2)+' '+
                   '23:59:59');
      if cbVendasPagamentos.Text = 'Todas os pagamentos' then
        pag := QuotedStr('%%')
      else
        pag := QuotedStr(cbVendasPagamentos.Text);

      sql := 'SELECT DISTINCT '+
             '   mt_payment.id AS pp_id, '+
             '   mt_payment.name AS payment_name, '+
             '  (SELECT COUNT(mt_order.id) FROM mt_order '+
             '   WHERE mt_order.payment_id = mt_payment.id '+
             '   AND mt_order.status <> ''Cancelado'' '+
             '   AND mt_order.status <> ''Cancelado pelo cliente'' '+
             '   AND mt_order.date_created BETWEEN '+dtInicial+' AND '+dtFinal+' '+
             '   AND mt_order.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             '   AND mt_payment.id = pp_id) AS qtd_pedidos, '+
             '  (SELECT SUM(mt_order.valor_total) FROM mt_order '+
             '   WHERE mt_order.payment_id = mt_payment.id '+
             '   AND mt_order.status <> ''Cancelado'' '+
             '   AND mt_order.status <> ''Cancelado pelo cliente'' '+
             '   AND mt_order.date_created BETWEEN '+dtInicial+' AND '+dtFinal+' '+
             '   AND mt_order.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             '   AND mt_payment.id = pp_id) AS valor_total '+
             'FROM mt_order, mt_payment '+
             'WHERE mt_order.payment_id = mt_payment.id '+
             'AND  mt_order.status <> ''Cancelado'' '+
             'AND  mt_order.status <> ''Cancelado pelo cliente'' '+
             'AND mt_order.date_created BETWEEN '+dtInicial+' AND '+dtFinal+' '+
             'AND mt_order.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'AND mt_payment.name LIKE '+pag+' '+
             'GROUP BY mt_payment.name '+
             'ORDER BY mt_payment.id ASC';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_rpt_vendas, ConvertJsonToValue(Json));

        TotalGeral := 0;
        Tabelas.mt_rpt_vendas.First;
        while not Tabelas.mt_rpt_vendas.Eof do begin
          TotalGeral := TotalGeral + Tabelas.mt_rpt_vendas.FieldByName('valor_total').AsFloat;
          Tabelas.mt_rpt_vendas.Next;
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
        NotExistsDadosVendas
      else begin
        lbVendaTotalGeral.Caption := FormatFloat('R$ #,0.00',TotalGeral);
        ExistsDadosVendas;
      end;
    end);
  end).Start;
end;

procedure TfrmRelatorios.BtVdImpClick(Sender: TObject);
begin
  rLbVendaDtInicial.Caption := DateToStr(edtVendasDataInicial.Date);
  rLbVendaDtFinal.Caption := DateToStr(edtVendasDataFinal.Date);
  rLbVendaMsgCupom.Caption := Tabelas.mt_merchant.FieldByName('msg_cupom').AsString;
  rLbVendaTotalGeral.Caption := lbVendaTotalGeral.Caption;
  if Tabelas.mt_settings.FieldByName('pre_visualizar_impressao').AsString = 's' then
    rpVenda.Preview
  else
    rpVenda.Print;
end;

procedure TfrmRelatorios.bt15diasClick(Sender: TObject);
begin
  img15dias.Picture := imgBtFull.Picture;
  img30dias.Picture := imgBtEmpty.Picture;
  imgHoje.Picture := imgBtEmpty.Picture;
  imgOntem.Picture := imgBtEmpty.Picture;

  edtVendasDataInicial.Date := Date() - 15;
  edtVendasDataFinal.Date := Date();

  BuscarVendas;
end;

procedure TfrmRelatorios.bt30diasClick(Sender: TObject);
begin
  img30dias.Picture := imgBtFull.Picture;
  img15dias.Picture := imgBtEmpty.Picture;
  imgHoje.Picture := imgBtEmpty.Picture;
  imgOntem.Picture := imgBtEmpty.Picture;

  edtVendasDataInicial.Date := Date() - 30;
  edtVendasDataFinal.Date := Date();

  BuscarVendas;
end;

procedure TfrmRelatorios.btBuscarClick(Sender: TObject);
begin
  BuscarVendas;
end;

procedure TfrmRelatorios.btFaturamentoClick(Sender: TObject);
var
  sql, Json : string;
  dtOntemInicial, dtOntemFinal : String;
  dtHojeInicial, dtHojeFinal : String;
  dtMesInicial, dtMesFinal : String;
  ArrayDados : TJSONArray;
begin
  if not AllowOperator('report_revenues') then
    Exit;

  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      dtOntemInicial := DateToStr((Date - 1));
      dtOntemInicial := QuotedStr(Copy(dtOntemInicial,7,4)+'-'+
                        Copy(dtOntemInicial,4,2)+'-'+
                        Copy(dtOntemInicial,1,2)+' '+
                        '00:00:00');
      dtOntemFinal := QuotedStr(Copy(dtOntemInicial,2,10)+' 23:59:59');

      dtHojeInicial := DateToStr((Date));
      dtHojeInicial := QuotedStr(Copy(dtHojeInicial,7,4)+'-'+
                        Copy(dtHojeInicial,4,2)+'-'+
                        Copy(dtHojeInicial,1,2)+' '+
                        '00:00:00');
      dtHojeFinal := QuotedStr(Copy(dtHojeInicial,2,10)+' 23:59:59');

      dtMesInicial := DateToStr(StartOfTheMonth(Date));
      dtMesInicial := QuotedStr(Copy(dtMesInicial,7,4)+'-'+
                      Copy(dtMesInicial,4,2)+'-'+
                      Copy(dtMesInicial,1,2)+' '+
                      '00:00:00');
      dtMesFinal := DateToStr(EndOfTheMonth(Date));
      dtMesFinal := QuotedStr(Copy(dtMesFinal,7,4)+'-'+
                      Copy(dtMesFinal,4,2)+'-'+
                      Copy(dtMesFinal,1,2)+' '+
                      '23:59:59');

      sql := 'SELECT '+
             '    SUM(valor_total) AS total_todo, '+
             '   (SELECT SUM(subtotal) FROM mt_order '+
             '    WHERE status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS subtotal_todo, '+
             '   (SELECT COUNT(id) FROM mt_order '+
             '    WHERE status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS qtd_pedidos_todo, '+
             '   (SELECT AVG(subtotal) FROM mt_order '+
             '    WHERE status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS ticket_medio_todo, '+
             '   (SELECT SUM(valor_total) FROM mt_order '+
             '    WHERE date_created BETWEEN '+dtHojeInicial+' AND '+dtHojeFinal+' '+
             '    AND status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS total_hoje, '+
             '   (SELECT SUM(subtotal) FROM mt_order '+
             '    WHERE date_created BETWEEN '+dtHojeInicial+' AND '+dtHojeFinal+' '+
             '    AND status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS subtotal_hoje, '+
             '   (SELECT COUNT(id) FROM mt_order '+
             '    WHERE date_created BETWEEN '+dtHojeInicial+' AND '+dtHojeFinal+' '+
             '    AND status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS qtd_pedidos_hoje, '+
             '   (SELECT AVG(subtotal) FROM mt_order '+
             '    WHERE date_created BETWEEN '+dtHojeInicial+' AND '+dtHojeFinal+' '+
             '    AND status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS ticket_medio_hoje, '+
             '   (SELECT SUM(valor_total) FROM mt_order '+
             '    WHERE date_created BETWEEN '+dtMesInicial+' AND '+dtMesFinal+' '+
             '    AND status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS total_mes, '+
             '   (SELECT SUM(subtotal) FROM mt_order '+
             '    WHERE date_created BETWEEN '+dtMesInicial+' AND '+dtMesFinal+' '+
             '    AND status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS subtotal_mes, '+
             '   (SELECT COUNT(id) FROM mt_order '+
             '    WHERE date_created BETWEEN '+dtMesInicial+' AND '+dtMesFinal+' '+
             '    AND status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS qtd_pedidos_mes, '+
             '   (SELECT AVG(subtotal) FROM mt_order '+
             '    WHERE date_created BETWEEN '+dtMesInicial+' AND '+dtMesFinal+' '+
             '    AND status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS ticket_medio_mes, '+
             '   (SELECT SUM(valor_total) FROM mt_order '+
             '    WHERE date_created BETWEEN '+dtOntemInicial+' AND '+dtOntemFinal+' '+
             '    AND status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS total_ontem, '+
             '   (SELECT SUM(subtotal) FROM mt_order '+
             '    WHERE date_created BETWEEN '+dtOntemInicial+' AND '+dtOntemFinal+' '+
             '    AND status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS subtotal_ontem, '+
             '   (SELECT COUNT(id) FROM mt_order '+
             '    WHERE date_created BETWEEN '+dtOntemInicial+' AND '+dtOntemFinal+' '+
             '    AND status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS qtd_pedidos_ontem, '+
             '   (SELECT AVG(subtotal) FROM mt_order '+
             '    WHERE date_created BETWEEN '+dtOntemInicial+' AND '+dtOntemFinal+' '+
             '    AND status NOT LIKE ''CANCELADO%'' '+
             '    AND merchant_id = '+frmPrincipal.FMerchantID.ToString+') AS ticket_medio_ontem '+
             'FROM mt_order '+
             'WHERE status NOT LIKE ''CANCELADO%'' '+
             'AND merchant_id = '+frmPrincipal.FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if (Json <> 'sql_erro') <> (Json <> 'sql_vazio') then
        ShowMessage('Ocorreu um erro de conexão')
      else begin
        ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;

        lbFtTotalOntem.Caption := FormatFloat('R$ #,0.00',ArrayDados.Get(0).GetValue<double>('total_ontem', 0));
        lbFtSubtotalOntem.Caption := FormatFloat('R$ #,0.00',ArrayDados.Get(0).GetValue<double>('subtotal_ontem', 0));
        lbFtPedidosOntem.Caption := ArrayDados.Get(0).GetValue<integer>('qtd_pedidos_ontem', 0).ToString;
        lbFtTckMedioOntem.Caption := FormatFloat('R$ #,0.00',ArrayDados.Get(0).GetValue<double>('ticket_medio_ontem', 0));

        lbFtTotalHoje.Caption := FormatFloat('R$ #,0.00',ArrayDados.Get(0).GetValue<double>('total_hoje', 0));
        lbFtSubtotalHoje.Caption := FormatFloat('R$ #,0.00',ArrayDados.Get(0).GetValue<double>('subtotal_hoje', 0));
        lbFtPedidosHoje.Caption := ArrayDados.Get(0).GetValue<integer>('qtd_pedidos_hoje', 0).ToString;
        lbFtTckMedioHoje.Caption := FormatFloat('R$ #,0.00',ArrayDados.Get(0).GetValue<double>('ticket_medio_hoje', 0));

        lbFtTotalMes.Caption := FormatFloat('R$ #,0.00',ArrayDados.Get(0).GetValue<double>('total_mes', 0));
        lbFtSubtotalMes.Caption := FormatFloat('R$ #,0.00',ArrayDados.Get(0).GetValue<double>('subtotal_mes', 0));
        lbFtPedidosMes.Caption := ArrayDados.Get(0).GetValue<integer>('qtd_pedidos_mes', 0).ToString;
        lbFtTckMedioMes.Caption := FormatFloat('R$ #,0.00',ArrayDados.Get(0).GetValue<double>('ticket_medio_mes', 0));

        lbFtTotalTodo.Caption := FormatFloat('R$ #,0.00',ArrayDados.Get(0).GetValue<double>('total_todo', 0));
        lbFtSubtotalTodo.Caption := FormatFloat('R$ #,0.00',ArrayDados.Get(0).GetValue<double>('subtotal_todo', 0));
        lbFtPedidosTodo.Caption := ArrayDados.Get(0).GetValue<integer>('qtd_pedidos_todo', 0).ToString;
        lbFtTckMedioTodo.Caption := FormatFloat('R$ #,0.00',ArrayDados.Get(0).GetValue<double>('ticket_medio_todo', 0));

        Tag := 1;
        lbTitulo.Caption := 'Faturamento';
        pnMenu.Visible := false;
        pnRptFaturamento.Visible := true;
      end;
    end);
  end).Start;
end;

procedure TfrmRelatorios.btOntemClick(Sender: TObject);
begin
  imgOntem.Picture := imgBtFull.Picture;
  img15dias.Picture := imgBtEmpty.Picture;
  img30dias.Picture := imgBtEmpty.Picture;
  imgHoje.Picture := imgBtEmpty.Picture;

  edtVendasDataInicial.Date := Date() - 1;
  edtVendasDataFinal.Date := edtVendasDataInicial.Date;

  BuscarVendas;
end;

procedure TfrmRelatorios.btHojeClick(Sender: TObject);
begin
  imgHoje.Picture := imgBtFull.Picture;
  img15dias.Picture := imgBtEmpty.Picture;
  img30dias.Picture := imgBtEmpty.Picture;
  imgOntem.Picture := imgBtEmpty.Picture;

  edtVendasDataInicial.Date := Date();
  edtVendasDataFinal.Date := edtVendasDataInicial.Date;

  BuscarVendas;
end;

procedure TfrmRelatorios.btMaisVendidosClick(Sender: TObject);
var
  sql, Json : string;
begin
  if not AllowOperator('report_best_seller') then
    Exit;

  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM	mt_category '+
             'WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'ORDER BY id ASC';
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
      else if JSon = 'sql_vazio' then
        ShowMessage('Nenhuma categoria cadastrada')
      else begin
        cbMVCatg.Items.Clear;
        cbMVCatg.Items.Add('Todas as categorias');
        Tabelas.mt_category.First;
        while not Tabelas.mt_category.Eof do
        begin
          cbMVCatg.Items.Add(Tabelas.mt_category.FieldByName('name').AsString);
          Tabelas.mt_category.Next;
        end;
        cbMVCatg.ItemIndex := 0;

        pnMenu.Visible := false;
        pnRptMaisVendidos.Visible := true;
        edtMVDataInicial.Date := Date();
        edtMVDataFinal.Date := Date();
        lbTitulo.Caption := 'Relatório dos mais vendidos';
        Tag := 1;
        NotExistsDadosMaisVendidos;
      end;

    end);
  end).Start;
end;

procedure TfrmRelatorios.btMVBuscarClick(Sender: TObject);
begin
  BuscarMaisVendidos;
end;

procedure TfrmRelatorios.btVendasClick(Sender: TObject);
var
  sql, Json : string;
begin
  if not AllowOperator('report_sale') then
    Exit;

  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM	mt_payment '+
             'WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'ORDER BY id ASC';
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
      else begin
        img15dias.Picture := imgBtFull.Picture;
        img30dias.Picture := imgBtEmpty.Picture;
        imgHoje.Picture := imgBtEmpty.Picture;
        imgOntem.Picture := imgBtEmpty.Picture;

        cbVendasPagamentos.Items.Clear;
        cbVendasPagamentos.Items.Add('Todas os pagamentos');
        Tabelas.mt_payment.First;
        while not Tabelas.mt_payment.Eof do
        begin
          cbVendasPagamentos.Items.Add(Tabelas.mt_payment.FieldByName('name').AsString);
          Tabelas.mt_payment.Next;
        end;
        cbVendasPagamentos.ItemIndex := 0;

        pnMenu.Visible := false;
        pnRptVendas.Visible := true;
        edtVendasDataInicial.Date := Date();
        edtVendasDataFinal.Date := Date();
        lbTitulo.Caption := 'Relatório de vendas';
        Tag := 1;
        imgHoje.Picture := imgBtEmpty.Picture;
        img15dias.Picture := imgBtEmpty.Picture;
        img30dias.Picture := imgBtEmpty.Picture;
        imgOntem.Picture := imgBtEmpty.Picture;
        NotExistsDadosVendas;
      end;

    end);
  end).Start;
end;

procedure TfrmRelatorios.edtVendasDataFinalChange(Sender: TObject);
begin
  Formatar(TEdit(Sender), TFormato.Dt);
end;

procedure TfrmRelatorios.edtVendasDataInicialChange(Sender: TObject);
begin
  Formatar(TEdit(Sender), TFormato.Dt);
end;

procedure TfrmRelatorios.FormCreate(Sender: TObject);
begin
  pnMenu.Align := alClient;
  pnRptVendas.Align := alClient;
  pnRptMaisVendidos.Align := alClient;
  pnRptFaturamento.Align := alClient;

  pnRptVendas.Visible := false;
  pnRptMaisVendidos.Visible := false;
  pnRptFaturamento.Visible := false;
  pnMenu.Visible := true;
end;

procedure TfrmRelatorios.FormResize(Sender: TObject);
var
  Intervalo: Integer;
begin
  Intervalo := Trunc((Width - 60 - (165 * 4)) / 3);
  pnFtHoje.Left := pnFtOntem.Left + pnFtOntem.Width + 1 + Intervalo;
  pnFtMes.Left := pnFtHoje.Left + pnFtHoje.Width + 1 + Intervalo;
  pnFtTodo.Left := pnFtMes.Left + pnFtMes.Width + 1 + Intervalo;
end;

procedure TfrmRelatorios.Image1Click(Sender: TObject);
begin
  if Tag = 0 then
    Close;

  Tag := 0;
  pnRptVendas.Visible := false;
  pnRptMaisVendidos.Visible := false;
  pnRptFaturamento.Visible := false;
  lbTitulo.Caption := 'Relatórios';
  pnMenu.Visible := true;
end;

end.
