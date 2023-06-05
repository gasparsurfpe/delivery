unit uContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, RLReport;

type
  TfrmContas = class(TForm)
    gbSituacao: TGroupBox;
    Label1: TLabel;
    cbSituacao: TComboBox;
    gbPesquisar: TGroupBox;
    Label2: TLabel;
    edtBuscar: TEdit;
    pnBuscar: TPanel;
    imgBuscar: TImage;
    lbBuscar: TLabel;
    btBuscar: TBitBtn;
    grdContas: TDBGrid;
    lbResult: TLabel;
    pnBottom: TPanel;
    pnReceber: TPanel;
    imgReceber: TImage;
    lbReceber: TLabel;
    btReceber: TBitBtn;
    pnVerDet: TPanel;
    imgVerDet: TImage;
    lbVerDet: TLabel;
    btVerDet: TBitBtn;
    pnImprimir: TPanel;
    imgImprimir: TImage;
    lbImprimir: TLabel;
    btImprimir: TBitBtn;
    pnTopo: TPanel;
    lbTitulo: TLabel;
    Image1: TImage;
    rpConta: TRLReport;
    RLBand4: TRLBand;
    rLbLogradouroEmpresa: TRLLabel;
    rLbNomeEmpresa: TRLLabel;
    rLbBairroEmpresa: TRLLabel;
    rLbWhatsAppEmpresa: TRLLabel;
    rLbTelefoneEmpresa: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel40: TRLLabel;
    rLbNomeCliente: TRLLabel;
    RLLabel44: TRLLabel;
    rLbDataAbertura: TRLLabel;
    rpRBandBottom: TRLBand;
    RLDraw10: TRLDraw;
    RLLabel68: TRLLabel;
    rLbValorTotal: TRLLabel;
    RLDraw12: TRLDraw;
    rLbMsgCupom: TRLLabel;
    RLLabel45: TRLLabel;
    rLbSituacao: TRLLabel;
    RLLabel4: TRLLabel;
    rLbNumConta: TRLLabel;
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdContasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbSituacaoChange(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure Image1Click(Sender: TObject);
    procedure btVerDetClick(Sender: TObject);
    procedure btReceberClick(Sender: TObject);
    procedure grdContasDblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ExistsDados;
    procedure NotExistsDados;
    procedure FiltroBusca;
    { Public declarations }
  end;

var
  frmContas: TfrmContas;

implementation

{$R *.dfm}

uses uFunctions, uTabelas, uLoading, uContasDetalhes, uPrincipal;

procedure TfrmContas.FiltroBusca;
var
  sql, Json, stConta: string;
begin
  Enabled := false;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      if cbSituacao.Text = 'Todas' then
        stConta := QuotedStr('%%')
      else
        stConta := QuotedStr(cbSituacao.Text);

      sql := 'SELECT DISTINCT '+
             '     mt_bill_receive.id AS bill_id, '+
             '     mt_client.name AS client_name, '+
             '     mt_bill_receive.date_created AS date_created, '+
             '     mt_bill_receive.status AS status, '+
             '    (SELECT SUM(mt_order.valor_total) FROM mt_order, mt_list_bill_receive '+
             '     WHERE mt_order.id = mt_list_bill_receive.order_id '+
             '     AND mt_list_bill_receive.bill_receive_id = bill_id) AS valor_total '+
             'FROM mt_bill_receive, mt_list_bill_receive, mt_client '+
             'WHERE mt_bill_receive.id = mt_list_bill_receive.bill_receive_id '+
             'AND mt_bill_receive.client_id = mt_client.id '+
             'AND mt_bill_receive.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'AND mt_bill_receive.status LIKE '+stConta+' '+
             'AND mt_client.name LIKE '+QuotedStr('%'+edtBuscar.Text+'%')+' '+
             'ORDER BY 4 ASC, 3 DESC, 2 ASC';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_bill_receive, ConvertJsonToValue(Json));
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
        frmContas.NotExistsDados
      else
        frmContas.ExistsDados;

    end);
  end).Start;
end;

procedure TfrmContas.btBuscarClick(Sender: TObject);
begin
  FiltroBusca;
end;

procedure TfrmContas.btImprimirClick(Sender: TObject);
begin
  if not AllowOperator('bill_print') then
    Exit;

  rLbNomeEmpresa.Caption := Tabelas.mt_merchant.FieldByName('name').AsString;
  rLbLogradouroEmpresa.Caption := Tabelas.mt_merchant.FieldByName('street').AsString;
  rLbBairroEmpresa.Caption := Tabelas.mt_merchant.FieldByName('district').AsString;
  rLbWhatsappEmpresa.Caption := Tabelas.mt_merchant.FieldByName('phone1').AsString;
  rLbTelefoneEmpresa.Caption := Tabelas.mt_merchant.FieldByName('phone2').AsString;
  rLbMsgCupom.Caption := Tabelas.mt_merchant.FieldByName('msg_cupom').AsString;

  rLbNumConta.Caption := Tabelas.mt_bill_receive.FieldByName('bill_id').AsInteger.ToString;
  rLbNomeCliente.Caption := Tabelas.mt_bill_receive.FieldByName('client_name').AsString;
  rLbDataAbertura.Caption := DateToStr(Tabelas.mt_bill_receive.FieldByName('date_created').AsDateTime);
  rLbSituacao.Caption := Tabelas.mt_bill_receive.FieldByName('status').AsString;
  rLbValorTotal.Caption := 'R$ '+ FormatFloat('#,0.00', Tabelas.mt_bill_receive.FieldByName('valor_total').AsFloat);

  if Tabelas.mt_settings.FieldByName('pre_visualizar_impressao').AsString = 's' then
    rpConta.Preview
  else
    rpConta.Print;
