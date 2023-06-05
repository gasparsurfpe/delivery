unit uCadastroBairro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, System.JSON, Data.DB;

type
  TfrmCadastroBairro = class(TForm)
    cbStatus: TComboBox;
    edtNome: TEdit;
    Label1: TLabel;
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
    imgVoltar: TImage;
    lbTitulo: TLabel;
    edtTaxa: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    edtCodigo: TEdit;
    procedure imgVoltarClick(Sender: TObject);
    procedure edtTaxaChange(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtTaxaKeyPress(Sender: TObject; var Key: Char);
    procedure cbStatusKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    procedure Salvar;
    procedure Atualizar;
    { Private declarations }
  public
    FModoEdit : boolean;
    FBairroID : Integer;
    { Public declarations }
  end;

var
  frmCadastroBairro: TfrmCadastroBairro;

implementation

{$R *.dfm}

uses uFormat, uLoading, uTabelas, uBairros, uFunctions, uPrincipal;

procedure TfrmCadastroBairro.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroBairro.btSalvarClick(Sender: TObject);
begin
  edtNome.Text := AllTrim(edtNome.Text);
  edtNome.SelStart := Length(edtNome.Text);

  if edtCodigo.Text = '' then
    edtCodigo.Text := '0';

  if edtNome.Text = '' then begin
    ShowMessage('Informe o NOME do bairro');
    edtNome.SetFocus;
    Exit;
  end;

  if FModoEdit then
    Atualizar
  else
    Salvar;
end;

procedure TfrmCadastroBairro.cbStatusKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    btSalvar.Click;
    key := #0;
  end;
end;

procedure TfrmCadastroBairro.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    edtNome.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroBairro.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    edtTaxa.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroBairro.edtTaxaChange(Sender: TObject);
begin
  Formatar(TEdit(Sender),TFormato.Valor);
end;

procedure TfrmCadastroBairro.edtTaxaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    cbStatus.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroBairro.FormShow(Sender: TObject);
begin
  pnTopo.SetFocus;
end;

procedure TfrmCadastroBairro.imgVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroBairro.Salvar;
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

      sql := 'INSERT INTO mt_district (id, command, name, tax, active, merchant_id) VALUES (NULL, '+
             edtCodigo.Text+', '+
             QuotedStr(edtNome.Text)+', '+
             taxa+', '+
             QuotedStr(cbStatus.Text)+', '+frmPrincipal.FMerchantID.ToString+')';
      Tabelas.InjectSQL(sql);

      sql := 'SELECT MAX(id) AS id FROM mt_district WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      FBairroID := ArrayDados.Get(0).GetValue<integer>('id', 0);

      sql := 'SELECT * FROM	mt_district '+
             'WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'AND name NOT LIKE ''S/B'' '+
             'ORDER BY active DESC, command, name';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_district, ConvertJsonToValue(Json));
        Tabelas.mt_district.Locate('id',FBairroID,[loCaseInsensitive]);
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
        frmBairros.NotExistsDados;
        ShowMessage('Ocorreu um erro na conexão');
      end else if Json = 'sql_vazio' then
        frmBairros.NotExistsDados
      else begin
        frmBairros.edtBusca.Text := '';
        frmBairros.ExistsDados;
        frmBairros.FRegistroSalvo := true;
      end;

      Close;
    end);
  end).Start;
end;

procedure TfrmCadastroBairro.Atualizar;
var
  sql, Json, taxa: string;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure begin
    try
      taxa := StringReplace(edtTaxa.Text,'.','',[rfReplaceAll]);
      taxa := StringReplace(taxa,',','.',[rfReplaceAll]);

      sql := 'UPDATE mt_district SET '+
             'command = '+edtCodigo.Text+', '+
             'name = '+QuotedStr(edtNome.Text)+', '+
             'tax = '+taxa+', '+
             'active = '+QuotedStr(cbStatus.Text)+' '+
             'WHERE id = '+FBairroID.ToString;
      Tabelas.InjectSQL(sql);

      sql := 'SELECT * FROM	mt_district '+
             'WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'AND name NOT LIKE ''S/B'' '+
             'ORDER BY active DESC, command, name';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_district, ConvertJsonToValue(Json));
        Tabelas.mt_district.Locate('id',FBairroID,[loCaseInsensitive]);
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
        frmBairros.NotExistsDados;
        ShowMessage('Ocorreu um erro na conexão');
      end else if Json = 'sql_vazio' then
        frmBairros.NotExistsDados
      else begin
        frmBairros.edtBusca.Text := '';
        frmBairros.ExistsDados;
        frmBairros.FRegistroSalvo := true;
      end;

      Close;
    end);
  end).Start;
end;

end.
