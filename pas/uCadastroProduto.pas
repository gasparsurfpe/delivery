unit uCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Data.DB, System.JSON;

type
  TfrmCadastroProduto = class(TForm)
    pnTopo: TPanel;
    Image1: TImage;
    lbTitulo: TLabel;
    Categoria: TLabel;
    Label1: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    edtValor: TEdit;
    cbStatus: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    edtQtd: TEdit;
    Label5: TLabel;
    mmDetalhes: TMemo;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    cbCategoria: TDBLookupComboBox;
    pnBottom: TPanel;
    pnSalvar: TPanel;
    imgSalvar: TImage;
    lbSalvar: TLabel;
    pnCancelar: TPanel;
    imgCancelar: TImage;
    lbCancelar: TLabel;
    Label6: TLabel;
    rbUn: TRadioButton;
    rbKg: TRadioButton;
    rbLt: TRadioButton;
    Label7: TLabel;
    edtCodigo: TEdit;
    procedure FormResize(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure cbStatusKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelarClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure cbCategoriaKeyPress(Sender: TObject; var Key: Char);
    procedure btSalvarClick(Sender: TObject);
    procedure edtValorExit(Sender: TObject);
    procedure edtQtdExit(Sender: TObject);
    procedure edtValorChange(Sender: TObject);
    procedure edtQtdChange(Sender: TObject);
    procedure rbUnClick(Sender: TObject);
    procedure rbKgClick(Sender: TObject);
    procedure rbLtClick(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    FValor : Double;
    FQtd : Real;
    procedure UpdateCampos;
    procedure Salvar;
    procedure Atualizar;
    { Private declarations }
  public
    FModoEdit : boolean;
    FProductID : integer;
    { Public declarations }
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

{$R *.dfm}

uses uTabelas, uLoading, uProdutos, uFormat, uFunctions, uPrincipal;

procedure TfrmCadastroProduto.Atualizar;
var
  sql, Json, TypeUnit: string;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      if rbUn.Checked then
        TypeUnit := 'UN'
      else if rbKg.Checked then
        TypeUnit := 'KG'
      else
        TypeUnit := 'LT';

      sql := 'UPDATE mt_product SET '+
             'command = '+edtCodigo.Text+', '+
             'name = '+QuotedStr(edtNome.Text)+', '+
             'detail = '+QuotedStr(mmDetalhes.Text)+', '+
             'value = '+StringReplace(FloatToStr(FValor),',','.',[rfReplaceAll])+', '+
             'active = '+QuotedStr(cbStatus.Text)+', '+
             'category_id = ' + IntToStr(Tabelas.mt_category.FieldByName('id').AsInteger)+', '+
             'qtd = '+StringReplace(FloatToStr(FQtd),',','.',[rfReplaceAll])+', '+
             'type_unit = '+QuotedStr(TypeUnit)+' '+
             'WHERE id = '+FProductID.ToString;
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
             'AND mt_product.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'AND mt_category.name LIKE '+QuotedStr(Tabelas.mt_category.FieldByName('name').AsString)+' '+
             'ORDER BY 9 DESC, 3, 2';
      Json := Tabelas.InjectSQL(sql);

      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_product, ConvertJsonToValue(Json));
        Tabelas.mt_product.Locate('id',FProductID,[loCaseInsensitive]);
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := True;
      frmLoading.FClose := True;
      frmLoading.Close;

      if Json = 'sql_erro' then begin
        frmProdutos.NotExistsDados;
        ShowMessage('Ocorreu um erro na conexão');
      end else if Json = 'sql_vazio' then
        frmProdutos.NotExistsDados
      else begin
        frmProdutos.edtBuscar.Text := '';
        frmProdutos.cbCategoria.Text := Tabelas.mt_category.FieldByName('name').AsString;
        frmProdutos.ExistsDados;
        frmProdutos.FRegistroSalvo := true;
      end;

      Close;
    end);
  end).Start;
end;

procedure TfrmCadastroProduto.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroProduto.btSalvarClick(Sender: TObject);
begin
  UpdateCampos;

  if edtCodigo.Text = '' then
    edtCodigo.Text := '0';

  if edtNome.Text = '' then begin
    ShowMessage('Informe o NOME do produto!');
    edtNome.SetFocus;
    Exit;
  end;

  if cbCategoria.KeyValue < 1 then begin
    ShowMessage('Informe a CATEGORIA do produto!');
    cbCategoria.SetFocus;
    Exit;
  end;

  if FValor = 0 then begin
    ShowMessage('Informe o VALOR do produto!');
    edtValor.SetFocus;
    Exit;
  end;

  if FValor < 0 then begin
    ShowMessage('O VALOR do produto não pode ser menor que zero!');
    edtValor.SetFocus;
    Exit;
  end;

  if FModoEdit then
    Atualizar
  else
    Salvar;
