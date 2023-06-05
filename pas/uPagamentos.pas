unit uPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, System.JSON,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Menus;

type
  TfrmPagamentos = class(TForm)
    lbResult: TLabel;
    gbFiltro: TGroupBox;
    Label1: TLabel;
    edtBusca: TEdit;
    pnBuscar: TPanel;
    imgBuscar: TImage;
    lbBuscar: TLabel;
    btBuscar: TBitBtn;
    grdPagamentos: TDBGrid;
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
    pnTopo: TPanel;
    lbTitulo: TLabel;
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    Mudarstatus1: TMenuItem;
    Sim1: TMenuItem;
    No1: TMenuItem;
    procedure Image1Click(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure edtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure grdPagamentosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdPagamentosDblClick(Sender: TObject);
    procedure Sim1Click(Sender: TObject);
    procedure No1Click(Sender: TObject);
  private
    procedure ModificarStatus(ID, Status: String);
    { Private declarations }
  public
    FRegistroSalvo : Boolean;
    procedure ExistsDados;
    procedure NotExistsDados;
    { Public declarations }
  end;

var
  frmPagamentos: TfrmPagamentos;

implementation

{$R *.dfm}

uses uCadastroPagamento, uTabelas, uLoading, uFunctions, uPrincipal;

procedure TfrmPagamentos.ModificarStatus(ID, Status:String);
var
  sql, Json, DataHora, DataHoje : string;
  QtdPedidos : Integer;
  ArrayDados : TJSONArray;
begin
  Enabled := False;
  frmLoading.Show;

  edtBusca.Text := AllTrim(edtBusca.Text);
  edtBusca.SelStart := Length(edtBusca.Text);

  TThread.CreateAnonymousThread(procedure begin
    try
      sql := 'UPDATE mt_payment SET active = '+QuotedStr(Status)+' '+
             'WHERE id = '+ID;
      Tabelas.InjectSQL(sql);

      sql := 'SELECT * FROM	mt_payment '+
             'WHERE name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'AND merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'ORDER BY active DESC, command';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_payment, ConvertJsonToValue(Json));
        Tabelas.mt_payment.Locate('id',ID,[loPartialKey]);
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

procedure TfrmPagamentos.ExistsDados;
begin
  lbResult.Visible := false;
  pnAlterar.Enabled := true;
  pnExcluir.Enabled := true;
  grdPagamentos.Visible := true;
end;

procedure TfrmPagamentos.grdPagamentosDblClick(Sender: TObject);
begin
  btAlterar.Click;
end;

procedure TfrmPagamentos.grdPagamentosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (POS('Sim',Tabelas.mt_payment.FieldByName('active').AsString) > 0) and (DataCol = 2) then
    TDBGrid(Sender).Canvas.Font.Color := clGreen;

  if (POS('Não',Tabelas.mt_payment.FieldByName('active').AsString) > 0) and (DataCol = 2) then
    TDBGrid(Sender).Canvas.Font.Color := clRed;

  grdPagamentos.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmPagamentos.No1Click(Sender: TObject);
begin
  if Tabelas.mt_payment.FieldByName('active').AsString <> 'Não' then
    ModificarStatus(Tabelas.mt_payment.FieldByName('id').AsInteger.ToString,'Não');
end;

procedure TfrmPagamentos.NotExistsDados;
begin
  pnAlterar.Enabled := false;
  pnExcluir.Enabled := false;
  grdPagamentos.Visible := false;
  lbResult.Visible := true;
end;

procedure TfrmPagamentos.Sim1Click(Sender: TObject);
begin
  if Tabelas.mt_payment.FieldByName('active').AsString <> 'Sim' then
    ModificarStatus(Tabelas.mt_payment.FieldByName('id').AsInteger.ToString,'Sim');
end;

procedure TfrmPagamentos.btAlterarClick(Sender: TObject);
begin
  if not AllowOperator('payment_update') then
    Exit;

  FRegistroSalvo := false;
  Application.CreateForm(TfrmCadastroPagamento, frmCadastroPagamento);
  frmCadastroPagamento.FModoEdit := true;
  frmCadastroPagamento.FPagamentoID := Tabelas.mt_payment.FieldByName('id').AsInteger;
  frmCadastroPagamento.edtCodigo.Text := Tabelas.mt_payment.FieldByName('command').AsInteger.ToString;
  frmCadastroPagamento.edtNome.Text := Tabelas.mt_payment.FieldByName('name').AsString;
  frmCadastroPagamento.edtTaxa.Text := FormatFloat('#,0.00',Tabelas.mt_payment.FieldByName('taxa').AsFloat);

  if Tabelas.mt_payment.FieldByName('active').AsString = 'Sim' then
    frmCadastroPagamento.cbStatus.ItemIndex := 0
  else
    frmCadastroPagamento.cbStatus.ItemIndex := 1;

  frmCadastroPagamento.lbTitulo.Caption := 'Editar forma de pagamento';
  frmCadastroPagamento.ShowModal;
  frmCadastroPagamento.Free;

  if FRegistroSalvo = true then
    ShowMessage('Registro salvo');
end;

procedure TfrmPagamentos.btBuscarClick(Sender: TObject);
var
  sql, Json: string;
begin
  Enabled := False;
  frmLoading.Show;

  edtBusca.Text := AllTrim(edtBusca.Text);
  edtBusca.SelStart := Length(edtBusca.Text);

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM	mt_payment '+
             'WHERE name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'AND merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'ORDER BY active DESC, command';
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
      else if Json = 'sql_vazio' then
        NotExistsDados
      else
        ExistsDados;

    end);
  end).Start;
end;

procedure TfrmPagamentos.btExcluirClick(Sender: TObject);
var
  sql, Json: string;
begin
  if not AllowOperator('payment_delete') then
    Exit;

  if (Tabelas.mt_payment.FieldByName('id').AsInteger < 3) then begin
    ShowMessage('Você não pode excluir esse registro');
    Exit;
  end;

  if Application.MessageBox('Deseja mesmo excluir esta forma de pagamento?','Atenção!',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then begin
    edtBusca.Text := '';
    Enabled := false;
    frmLoading.Show;

    TThread.CreateAnonymousThread(procedure begin

      try
        sql := 'DELETE FROM mt_payment WHERE id = '+
               Tabelas.mt_payment.FieldByName('id').AsInteger.ToString;
        Tabelas.InjectSQL(sql);

        sql := 'SELECT * FROM	mt_payment '+
               'WHERE name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
               'AND merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
               'ORDER BY active DESC, command';
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

procedure TfrmPagamentos.btNovoClick(Sender: TObject);
begin
  if not AllowOperator('payment_insert') then
    Exit;

  FRegistroSalvo := false;
  Application.CreateForm(TfrmCadastroPagamento, frmCadastroPagamento);
  frmCadastroPagamento.FModoEdit := false;
  frmCadastroPagamento.FPagamentoID := 0;
  frmCadastroPagamento.cbStatus.ItemIndex := 0;
  frmCadastroPagamento.lbTitulo.Caption := 'Nova forma de pagamento';
  frmCadastroPagamento.ShowModal;
  frmCadastroPagamento.Free;

  if FRegistroSalvo = true then
    ShowMessage('Registro salvo');
end;

procedure TfrmPagamentos.edtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    btBuscar.Click;
    key := #0;
  end;
end;

procedure TfrmPagamentos.Image1Click(Sender: TObject);
begin
  Close;
end;

end.
