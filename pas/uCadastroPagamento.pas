unit uCadastroPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, System.JSON, Data.DB;

type
  TfrmCadastroPagamento = class(TForm)
    cbStatus: TComboBox;
    edtNome: TEdit;
    edtTaxa: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnBottom: TPanel;
    pnSalvar: TPanel;
    imgSalvar: TImage;
    lbSalvar: TLabel;
    btSalvar: TBitBtn;
    pnCancelar: TPanel;
    imgCancelar: TImage;
    lbCancelar: TLabel;
    btCancelar: TBitBtn;
    pnTopo: TPanel;
    lbTitulo: TLabel;
    imgVoltar: TImage;
    Label4: TLabel;
    edtCodigo: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtTaxaKeyPress(Sender: TObject; var Key: Char);
    procedure cbStatusKeyPress(Sender: TObject; var Key: Char);
    procedure imgVoltarClick(Sender: TObject);
    procedure edtTaxaChange(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    procedure Atualizar;
    procedure Salvar;
    { Private declarations }
  public
    FModoEdit : Boolean;
    FPagamentoID : Integer;
    { Public declarations }
  end;

var
  frmCadastroPagamento: TfrmCadastroPagamento;

implementation

{$R *.dfm}

uses uFormat, uLoading, uPagamentos, uTabelas, uFunctions, uPrincipal;

procedure TfrmCadastroPagamento.Salvar;
var
  sql, Json, taxa: string;
  ArrayDados : TJSONArray;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure begin
    try
      taxa := StringReplace(edtTaxa.Text,'.','',[rfReplaceAll]);
      taxa := StringReplace(taxa,',','.',[rfReplaceAll]);

      sql := 'INSERT INTO mt_payment (id, command, name, taxa, active, merchant_id) VALUES (NULL, '+
             edtCodigo.Text+', '+
             QuotedStr(edtNome.Text)+', '+
             taxa+', '+
             QuotedStr(cbStatus.Text)+', '+frmPrincipal.FMerchantID.ToString+')';
      Tabelas.InjectSQL(sql);

      sql := 'SELECT MAX(id) AS id FROM mt_payment WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      FPagamentoID := ArrayDados.Get(0).GetValue<integer>('id', 0);

      sql := 'SELECT * FROM	mt_payment '+
             'WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'ORDER BY active DESC, command';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_payment, ConvertJsonToValue(Json));
        Tabelas.mt_payment.Locate('id',FPagamentoID,[loCaseInsensitive]);
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
        frmPagamentos.NotExistsDados;
        ShowMessage('Ocorreu um erro na conexão');
      end else if Json = 'sql_vazio' then
        frmPagamentos.NotExistsDados
      else begin
        frmPagamentos.edtBusca.Text := '';
        frmPagamentos.ExistsDados;
        frmPagamentos.FRegistroSalvo := true;
      end;

      Close;
    end);
  end).Start;
end;

procedure TfrmCadastroPagamento.Atualizar;
var
  sql, Json, taxa: string;
begin
  if ((Tabelas.mt_payment.FieldByName('id').AsInteger = 1) and (UpperCase(edtNome.Text) <> 'DINHEIRO')) or
     ((Tabelas.mt_payment.FieldByName('id').AsInteger = 2) and (UpperCase(edtNome.Text) <> 'A PRAZO')) then begin
    ShowMessage('Você não pode alterar o nome desse registro');
    Exit;
  end;

  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure begin
    try
      taxa := StringReplace(edtTaxa.Text,'.','',[rfReplaceAll]);
      taxa := StringReplace(taxa,',','.',[rfReplaceAll]);

      sql := 'UPDATE mt_payment SET '+
             'command = '+edtCodigo.Text+', '+
             'name = '+QuotedStr(edtNome.Text)+', '+
             'taxa = '+taxa+', '+
             'active = '+QuotedStr(cbStatus.Text)+' '+
             'WHERE id = '+FPagamentoID.ToString;
      Tabelas.InjectSQL(sql);

      sql := 'SELECT * FROM	mt_payment '+
             'WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'ORDER BY active DESC, command';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_payment, ConvertJsonToValue(Json));
        Tabelas.mt_payment.Locate('id',FPagamentoID,[loCaseInsensitive]);
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
        frmPagamentos.NotExistsDados;
        ShowMessage('Ocorreu um erro na conexão');
      end else if Json = 'sql_vazio' then
        frmPagamentos.NotExistsDados
      else begin
        frmPagamentos.edtBusca.Text := '';
        frmPagamentos.ExistsDados;
        frmPagamentos.FRegistroSalvo := true;
      end;

      Close;
    end);
  end).Start;
end;

procedure TfrmCadastroPagamento.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroPagamento.btSalvarClick(Sender: TObject);
begin
  edtNome.Text := AllTrim(edtNome.Text);
  edtNome.SelStart := Length(edtNome.Text);

  if edtCodigo.Text = '' then
    edtCodigo.Text := '0';

  if edtNome.Text = '' then begin
    ShowMessage('Informe o NOME do pagamento');
    edtNome.SetFocus;
    Exit;
  end;

  if FModoEdit then
    Atualizar
  else
    Salvar;
end;

procedure TfrmCadastroPagamento.cbStatusKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    btSalvar.Click;
    key := #0;
  end;
end;

procedure TfrmCadastroPagamento.edtCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    edtNome.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroPagamento.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    cbStatus.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroPagamento.edtTaxaChange(Sender: TObject);
begin
  Formatar(TEdit(Sender), TFormato.Valor);
end;

procedure TfrmCadastroPagamento.edtTaxaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    cbStatus.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroPagamento.FormShow(Sender: TObject);
begin
  pnTopo.SetFocus;
end;

procedure TfrmCadastroPagamento.imgVoltarClick(Sender: TObject);
begin
  Close;
end;

end.
