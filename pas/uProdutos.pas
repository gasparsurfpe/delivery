unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Imaging.pngimage, System.JSON,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Menus;

type
  TfrmProdutos = class(TForm)
    gbOrganizar: TGroupBox;
    grdProdutos: TDBGrid;
    lbResult: TLabel;
    edtBuscar: TEdit;
    gbCategoria: TGroupBox;
    cbCategoria: TComboBox;
    pnTopo: TPanel;
    lbTitulo: TLabel;
    Image1: TImage;
    edtFoco: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    pnBottom: TPanel;
    pnNovo: TPanel;
    imgNovo: TImage;
    lbNovo: TLabel;
    btNovo: TBitBtn;
    pnAlterar: TPanel;
    imgAlterar: TImage;
    lbAlterar: TLabel;
    btAlterar: TBitBtn;
    pnExcluir: TPanel;
    imgExcluir: TImage;
    lbExcluir: TLabel;
    btExcluir: TBitBtn;
    pnBuscar: TPanel;
    imgBuscar: TImage;
    lbBuscar: TLabel;
    btBuscar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Mudarstatus1: TMenuItem;
    Sim1: TMenuItem;
    No1: TMenuItem;
    procedure FormResize(Sender: TObject);
    procedure grdProdutosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbCategoriaKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure cbCategoriaChange(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure grdProdutosDblClick(Sender: TObject);
    procedure Sim1Click(Sender: TObject);
    procedure No1Click(Sender: TObject);
  private
    procedure ModificarStatus(ID, Status: String);
    { Private declarations }
  public
    FRegistroSalvo : Boolean;
    procedure ExistsDados;
    procedure NotExistsDados;
    procedure FiltroBuscaProduto;
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses uTabelas, uCadastroProduto, uLoading, uFunctions, uPrincipal;

procedure TfrmProdutos.ModificarStatus(ID, Status:String);
var
  sql, Json, DataHora, DataHoje : string;
  QtdPedidos : Integer;
  ArrayDados : TJSONArray;
begin
  Enabled := False;
  frmLoading.Show;

  edtBuscar.Text := AllTrim(edtBuscar.Text);
  edtBuscar.SelStart := Length(edtBuscar.Text);

  TThread.CreateAnonymousThread(procedure begin
    try
      sql := 'UPDATE mt_product SET active = '+QuotedStr(Status)+' '+
             'WHERE id = '+ID;
      Tabelas.InjectSQL(sql);

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
             'AND mt_product.merchant_id = '+frmPrincipal.FMerchantID.ToString+' ';

      if cbCategoria.Text <> 'Todas as categorias' then
        sql := sql + 'AND mt_category.name LIKE '+QuotedStr(cbCategoria.Text)+' ';

      sql := sql + 'AND (mt_product.id LIKE '+QuotedStr('%'+edtBuscar.Text+'%')+' '+
                   'OR   mt_product.name LIKE '+QuotedStr('%'+edtBuscar.Text+'%')+') '+
                   'ORDER BY 9 DESC, 3, 2';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_product, ConvertJsonToValue(Json));
        Tabelas.mt_product.Locate('id',ID,[loPartialKey]);
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure begin
      Enabled := True;
      frmLoading.FClose := True;
      frmLoading.Close;

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

procedure TfrmProdutos.btAlterarClick(Sender: TObject);
begin
  edtFoco.SetFocus;

  if not AllowOperator('product_update') then
    Exit;

  FRegistroSalvo := false;
  Application.CreateForm(TfrmCadastroProduto, frmCadastroProduto);

  frmCadastroProduto.FModoEdit := true;
  frmCadastroProduto.FProductID := Tabelas.mt_product.FieldByName('id').AsInteger;
  frmCadastroProduto.lbTitulo.Caption := 'Detalhes do produto';
  frmCadastroProduto.edtCodigo.Text := Tabelas.mt_product.FieldByName('command').AsInteger.ToString;
  frmCadastroProduto.edtNome.Text := Tabelas.mt_product.FieldByName('name').AsString;
  frmCadastroProduto.cbCategoria.KeyValue := Tabelas.mt_product.FieldByName('category_id').AsInteger;
  frmCadastroProduto.edtValor.Text := FormatFloat('#,0.00',Tabelas.mt_product.FieldByName('value').AsFloat);

  if Tabelas.mt_product.FieldByName('active').AsString = 'Sim' then
    frmCadastroProduto.cbStatus.ItemIndex := 0
  else
    frmCadastroProduto.cbStatus.ItemIndex := 1;

  if Tabelas.mt_product.FieldByName('type_unit').AsString = 'UN' then
    frmCadastroProduto.rbUn.Checked := true
  else if Tabelas.mt_product.FieldByName('type_unit').AsString = 'KG' then
    frmCadastroProduto.rbKG.Checked := true
  else
    frmCadastroProduto.rbLt.Checked := true;

  if Tabelas.mt_product.FieldByName('type_unit').AsString <> 'UN' then
    frmCadastroProduto.edtQtd.Text := FormatFloat('#,0.000',Tabelas.mt_product.FieldByName('qtd').AsFloat)
  else
    frmCadastroProduto.edtQtd.Text := Tabelas.mt_product.FieldByName('qtd').AsFloat.ToString;

  frmCadastroProduto.mmDetalhes.Text := Tabelas.mt_product.FieldByName('detail').AsString;

  frmCadastroProduto.ShowModal;
  frmCadastroProduto.Free;

  if FRegistroSalvo = true then
    ShowMessage('Registro salvo');
end;

procedure TfrmProdutos.btBuscarClick(Sender: TObject);
begin
  edtFoco.SetFocus;
  FiltroBuscaProduto;
end;

procedure TfrmProdutos.btExcluirClick(Sender: TObject);
var
  sql, Json: string;
begin
  edtFoco.SetFocus;

  if not AllowOperator('product_delete') then
    Exit;

  if Application.MessageBox('Deseja mesmo excluir este produto?','Atenção!',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
  begin
    edtBuscar.Text := '';
    Enabled := false;
    frmLoading.Show;

    TThread.CreateAnonymousThread(procedure
    begin

      try
        sql := 'DELETE FROM mt_product WHERE id = '+
               Tabelas.mt_product.FieldByName('id').AsInteger.ToString;
        Tabelas.InjectSQL(sql);

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
             'AND mt_product.merchant_id = '+frmPrincipal.FMerchantID.ToString+' ';

      if cbCategoria.Text <> 'Todas as categorias' then
        sql := sql + 'AND mt_category.name LIKE '+QuotedStr(cbCategoria.Text)+' ';

      sql := sql + 'ORDER BY 9 DESC, 3, 2';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_product, ConvertJsonToValue(Json));
      except
        Json := 'sql_erro';
      end;

      TThread.Synchronize(nil, procedure
      begin
        Enabled := true;
        frmLoading.FClose := true;
        frmLoading.Close;

        if Json <> 'sql_erro' then begin
          if Json = 'sql_vazio' then
            NotExistsDados
          else
            ExistsDados;

          ShowMessage('Registro excluído com sucesso')
        end else
          ShowMessage('Ocorreu um erro na conexão');
      end);
    end).Start;
  end;
end;

procedure TfrmProdutos.btNovoClick(Sender: TObject);
begin
  edtFoco.SetFocus;

  if not AllowOperator('product_insert') then
    Exit;

  FRegistroSalvo := false;
  Application.CreateForm(TfrmCadastroProduto, frmCadastroProduto);
  frmCadastroProduto.FModoEdit := false;
  frmCadastroProduto.FProductID := 0;
  frmCadastroProduto.lbTitulo.Caption := 'Novo produto';
  frmCadastroProduto.cbStatus.ItemIndex := 0;
  frmCadastroProduto.cbCategoria.KeyValue := 0;
  frmCadastroProduto.ShowModal;
  frmCadastroProduto.Free;

  if FRegistroSalvo = true then
    ShowMessage('Registro salvo');
end;

procedure TfrmProdutos.cbCategoriaChange(Sender: TObject);
begin
  FiltroBuscaProduto;
end;

procedure TfrmProdutos.cbCategoriaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtBuscar.SetFocus;

  key := #0;
end;

procedure TfrmProdutos.edtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    btBuscar.Click;
    key := #0;
  end;
end;

procedure TfrmProdutos.ExistsDados;
begin
  lbResult.Visible := false;
  pnExcluir.Enabled := true;
  pnAlterar.Enabled := true;
  grdProdutos.Visible := true;
end;

procedure TfrmProdutos.FiltroBuscaProduto;
var
  sql, Json: string;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
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
             'AND mt_product.merchant_id = '+frmPrincipal.FMerchantID.ToString+' ';

      if cbCategoria.Text <> 'Todas as categorias' then
        sql := sql + 'AND mt_category.name LIKE '+QuotedStr(cbCategoria.Text)+' ';

      sql := sql + 'AND (mt_product.id LIKE '+QuotedStr('%'+edtBuscar.Text+'%')+' '+
                   'OR   mt_product.name LIKE '+QuotedStr('%'+edtBuscar.Text+'%')+') '+
                   'ORDER BY 9 DESC, 3, 2';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_product, ConvertJsonToValue(Json));
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := True;
      frmLoading.FClose := True;
      frmLoading.Close;

      if Json = 'sql_erro' then begin
        NotExistsDados;
        ShowMessage('Ocorreu um erro na conexão')
      end else if Json = 'sql_vazio' then
        NotExistsDados
      else
        ExistsDados;
    end);
  end).Start;