end;

procedure TfrmCadastroProduto.cbCategoriaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtValor.SetFocus;

  key := #0;
end;

procedure TfrmCadastroProduto.cbStatusKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    mmDetalhes.SetFocus;

  key := #0;
end;

procedure TfrmCadastroProduto.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edtNome.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroProduto.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    cbCategoria.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroProduto.edtQtdChange(Sender: TObject);
begin
  if not rbUn.Checked then
    Formatar(TEdit(Sender), TFormato.Peso);
end;

procedure TfrmCadastroProduto.edtQtdExit(Sender: TObject);
begin
  UpdateCampos;
end;

procedure TfrmCadastroProduto.edtQtdKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    cbStatus.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroProduto.edtValorChange(Sender: TObject);
begin
  Formatar(TEdit(Sender), TFormato.Valor);
end;

procedure TfrmCadastroProduto.edtValorExit(Sender: TObject);
begin
  UpdateCampos;
end;

procedure TfrmCadastroProduto.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#13,#8,',','.']) then
    key := #0;

  if key = #13 then
  begin
    edtQtd.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroProduto.FormResize(Sender: TObject);
begin
  pnTopo.Width := Width;
  lbTitulo.Width := Width - 70;
end;

procedure TfrmCadastroProduto.Image1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroProduto.rbKgClick(Sender: TObject);
begin
  Formatar(edtQtd, TFormato.Peso);
end;

procedure TfrmCadastroProduto.rbLtClick(Sender: TObject);
begin
  Formatar(edtQtd, TFormato.Peso);
end;

procedure TfrmCadastroProduto.rbUnClick(Sender: TObject);
begin
  edtQtd.Text := StringReplace(edtQtd.Text,'.','',[rfReplaceAll]);
  edtQtd.Text := StringReplace(edtQtd.Text,',','',[rfReplaceAll]);
end;

procedure TfrmCadastroProduto.Salvar;
var
  sql, Json, ProductID, TypeUnit: string;
  ArrayDados : TJSONArray;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure begin
    try
      if rbUn.Checked then
        TypeUnit := 'UN'
      else if rbKg.Checked then
        TypeUnit := 'KG'
      else
        TypeUnit := 'LT';

      sql := 'INSERT INTO mt_product (id, command, name, detail, value, active, '+
             'category_id, qtd, type_unit, merchant_id) VALUES (NULL, '+
             edtCodigo.Text+', '+
             QuotedStr(edtNome.Text)+', '+
             QuotedStr(mmDetalhes.Text)+', '+
             StringReplace(FloatToStr(FValor),',','.',[rfReplaceAll])+', '+
             QuotedStr(cbStatus.Text)+', '+
             IntToStr(Tabelas.mt_category.FieldByName('id').AsInteger)+', '+
             StringReplace(FloatToStr(FQtd),',','.',[rfReplaceAll])+', '+
             QuotedStr(TypeUnit)+', '+frmPrincipal.FMerchantID.ToString+');';
      Tabelas.InjectSQL(sql);

      sql := 'SELECT MAX(id) AS id FROM mt_product WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      ProductID := ArrayDados.Get(0).GetValue<string>('id', '');

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
             'AND mt_category.name LIKE '+QuotedStr(Tabelas.mt_category.FieldByName('name').AsString)+' '+
             'ORDER BY 9 DESC, 3, 2';

      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_product, ConvertJsonToValue(Json));
        Tabelas.mt_product.Locate('id',ProductID,[loCaseInsensitive]);
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := True;
      frmLoading.FClose := True;
      frmLoading.Close;

      if Json = 'sql_erro' then begin
        frmProdutos.NotExistsDados;
        ShowMessage('Ocorreu um erro na conexão');
      end else if Json = 'sql_vazio' then
        frmProdutos.NotExistsDados
      else begin
        frmProdutos.edtBuscar.Text := '';
        frmProdutos.cbCategoria.Text := Tabelas.mt_category.FieldByName('name').AsString;
        frmProdutos.ExistsDados;
        frmProdutos.FRegistroSalvo := true;
      end;

      Close;
    end);
  end).Start;
end;

procedure TfrmCadastroProduto.UpdateCampos;
begin
  try
    FValor := StrToFloat(StringReplace(edtValor.Text,'.','',[rfReplaceAll]));
    edtValor.Text := FormatFloat('#,0.00',FValor);
  except
    FValor := 0;
    edtValor.Text := '0,00';
  end;

  try
    FQtd := StrToFloat(StringReplace(edtQtd.Text,'.','',[rfReplaceAll]));
    edtQtd.Text := FormatFloat('#,0.000',FQtd);
  except
    FQtd := 0;
    edtQtd.Text := '0,000';
  end;
end;

end.
