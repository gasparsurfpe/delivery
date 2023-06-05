unit uCadastroCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, System.JSON, Data.DB;

type
  TfrmCadastroCategoria = class(TForm)
    btCancelar: TBitBtn;
    btSalvar: TBitBtn;
    cbStatus: TComboBox;
    edtNome: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    mmDetalhes: TMemo;
    pnTopo: TPanel;
    imgVoltar: TImage;
    lbTitulo: TLabel;
    pnBottom: TPanel;
    pnSalvar: TPanel;
    imgSalvar: TImage;
    lbSalvar: TLabel;
    pnCancelar: TPanel;
    imgCancelar: TImage;
    lbCancelar: TLabel;
    Label2: TLabel;
    edtCodigo: TEdit;
    procedure btCancelarClick(Sender: TObject);
    procedure imgVoltarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure cbStatusKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Salvar;
    procedure Atualizar;
  public
    FModoEdit : Boolean;
    FCategoriaID : Integer;
    { Public declarations }
  end;

var
  frmCadastroCategoria: TfrmCadastroCategoria;

implementation

{$R *.dfm}

uses uLoading, uTabelas, uCategorias, uFunctions, uPrincipal;

procedure TfrmCadastroCategoria.Salvar;
var
  sql, Json: string;
  ArrayDados : TJSONArray;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure begin
    try
      sql := 'INSERT INTO mt_category (id, command, name, detail, active, merchant_id) VALUES (NULL, '+
              edtCodigo.Text+', '+
              QuotedStr(edtNome.Text)+', '+
              QuotedStr(mmDetalhes.Text)+', '+
              QuotedStr(cbStatus.Text)+', '+frmPrincipal.FMerchantID.ToString+')';
      Tabelas.InjectSQL(sql);

      sql := 'SELECT MAX(id) AS id FROM mt_category WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      FCategoriaID := ArrayDados.Get(0).GetValue<integer>('id', 0);

      sql := 'SELECT * FROM	mt_category '+
             'WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'ORDER BY active DESC, command, name';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_category, Json);
        Tabelas.mt_category.Locate('id',FCategoriaID,[loCaseInsensitive]);
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
        frmCategorias.NotExistsDados;
        ShowMessage('Ocorreu um erro na conexão');
      end else if Json = 'sql_vazio' then
        frmCategorias.NotExistsDados
      else begin
        frmCategorias.edtBusca.Text := '';
        frmCategorias.ExistsDados;
        frmCategorias.FRegistroSalvo := true;
      end;

      Close;
    end);
  end).Start;
end;

procedure TfrmCadastroCategoria.Atualizar;
var
  sql, Json: string;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure begin
    try
      sql := 'UPDATE mt_category SET '+
             'command = '+edtCodigo.Text+', '+
             'name = '+QuotedStr(edtNome.Text)+', '+
             'detail = '+QuotedStr(mmDetalhes.Text)+', '+
             'active = '+QuotedStr(cbStatus.Text)+' '+
             'WHERE id = '+FCategoriaID.ToString;
      Tabelas.InjectSQL(sql);

      sql := 'SELECT * FROM	mt_category '+
             'WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'ORDER BY active DESC, command, name';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_category, Json);
        Tabelas.mt_category.Locate('id',FCategoriaID,[loCaseInsensitive]);
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
        frmCategorias.NotExistsDados;
        ShowMessage('Ocorreu um erro na conexão');
      end else if Json = 'sql_vazio' then
        frmCategorias.NotExistsDados
      else begin
        frmCategorias.edtBusca.Text := '';
        frmCategorias.ExistsDados;
        frmCategorias.FRegistroSalvo := true;
      end;

      Close;
    end);
  end).Start;
end;

procedure TfrmCadastroCategoria.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroCategoria.btSalvarClick(Sender: TObject);
begin
  edtNome.Text := AllTrim(edtNome.Text);
  edtNome.SelStart := Length(edtNome.Text);
  mmDetalhes.Text := AllTrim(mmDetalhes.Text);
  mmDetalhes.SelStart := Length(mmDetalhes.Text);

  if edtCodigo.Text = '' then
    edtCodigo.Text := '0';

  if edtNome.Text = '' then begin
    ShowMessage('Informe o NOME da categoria');
    edtNome.SetFocus;
    Exit;
  end;

  if FModoEdit then
    Atualizar
  else
    Salvar;
end;

procedure TfrmCadastroCategoria.cbStatusKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    mmDetalhes.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroCategoria.edtCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    edtNome.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroCategoria.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    cbStatus.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroCategoria.FormShow(Sender: TObject);
begin
  pnTopo.SetFocus;
end;

procedure TfrmCadastroCategoria.imgVoltarClick(Sender: TObject);
begin
  Close;
end;

end.
