unit uLIstaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmListaProdutos = class(TForm)
    grdListaProdutos: TDBGrid;
    pnTopo: TPanel;
    imgVoltar: TImage;
    lbTitulo: TLabel;
    btAdicionar: TBitBtn;
    edtBusca: TEdit;
    btBuscar: TBitBtn;
    lbResult: TLabel;
    pnAdicionar: TPanel;
    imgAdicionar: TImage;
    lbAdicionar: TLabel;
    pnBuscar: TPanel;
    imgBuscar: TImage;
    lbBuscar: TLabel;
    procedure FormResize(Sender: TObject);
    procedure imgVoltarClick(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure grdListaProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure btBuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ExistsDados;
    procedure NotExistsDados;
    { Public declarations }
  end;

var
  frmListaProdutos: TfrmListaProdutos;

implementation

{$R *.dfm}

uses uTabelas, uCadastroPedido, uPerguntaQtd, uLoading, uFunctions, uPrincipal;

procedure TfrmListaProdutos.ExistsDados;
begin
  lbResult.Visible := false;
  btAdicionar.Enabled := true;
  grdListaProdutos.Visible := true;
end;

procedure TfrmListaProdutos.NotExistsDados;
begin
  btAdicionar.Enabled := false;
  grdListaProdutos.Visible := false;
  lbResult.Visible := true;
end;

procedure TfrmListaProdutos.btAdicionarClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPerguntaQtd, frmPerguntaQtd);

  if Tabelas.mt_product.FieldByName('type_unit').AsString = 'UN' then
    frmPerguntaQtd.edtQtd.Text := '1'
  else
    frmPerguntaQtd.edtQtd.Text := '1,000';

  frmPerguntaQtd.ShowModal;
  frmPerguntaQtd.Free;
end;

procedure TfrmListaProdutos.btBuscarClick(Sender: TObject);
var
  sql, Json : string;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT	mt_product.id AS id, '+
             '        mt_category.id AS category_id, '+
             '        mt_product.name AS name, '+
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
             'AND     mt_product.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'AND    (mt_product.id LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'OR      mt_category.name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'OR      mt_product.name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+') ';

      if Tabelas.mt_settings.FieldByName('block_negative_stock').AsString = 's' then
        sql := sql + 'AND mt_product.qtd > 0 ';
      sql := sql + 'ORDER BY 2 ASC, 6 ASC';

      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_product, ConvertJsonToValue(Json));
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := True;
      frmLoading.FClose := true;
      frmLoading.Close;

      if Json = 'sql_erro' then begin
        NotExistsDados;
        ShowMessage('Problema na conexão');
      end else if Json = 'sql_vazio' then
        NotExistsDados
      else begin
        ExistsDados;
        grdListaProdutos.SetFocus;
      end;
    end);
  end).Start;
end;

procedure TfrmListaProdutos.edtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    btBuscar.Click;
    key := #0;
  end;
end;

procedure TfrmListaProdutos.FormResize(Sender: TObject);
begin
  pnTopo.Width := Width;
  lbTitulo.Width := Width - 70;
end;

procedure TfrmListaProdutos.FormShow(Sender: TObject);
begin
  edtBusca.SetFocus;
end;

procedure TfrmListaProdutos.grdListaProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    btAdicionar.Click;
    key := #0;
  end;
end;

procedure TfrmListaProdutos.imgVoltarClick(Sender: TObject);
begin
  Close;
end;

end.
