unit uContasDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, RLReport;

type
  TfrmContasDetalhes = class(TForm)
    pnTopo: TPanel;
    lbTitulo: TLabel;
    Image1: TImage;
    grdListaPedidos: TDBGrid;
    pnBottom: TPanel;
    pnVerCarrinho: TPanel;
    imgVerCarrinho: TImage;
    lbVerCarrinho: TLabel;
    btVerCarrinho: TBitBtn;
    pnCarrinho: TPanel;
    pnPrincipal: TPanel;
    grdCarrinho: TDBGrid;
    rpCarrinho: TRLReport;
    RLBand4: TRLBand;
    RLLabel12: TRLLabel;
    rLbNumConta: TRLLabel;
    RLLabel40: TRLLabel;
    rLbNomeCliente: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel55: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLDraw9: TRLDraw;
    RLBand5: TRLBand;
    RLLabel60: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    rpRBandBottom: TRLBand;
    RLDraw10: TRLDraw;
    RLLabel64: TRLLabel;
    rLbQtdItens: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    pnImprimir: TPanel;
    imgImprimir: TImage;
    lbImprimir: TLabel;
    btImprimir: TBitBtn;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    procedure Image1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btVerCarrinhoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasDetalhes: TfrmContasDetalhes;

implementation

{$R *.dfm}

uses uTabelas, uLoading, uFunctions;

procedure TfrmContasDetalhes.btImprimirClick(Sender: TObject);
var
  sql, json : string;
begin
  Enabled := false;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT DISTINCT '+
             '   mt_cart.id AS id, '+
             '   mt_cart.order_id AS order_id, '+
             '   mt_cart.date_created AS date_created, '+
             '   mt_cart.product_id AS product_id, '+
             '   mt_cart.descricao_produto AS descricao_produto, '+
             '   mt_cart.valor_unit AS valor_unit, '+
             '   mt_cart.qtd AS qtd, '+
             '   mt_cart.total AS total '+
             'FROM mt_cart, mt_list_bill_receive '+
             'WHERE mt_cart.order_id = mt_list_bill_receive.order_id '+
             'AND mt_list_bill_receive.bill_receive_id = '+Tabelas.mt_bill_receive.FieldByName('bill_id').AsInteger.ToString+' '+
             'ORDER BY 3 ASC';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_cart, ConvertJsonToValue(Json));
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
        rLbNumConta.Caption := Tabelas.mt_bill_receive.FieldByName('bill_id').AsInteger.ToString;
        rLbNomeCliente.Caption := Tabelas.mt_bill_receive.FieldByName('client_name').AsString;
        rLbQtdItens.Caption := Tabelas.mt_list_order_bill.FieldByName('qty_items').AsInteger.ToString;

        if Tabelas.mt_settings.FieldByName('pre_visualizar_impressao').AsString = 's' then
          rpCarrinho.Preview
        else
          rpCarrinho.Print;
      end;
    end);
  end).Start;
end;

procedure TfrmContasDetalhes.btVerCarrinhoClick(Sender: TObject);
var
  sql, json : string;
begin
  Enabled := false;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM mt_cart '+
             'WHERE	order_id = '+Tabelas.mt_list_order_bill.FieldByName('order_id').AsInteger.ToString+' '+
             'ORDER BY id ASC;';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_cart, ConvertJsonToValue(Json));
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
        Tag := 1;
        lbTitulo.Caption := 'Pedido Nº '+Tabelas.mt_list_order_bill.FieldByName('order_id').AsInteger.ToString;
        pnVerCarrinho.Visible := false;
        pnImprimir.Visible := false;
        pnPrincipal.Visible := false;
        pnCarrinho.Visible := true;
      end;
    end);
  end).Start;
end;

procedure TfrmContasDetalhes.FormCreate(Sender: TObject);
begin
  pnPrincipal.Align := alClient;
  pnCarrinho.Align := alClient;
  pnCarrinho.Visible := false;
  pnPrincipal.Visible := true;
end;

procedure TfrmContasDetalhes.FormShow(Sender: TObject);
begin
  grdListaPedidos.SetFocus;
end;

procedure TfrmContasDetalhes.Image1Click(Sender: TObject);
begin
  if Tag = 0 then
   Close
  else begin
    Tag := 0;
    lbTitulo.Caption := 'Detalhes da conta';
    pnCarrinho.Visible := false;
    pnPrincipal.Visible := true;
    pnVerCarrinho.Visible := true;
    pnImprimir.Visible := true;
  end;
end;

end.