end;

procedure TfrmProdutos.FormResize(Sender: TObject);
begin
  pnBottom.Width := Width;
  grdProdutos.Width := Width - 22;
  grdProdutos.Height := Height - 270;
  gbOrganizar.Left := Trunc(gbCategoria.Width + 14);
  lbResult.Left := Trunc((Width/2) - (lbResult.Width/2));
  lbResult.Top := Trunc((Height/2) - 20);
end;

procedure TfrmProdutos.grdProdutosDblClick(Sender: TObject);
begin
  btAlterar.Click;
end;

procedure TfrmProdutos.grdProdutosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (POS('Sim',Tabelas.mt_product.FieldByName('active').AsString) > 0) and (DataCol = 6) then
    TDBGrid(Sender).Canvas.Font.Color := clGreen;

  if (POS('Não',Tabelas.mt_product.FieldByName('active').AsString) > 0) and (DataCol = 6) then
    TDBGrid(Sender).Canvas.Font.Color := clRed;

  if (Tabelas.mt_product.FieldByName('qtd').AsFloat <= 0) and (DataCol = 5) then
    TDBGrid(Sender).Canvas.Font.Color := clRed;

  grdProdutos.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmProdutos.Image1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmProdutos.No1Click(Sender: TObject);
begin
  if Tabelas.mt_product.FieldByName('active').AsString <> 'Não' then
    ModificarStatus(Tabelas.mt_product.FieldByName('id').AsInteger.ToString,'Não');
end;

procedure TfrmProdutos.NotExistsDados;
begin
  pnAlterar.Enabled := false;
  pnExcluir.Enabled := false;
  grdProdutos.Visible := false;
  lbResult.Visible := true;
end;

procedure TfrmProdutos.Sim1Click(Sender: TObject);
begin
  if Tabelas.mt_product.FieldByName('active').AsString <> 'Sim' then
    ModificarStatus(Tabelas.mt_product.FieldByName('id').AsInteger.ToString,'Sim');
end;

end.