end;

procedure TfrmContas.btReceberClick(Sender: TObject);
var
  sql, Json, stConta, BillID : string;
begin
  if not AllowOperator('bill_receive') then
    Exit;

  if Application.MessageBox('Confirma o recebimento do pagamento?','Atenção!',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then begin
    Enabled := false;
    frmLoading.Show;

    TThread.CreateAnonymousThread(procedure
    begin
      try
        BillID := Tabelas.mt_bill_receive.FieldByName('bill_id').AsInteger.ToString;

        sql := 'UPDATE mt_bill_receive SET '+
               'status = '+QuotedStr('Recebida')+' '+
               'WHERE id = '+BillID;
        Tabelas.InjectSQL(sql);

        if cbSituacao.Text = 'Todas' then
          stConta := QuotedStr('%%')
        else
          stConta := QuotedStr(cbSituacao.Text);

        sql := 'SELECT DISTINCT '+
               '     mt_bill_receive.id AS bill_id, '+
               '     mt_client.name AS client_name, '+
               '     mt_bill_receive.date_created AS date_created, '+
               '     mt_bill_receive.status AS status, '+
               '    (SELECT SUM(mt_order.valor_total) FROM mt_order, mt_list_bill_receive '+
               '     WHERE mt_order.id = mt_list_bill_receive.order_id '+
               '     AND mt_list_bill_receive.bill_receive_id = bill_id) AS valor_total '+
               'FROM mt_bill_receive, mt_list_bill_receive, mt_client '+
               'WHERE mt_bill_receive.id = mt_list_bill_receive.bill_receive_id '+
               'AND mt_bill_receive.client_id = mt_client.id '+
               'AND mt_bill_receive.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
               'AND mt_bill_receive.status LIKE '+stConta+' '+
               'ORDER BY 4 ASC, 3 DESC, 2 ASC';
        Json := Tabelas.InjectSQL(sql);
        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
          Tabelas.JsonToDataset(Tabelas.mt_bill_receive, ConvertJsonToValue(Json));
          Tabelas.mt_bill_receive.Locate('bill_id',BillID,[loPartialKey]);
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
          frmContas.NotExistsDados
        else
          frmContas.ExistsDados;

      end);
    end).Start;
  end;
end;

procedure TfrmContas.btVerDetClick(Sender: TObject);
var
  sql, Json: string;
begin
  if not AllowOperator('bill_detail') then
    Exit;

  Enabled := false;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT DISTINCT '+
             '  mt_order.id AS order_id, '+
             '  mt_order.date_created AS date_created, '+
             '  mt_order.tipo_saida AS tipo_saida, '+
             '  mt_order.valor_total AS valor_total, '+
             '  mt_order.qty_items AS qty_items '+
             'FROM mt_order, mt_list_bill_receive '+
             'WHERE mt_order.id = mt_list_bill_receive.order_id '+
             'AND mt_list_bill_receive.bill_receive_id = '+Tabelas.mt_bill_receive.FieldByName('bill_id').AsInteger.ToString+' '+
             'ORDER BY 2 ASC';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_list_order_bill, ConvertJsonToValue(Json));
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if (Json = 'sql_erro') or (Json = 'sql_vazio') then
        ShowMessage('Ocorreu um erro de conexão')
      else begin
        Application.CreateForm(TfrmContasDetalhes, frmContasDetalhes);
        frmContasDetalhes.ShowModal;
        frmContasDetalhes.Free;
      end;
    end);
  end).Start;
end;

procedure TfrmContas.cbSituacaoChange(Sender: TObject);
begin
  FiltroBusca;
end;

procedure TfrmContas.edtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    btBuscar.Click;
    key := #0;
  end;
end;

procedure TfrmContas.ExistsDados;
begin
  lbResult.Visible := false;
  pnReceber.Enabled := true;
  pnVerDet.Enabled := true;
  pnImprimir.Enabled := true;
  grdContas.Visible := true;
end;

procedure TfrmContas.NotExistsDados;
begin
  pnReceber.Enabled := false;
  pnVerDet.Enabled := false;
  pnImprimir.Enabled := false;
  grdContas.Visible := false;
  lbResult.Visible := true;
end;

procedure TfrmContas.FormResize(Sender: TObject);
begin
  lbResult.Left := Trunc(Width/2 - lbResult.Width/2);
end;

procedure TfrmContas.FormShow(Sender: TObject);
begin
  pnTopo.SetFocus;
end;

procedure TfrmContas.grdContasDblClick(Sender: TObject);
begin
  btVerDet.Click;
end;

procedure TfrmContas.grdContasDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (POS('Em aberto',Tabelas.mt_bill_receive.FieldByName('status').AsString) > 0) and (DataCol = 4) then
    TDBGrid(Sender).Canvas.Font.Color := clBlue;

  if (POS('Recebida',Tabelas.mt_bill_receive.FieldByName('status').AsString) > 0) and (DataCol = 4) then
    TDBGrid(Sender).Canvas.Font.Color := clGreen;

  TDBGrid(Sender).Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmContas.Image1Click(Sender: TObject);
begin
  Close;
end;

end.
