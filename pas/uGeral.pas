unit uGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.ComCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, System.JSON;

type
  TfrmGeral = class(TForm)
    pnTopo: TPanel;
    lbTitulo: TLabel;
    Image1: TImage;
    imgBtEmpty: TImage;
    imgBtFull: TImage;
    pnWhatsapp: TPanel;
    pnWpConectar: TPanel;
    ImgWpConectar: TImage;
    lbWpConectar: TLabel;
    btWpConectar: TBitBtn;
    pnInformacoes: TPanel;
    pnInfoSalvar: TPanel;
    imgInfoSalvar: TImage;
    lbInfoSalvar: TLabel;
    btInfoSalvar: TBitBtn;
    Label1: TLabel;
    edtNomeEstb: TEdit;
    Label2: TLabel;
    edtEnderecoEstb: TEdit;
    Categoria: TLabel;
    cbBairro: TDBLookupComboBox;
    Label3: TLabel;
    edtTelefone1: TEdit;
    Label4: TLabel;
    edtTelefone2: TEdit;
    Label5: TLabel;
    edtMsgCupom: TEdit;
    pnOpLevel: TPanel;
    pnOperatorSalvar: TPanel;
    imgOperatorSalvar: TImage;
    lbOperatorSalvar: TLabel;
    btOperatorSalvar: TBitBtn;
    imgOpCheckTrue: TImage;
    Label6: TLabel;
    imgOpCheckFalse: TImage;
    imgOpClienteVis: TImage;
    lbOpNome: TLabel;
    Shape1: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    imgOpClienteCad: TImage;
    imgOpClienteAlt: TImage;
    imgOpClienteExc: TImage;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    imgOpBairroExc: TImage;
    imgOpBairroAlt: TImage;
    imgOpBairroCad: TImage;
    imgOpBairroVis: TImage;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    imgOpCatgExc: TImage;
    imgOpCatgAlt: TImage;
    imgOpCatgCad: TImage;
    imgOpCatgVis: TImage;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    imgOpProdExc: TImage;
    imgOpProdAlt: TImage;
    imgOpProdCad: TImage;
    imgOpProdVis: TImage;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    imgOpPagExc: TImage;
    imgOpPagAlt: TImage;
    imgOpPagCad: TImage;
    imgOpPagVis: TImage;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    imgOpContaImp: TImage;
    imgOpContaDet: TImage;
    imgOpContaRec: TImage;
    imgOpContaVis: TImage;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    imgOpRepVenda: TImage;
    imgOpRepMaisVend: TImage;
    imgOpRepFat: TImage;
    pnMenusButton: TPanel;
    sp1: TShape;
    pnBtWp: TPanel;
    imgBtWp: TImage;
    lbBtWp: TLabel;
    btBtWp: TBitBtn;
    pnBtInfo: TPanel;
    imgBtInfo: TImage;
    lbBtInfo: TLabel;
    btBtInfo: TBitBtn;
    pnBtOperator: TPanel;
    imgBtOperator: TImage;
    lbBtOperator: TLabel;
    btBtOperator: TBitBtn;
    pnBtCfg: TPanel;
    ImgBtCfg: TImage;
    lbBtCfg: TLabel;
    btBtCfg: TBitBtn;
    pnOperadores: TPanel;
    pnOpNovo: TPanel;
    imgOpNovo: TImage;
    lbOpNovo: TLabel;
    btOpNovo: TBitBtn;
    pnOpAlterar: TPanel;
    imgOpAlterar: TImage;
    lbOpAlterar: TLabel;
    btOpAlterar: TBitBtn;
    pnOpExcluir: TPanel;
    imgOpExcluir: TImage;
    lbOpExcluir: TLabel;
    btOpExcluir: TBitBtn;
    grdContas: TDBGrid;
    edtOpNome: TEdit;
    Label42: TLabel;
    Label43: TLabel;
    edtOpUsuario: TEdit;
    Label44: TLabel;
    edtOpSenha: TEdit;
    Shape2: TShape;
    pnOperatorVoltar: TPanel;
    imgOperatorVoltar: TImage;
    lbOperatorVoltar: TLabel;
    btOperatorVoltar: TBitBtn;
    cbOpNivel: TComboBox;
    Label7: TLabel;
    pnConfiguracoes: TPanel;
    pnConfigSalvar: TPanel;
    imgConfigSalvar: TImage;
    lbConfigSalvar: TLabel;
    btConfigSalvar: TBitBtn;
    Label46: TLabel;
    cbPreVisPrint: TCheckBox;
    cbUsaEstoque: TCheckBox;
    Label45: TLabel;
    cbPermiteEstoqueNeg: TCheckBox;
    Label47: TLabel;
    GroupBox1: TGroupBox;
    Label48: TLabel;
    cbBotListarID: TCheckBox;
    Label49: TLabel;
    cbLigaBot: TCheckBox;
    Label50: TLabel;
    mmWpBemVindo: TMemo;
    Label51: TLabel;
    Label52: TLabel;
    mmWpPreparo: TMemo;
    Label53: TLabel;
    mmWpPronto: TMemo;
    sbWpMsg: TScrollBox;
    Label54: TLabel;
    mmWpSaiuEntrega: TMemo;
    Label55: TLabel;
    mmWpEntregue: TMemo;
    Label56: TLabel;
    mmWpCancelado: TMemo;
    pnWpSalvar: TPanel;
    imgWpSalvar: TImage;
    lbWpSalvar: TLabel;
    btWpSalvar: TBitBtn;
    Label57: TLabel;
    edtHorarioFunc: TEdit;
    procedure Image1Click(Sender: TObject);
    procedure btBtWpClick(Sender: TObject);
    procedure btBtInfoClick(Sender: TObject);
    procedure btBtOperatorClick(Sender: TObject);
    procedure btWpConectarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure edtTelefone1Change(Sender: TObject);
    procedure btBtCfgClick(Sender: TObject);
    procedure edtNomeEstbKeyPress(Sender: TObject; var Key: Char);
    procedure edtEnderecoEstbKeyPress(Sender: TObject; var Key: Char);
    procedure cbBairroKeyPress(Sender: TObject; var Key: Char);
    procedure edtTelefone1KeyPress(Sender: TObject; var Key: Char);
    procedure edtTelefone2KeyPress(Sender: TObject; var Key: Char);
    procedure btInfoSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgOpClienteVisClick(Sender: TObject);
    procedure btOperatorSalvarClick(Sender: TObject);
    procedure btOpAlterarClick(Sender: TObject);
    procedure btOperatorVoltarClick(Sender: TObject);
    procedure edtOpNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtOpUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure btOpNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtOpSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btOpExcluirClick(Sender: TObject);
    procedure Label46Click(Sender: TObject);
    procedure btConfigSalvarClick(Sender: TObject);
    procedure Label45Click(Sender: TObject);
    procedure Label47Click(Sender: TObject);
    procedure cbUsaEstoqueClick(Sender: TObject);
    procedure Label49Click(Sender: TObject);
    procedure Label50Click(Sender: TObject);
    procedure sbWpMsgMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure sbWpMsgMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure btWpSalvarClick(Sender: TObject);
    procedure edtHorarioFuncKeyPress(Sender: TObject; var Key: Char);
    procedure edtMsgCupomKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    FModoEditOperator : Boolean;
    FOperadorLogado : Integer;
    procedure AtualizarInfo;
    procedure SalvarNovoOperador;
    procedure AtualizaOperador;
    { Public declarations }
  end;

var
  frmGeral: TfrmGeral;

implementation

{$R *.dfm}

uses uPrincipal, uLoading, uMD5, uTabelas, uFormat, uFunctions;

procedure TfrmGeral.AtualizaOperador;
var
  ClienteVis, ClienteCad, ClienteAlt, ClienteExc : string;
  BairroVis, BairroCad, BairroAlt, BairroExc : string;
  CatgVis, CatgCad, CatgAlt, CatgExc : string;
  ProdVis, ProdCad, ProdAlt, ProdExc : string;
  PagVis, PagCad, PagAlt, PagExc : string;
  ContaVis, ContaRec, ContaDet, ContaImp : string;
  RepVenda, RepMaisVend, RepFat: string;
  sql, Json: string;
  OpID : integer;
begin
  if imgOpClienteVis.Tag = 1 then
    ClienteVis := 's'
  else
    ClienteVis := 'n';

  if imgOpClienteCad.Tag = 1 then
    ClienteCad := 's'
  else
    ClienteCad := 'n';

  if imgOpClienteAlt.Tag = 1 then
    ClienteAlt := 's'
  else
    ClienteAlt := 'n';

  if imgOpClienteExc.Tag = 1 then
    ClienteExc := 's'
  else
    ClienteExc := 'n';

   if imgOpBairroVis.Tag = 1 then
    BairroVis := 's'
  else
    BairroVis := 'n';

  if imgOpBairroCad.Tag = 1 then
    BairroCad := 's'
  else
    BairroCad := 'n';

  if imgOpBairroAlt.Tag = 1 then
    BairroAlt := 's'
  else
    BairroAlt := 'n';

  if imgOpBairroExc.Tag = 1 then
    BairroExc := 's'
  else
    BairroExc := 'n';

  if imgOpCatgVis.Tag = 1 then
    CatgVis := 's'
  else
    CatgVis := 'n';

  if imgOpCatgCad.Tag = 1 then
    CatgCad := 's'
  else
    CatgCad := 'n';

  if imgOpCatgAlt.Tag = 1 then
    CatgAlt := 's'
  else
    CatgAlt := 'n';

  if imgOpCatgExc.Tag = 1 then
    CatgExc := 's'
  else
    CatgExc := 'n';

  if imgOpProdVis.Tag = 1 then
    ProdVis := 's'
  else
    ProdVis := 'n';

  if imgOpProdCad.Tag = 1 then
    ProdCad := 's'
  else
    ProdCad := 'n';

  if imgOpProdAlt.Tag = 1 then
    ProdAlt := 's'
  else
    ProdAlt := 'n';

  if imgOpProdExc.Tag = 1 then
    ProdExc := 's'
  else
    ProdExc := 'n';

  if imgOpPagVis.Tag = 1 then
    PagVis := 's'
  else
    PagVis := 'n';

  if imgOpPagCad.Tag = 1 then
    PagCad := 's'
  else
    PagCad := 'n';

  if imgOpPagAlt.Tag = 1 then
    PagAlt := 's'
  else
    PagAlt := 'n';

  if imgOpPagExc.Tag = 1 then
    PagExc := 's'
  else
    PagExc := 'n';

  if imgOpContaVis.Tag = 1 then
    ContaVis := 's'
  else
    ContaVis := 'n';

  if imgOpContaRec.Tag = 1 then
    ContaRec := 's'
  else
    ContaRec := 'n';

  if imgOpContaDet.Tag = 1 then
    ContaDet := 's'
  else
    ContaDet := 'n';

  if imgOpContaImp.Tag = 1 then
    ContaImp := 's'
  else
    ContaImp := 'n';

  if imgOpRepVenda.Tag = 1 then
    RepVenda := 's'
  else
    RepVenda := 'n';

  if imgOpRepMaisVend.Tag = 1 then
    RepMaisVend := 's'
  else
    RepMaisVend := 'n';

  if imgOpRepFat.Tag = 1 then
    RepFat := 's'
  else
    RepFat := 'n';

  TThread.CreateAnonymousThread(procedure begin

    try
      OpId := Tabelas.mt_operator.FieldByName('id').AsInteger;
      sql := 'UPDATE mt_operator SET '+
             'name = '+QuotedStr(edtOpNome.Text)+', '+
             'user = '+QuotedStr(edtOpUsuario.Text)+', ';
      if edtOpSenha.Text <> '' then
            sql := sql + 'password = '+QuotedStr(MD5String(edtOpSenha.Text))+', ';
      sql := sql +
             'level = '+QuotedStr(cbOpNivel.Text)+', '+
             'client_view = '+QuotedStr(ClienteVis)+', client_insert = '+QuotedStr(ClienteCad)+', '+
             'client_update = '+QuotedStr(ClienteAlt)+', client_delete = '+QuotedStr(ClienteExc)+', '+
             'district_view = '+QuotedStr(BairroVis)+', district_insert = '+QuotedStr(BairroCad)+', '+
             'district_update = '+QuotedStr(BairroAlt)+', district_delete = '+QuotedStr(BairroExc)+', '+
             'category_view = '+QuotedStr(CatgVis)+', category_insert = '+QuotedStr(CatgCad)+', '+
             'category_update = '+QuotedStr(CatgAlt)+', category_delete = '+QuotedStr(CatgExc)+', '+
             'product_view = '+QuotedStr(ProdVis)+', product_insert = '+QuotedStr(ProdCad)+', '+
             'product_update = '+QuotedStr(ProdAlt)+', product_delete = '+QuotedStr(ProdExc)+', '+
             'payment_view = '+QuotedStr(PagVis)+', payment_insert = '+QuotedStr(PagCad)+', '+
             'payment_update = '+QuotedStr(PagAlt)+', payment_delete = '+QuotedStr(PagExc)+', '+
             'report_sale = '+QuotedStr(RepVenda)+', report_best_seller = '+QuotedStr(RepMaisVend)+', '+
             'report_revenues = '+QuotedStr(RepFat)+', bill_view = '+QuotedStr(ContaVis)+', '+
             'bill_receive = '+QuotedStr(ContaRec)+', bill_detail = '+QuotedStr(ContaDet)+', '+
             'bill_print = '+QuotedStr(ContaImp)+' '+
             'WHERE id = '+OpID.ToString;
      Tabelas.InjectSQL(sql);

      sql := 'SELECT * FROM mt_operator WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString+' ORDER BY id';
      Json := Tabelas.InjectSQL(sql);

      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_operator, Json);
        Tabelas.mt_operator.Locate('id',OpID,[loCaseInsensitive]);
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure begin
      if Json = 'sql_erro' then
        ShowMessage('Ocorreu um erro de conexão!')
      else begin
        pnOpLevel.Visible := false;
        ShowMessage('Registro salvo com sucesso!');
      end;
    end);
  end).Start;
end;

procedure TfrmGeral.AtualizarInfo;
var
  sql, Json : String;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'UPDATE mt_merchant SET '+
             'name = '+QuotedStr(edtNomeEstb.Text)+', '+
             'street = '+QuotedStr(edtEnderecoEstb.Text)+', '+
             'district = '+QuotedStr(Tabelas.mt_district.FieldByName('name').AsString)+', '+
             'phone1 = '+QuotedStr(edtTelefone1.Text)+', '+
             'phone2 = '+QuotedStr(edtTelefone2.Text)+', '+
             'msg_cupom = '+QuotedStr(edtMsgCupom.Text)+', '+
             'opening_hours = '+QuotedStr(edtHorarioFunc.Text)+' '+
             'WHERE id = '+frmPrincipal.FMerchantID.ToString;
      Tabelas.InjectSQL(sql);

      sql := 'SELECT * FROM	mt_merchant WHERE id = '+frmPrincipal.FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_merchant, Json);
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if Json = 'sql_erro' then
        ShowMessage('Ocorreu um erro de conexão!')
      else begin
        edtNomeEstb.Text := Tabelas.mt_merchant.FieldByName('name').AsString;
        edtEnderecoEstb.Text := Tabelas.mt_merchant.FieldByName('street').AsString;

        if not Tabelas.mt_district.Locate('name',Tabelas.mt_merchant.FieldByName('district').AsString,[loCaseInsensitive]) then
          cbBairro.KeyValue := 1
        else
          cbBairro.KeyValue := Tabelas.mt_district.FieldByName('id').AsInteger;

        edtTelefone1.Text := Tabelas.mt_merchant.FieldByName('phone1').AsString;
        edtTelefone2.Text := Tabelas.mt_merchant.FieldByName('phone2').AsString;
        edtMsgCupom.Text := Tabelas.mt_merchant.FieldByName('msg_cupom').AsString;

        pnInformacoes.SetFocus;
        ShowMessage('Dados salvos com sucesso!');
      end;
    end);
  end).Start;
end;

procedure TfrmGeral.btBtCfgClick(Sender: TObject);
var
  sql, Json : string;
begin
  imgBtCfg.Picture := imgBtFull.Picture;
  imgBtwp.Picture := imgBtEmpty.Picture;
  imgBtOperator.Picture := imgBtEmpty.Picture;
  imgBtInfo.Picture := imgBtEmpty.Picture;

  pnOperadores.Visible := false;
  pnWhatsapp.Visible := false;
  pnInformacoes.Visible := false;
  pnConfiguracoes.Visible := true;

  if Tabelas.mt_settings.FieldByName('bot_list_command').AsString = 's' then
    cbBotListarID.Checked := true
  else
    cbBotListarID.Checked := false;

  if Tabelas.mt_settings.FieldByName('pre_visualizar_impressao').AsString = 's' then
    cbPreVisPrint.Checked := true
  else
    cbPreVisPrint.Checked := false;

  if Tabelas.mt_settings.FieldByName('bot_power').AsString = 's' then
    cbLigaBot.Checked := true
  else
    cbLigaBot.Checked := false;

  if Tabelas.mt_settings.FieldByName('count_stock').AsString = 's' then begin
    cbUsaEstoque.Checked := true;
    cbPermiteEstoqueNeg.Visible := true;
    Label47.Visible := true;
    if Tabelas.mt_settings.FieldByName('block_negative_stock').AsString = 's' then
      cbPermiteEstoqueNeg.Checked := true
    else
      cbPermiteEstoqueNeg.Checked := false;
  end else begin
    cbUsaEstoque.Checked := false;
    cbPermiteEstoqueNeg.Visible := false;
    Label47.Visible := false;
  end;
end;

procedure TfrmGeral.btBtInfoClick(Sender: TObject);
var
  sql, Json : String;
begin
  imgBtInfo.Picture := imgBtFull.Picture;
  imgBtwp.Picture := imgBtEmpty.Picture;
  imgBtOperator.Picture := imgBtEmpty.Picture;
  imgBtCfg.Picture := imgBtEmpty.Picture;

  pnOperadores.Visible := false;
  pnWhatsapp.Visible := false;
  pnConfiguracoes.Visible := false;
  pnInformacoes.Visible := true;

  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'SELECT * FROM	mt_district '+
             'WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'AND name NOT LIKE ''S/B''';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_district, Json);

        sql := 'SELECT * FROM	mt_merchant WHERE id = '+frmPrincipal.FMerchantID.ToString;
        Json := Tabelas.InjectSQL(sql);
        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
          Tabelas.JsonToDataset(Tabelas.mt_merchant, Json);
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
      else begin
        edtNomeEstb.Text := Tabelas.mt_merchant.FieldByName('name').AsString;
        edtEnderecoEstb.Text := Tabelas.mt_merchant.FieldByName('street').AsString;

        if not Tabelas.mt_district.Locate('name',Tabelas.mt_merchant.FieldByName('district').AsString,[loCaseInsensitive]) then
          cbBairro.KeyValue := 1
        else
          cbBairro.KeyValue := Tabelas.mt_district.FieldByName('id').AsInteger;

        edtTelefone1.Text := Tabelas.mt_merchant.FieldByName('phone1').AsString;
        edtTelefone2.Text := Tabelas.mt_merchant.FieldByName('phone2').AsString;
        edtMsgCupom.Text := Tabelas.mt_merchant.FieldByName('msg_cupom').AsString;
        edtHorarioFunc.Text := Tabelas.mt_merchant.FieldByName('opening_hours').AsString;

        pnInformacoes.SetFocus;
      end;
    end);
  end).Start;
end;

procedure TfrmGeral.btBtOperatorClick(Sender: TObject);
begin
  if not pnOperadores.Visible then begin
    Tabelas.mt_operator.Locate('id',FOperadorLogado,[loCaseInsensitive]);
    if not AllowOperator('admin') then
      Exit;

    Tabelas.mt_operator.First;
    imgBtOperator.Picture := imgBtFull.Picture;
    imgBtInfo.Picture := imgBtEmpty.Picture;
    imgBtWp.Picture := imgBtEmpty.Picture;
    imgBtCfg.Picture := imgBtEmpty.Picture;

    pnConfiguracoes.Visible := false;
    pnInformacoes.Visible := false;
    pnWhatsapp.Visible := false;
    pnOpLevel.Visible := false;
    pnOperadores.Visible := true;
  end;
end;

procedure TfrmGeral.btBtWpClick(Sender: TObject);
begin
  mmWpBemVindo.Lines.Text := frmPrincipal.FMsgApresentacao;
  mmWpPreparo.Lines.Text := frmPrincipal.FMsgStatusPreparo;
  mmWpPronto.Lines.Text := frmPrincipal.FMsgStatusPronto;
  mmWpSaiuEntrega.Lines.Text := frmPrincipal.FMsgStatusSaiuEntrega;
  mmWpEntregue.Lines.Text := frmPrincipal.FMsgStatusEntregue;
  mmWpCancelado.Lines.Text := frmPrincipal.FMsgStatusCancelado;

  imgBtwp.Picture := imgBtFull.Picture;
  imgBtInfo.Picture := imgBtEmpty.Picture;
  imgBtOperator.Picture := imgBtEmpty.Picture;
  imgBtCfg.Picture := imgBtEmpty.Picture;

  pnOperadores.Visible := false;
  pnInformacoes.Visible := false;
  pnConfiguracoes.Visible := false;
  pnWhatsapp.Visible := true;
end;

procedure TfrmGeral.btConfigSalvarClick(Sender: TObject);
var
  sql, Json, BotListarID, LigaBot: string;
  PreVisPrint, UsaEstoque, PermiteEstoqueNeg : string;
begin
  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      if cbLigaBot.Checked then
        LigaBot := QuotedStr('s')
      else
        LigaBot := QuotedStr('n');

      if cbPreVisPrint.Checked then
        PreVisPrint := QuotedStr('s')
      else
        PreVisPrint := QuotedStr('n');

      if cbUsaEstoque.Checked then
        UsaEstoque := QuotedStr('s')
      else
        UsaEstoque := QuotedStr('n');

      if (cbPermiteEstoqueNeg.Checked) and (cbUsaEstoque.Checked) then
        PermiteEstoqueNeg := QuotedStr('s')
      else
        PermiteEstoqueNeg := QuotedStr('n');

      if cbBotListarID.Checked then
        BotListarID := QuotedStr('s')
      else
        BotListarID := QuotedStr('n');

      sql := 'UPDATE mt_settings SET '+
             'bot_power = '+LigaBot+', '+
             'pre_visualizar_impressao = '+PreVisPrint+', '+
             'block_negative_stock = '+PermiteEstoqueNeg+', '+
             'count_stock = '+UsaEstoque+', '+
             'bot_list_command = '+BotListarID+' '+
             'WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString;
      Tabelas.InjectSQL(sql);

      sql := 'SELECT * FROM	mt_settings WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);

      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_settings, Json);
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if Json = 'sql_erro' then
        ShowMessage('Ocorreu um erro de conexão!')
      else begin
        ShowMessage('Configuração salva com sucesso!');
        pnConfiguracoes.SetFocus;
      end;
    end);
  end).Start;
end;

procedure TfrmGeral.btInfoSalvarClick(Sender: TObject);
begin
  if edtNomeEstb.Text = '' then begin
    ShowMessage('Informe o nome do estabelecimento!');
    Exit;
    edtNomeEstb.SetFocus;
  end;

  if edtEnderecoEstb.Text = '' then begin
    ShowMessage('Informe o endereço do estabelecimento!');
    Exit;
    edtEnderecoEstb.SetFocus;
  end;

  if cbBairro.KeyValue < 1 then begin
    ShowMessage('Informe o bairro do estabelecimento!');
    Exit;
    edtNomeEstb.SetFocus;
  end;

  {if not IsPhone(edtTelefone1.Text) and (Length(edtTelefone1.Text) > 0) then begin
    ShowMessage('Informe o telefone corretamente!');
    Exit;
    edtTelefone1.SetFocus;
  end;

  if not IsPhone(edtTelefone2.Text) and (Length(edtTelefone2.Text) > 0) then begin
    ShowMessage('Informe o telefone corretamente!');
    Exit;
    edtTelefone2.SetFocus;
  end;}

  if edtMsgCupom.Text = '' then begin
    ShowMessage('Informe a mensagem do cupom!');
    Exit;
    edtMsgCupom.SetFocus;
  end;

  AtualizarInfo;
end;

procedure TfrmGeral.btOpAlterarClick(Sender: TObject);
begin
  FModoEditOperator := true;
  Label44.Caption := 'Definir nova senha';
  edtOpSenha.Text := '';
  Label6.Caption := 'Operador:';
  lbOpNome.Caption := Tabelas.mt_operator.FieldByName('name').AsString;
  lbOpNome.Visible := true;
  edtOpNome.Text := Tabelas.mt_operator.FieldByName('name').AsString;
  edtOpUsuario.Text := Tabelas.mt_operator.FieldByName('user').AsString;

  if Tabelas.mt_operator.FieldByName('level').AsString = 'Administrador' then
    cbOpNivel.ItemIndex := 0
  else
    cbOpNivel.ItemIndex := 1;

  if Tabelas.mt_operator.FieldByName('client_view').AsString = 's' then begin
    imgOpClienteVis.Tag := 1;
    imgOpClienteVis.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpClienteVis.Tag := 0;
    imgOpClienteVis.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('client_insert').AsString = 's' then begin
    imgOpClienteCad.Tag := 1;
    imgOpClienteCad.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpClienteCad.Tag := 0;
    imgOpClienteCad.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('client_update').AsString = 's' then begin
    imgOpClienteAlt.Tag := 1;
    imgOpClienteAlt.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpClienteAlt.Tag := 0;
    imgOpClienteAlt.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('client_delete').AsString = 's' then begin
    imgOpClienteExc.Tag := 1;
    imgOpClienteExc.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpClienteExc.Tag := 0;
    imgOpClienteExc.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('district_view').AsString = 's' then begin
    imgOpBairroVis.Tag := 1;
    imgOpBairroVis.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpBairroVis.Tag := 0;
    imgOpBairroVis.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('district_insert').AsString = 's' then begin
    imgOpBairroCad.Tag := 1;
    imgOpBairroCad.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpBairroCad.Tag := 0;
    imgOpBairroCad.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('district_update').AsString = 's' then begin
    imgOpBairroAlt.Tag := 1;
    imgOpBairroAlt.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpBairroAlt.Tag := 0;
    imgOpBairroAlt.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('district_delete').AsString = 's' then begin
    imgOpBairroExc.Tag := 1;
    imgOpBairroExc.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpBairroExc.Tag := 0;
    imgOpBairroExc.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('category_view').AsString = 's' then begin
    imgOpCatgVis.Tag := 1;
    imgOpCatgVis.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpCatgVis.Tag := 0;
    imgOpCatgVis.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('category_insert').AsString = 's' then begin
    imgOpCatgCad.Tag := 1;
    imgOpCatgCad.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpCatgCad.Tag := 0;
    imgOpCatgCad.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('category_update').AsString = 's' then begin
    imgOpCatgAlt.Tag := 1;
    imgOpCatgAlt.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpCatgAlt.Tag := 0;
    imgOpCatgAlt.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('category_delete').AsString = 's' then begin
    imgOpCatgExc.Tag := 1;
    imgOpCatgExc.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpCatgExc.Tag := 0;
    imgOpCatgExc.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('product_view').AsString = 's' then begin
    imgOpProdVis.Tag := 1;
    imgOpProdVis.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpProdVis.Tag := 0;
    imgOpProdVis.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('product_insert').AsString = 's' then begin
    imgOpProdCad.Tag := 1;
    imgOpProdCad.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpProdCad.Tag := 0;
    imgOpProdCad.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('product_update').AsString = 's' then begin
    imgOpProdAlt.Tag := 1;
    imgOpProdAlt.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpProdAlt.Tag := 0;
    imgOpProdAlt.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('product_delete').AsString = 's' then begin
    imgOpProdExc.Tag := 1;
    imgOpProdExc.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpProdExc.Tag := 0;
    imgOpProdExc.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('payment_view').AsString = 's' then begin
    imgOpPagVis.Tag := 1;
    imgOpPagVis.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpPagVis.Tag := 0;
    imgOpPagVis.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('payment_insert').AsString = 's' then begin
    imgOpPagCad.Tag := 1;
    imgOpPagCad.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpPagCad.Tag := 0;
    imgOpPagCad.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('payment_update').AsString = 's' then begin
    imgOpPagAlt.Tag := 1;
    imgOpPagAlt.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpPagAlt.Tag := 0;
    imgOpPagAlt.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('payment_delete').AsString = 's' then begin
    imgOpPagExc.Tag := 1;
    imgOpPagExc.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpPagExc.Tag := 0;
    imgOpPagExc.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('bill_view').AsString = 's' then begin
    imgOpContaVis.Tag := 1;
    imgOpContaVis.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpContaVis.Tag := 0;
    imgOpContaVis.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('bill_receive').AsString = 's' then begin
    imgOpContaRec.Tag := 1;
    imgOpContaRec.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpContaRec.Tag := 0;
    imgOpContaRec.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('bill_detail').AsString = 's' then begin
    imgOpContaDet.Tag := 1;
    imgOpContaDet.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpContaDet.Tag := 0;
    imgOpContaDet.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('bill_print').AsString = 's' then begin
    imgOpContaImp.Tag := 1;
    imgOpContaImp.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpContaImp.Tag := 0;
    imgOpContaImp.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('report_sale').AsString = 's' then begin
    imgOpRepVenda.Tag := 1;
    imgOpRepVenda.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpRepVenda.Tag := 0;
    imgOpRepVenda.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('report_best_seller').AsString = 's' then begin
    imgOpRepMaisVend.Tag := 1;
    imgOpRepMaisVend.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpRepMaisVend.Tag := 0;
    imgOpRepMaisVend.Picture := imgOpCheckFalse.Picture;
  end;

  if Tabelas.mt_operator.FieldByName('report_revenues').AsString = 's' then begin
    imgOpRepFat.Tag := 1;
    imgOpRepFat.Picture := imgOpCheckTrue.Picture;
  end else begin
    imgOpRepFat.Tag := 0;
    imgOpRepFat.Picture := imgOpCheckFalse.Picture;
  end;

  pnOpLevel.Visible := true;
end;

procedure TfrmGeral.btOperatorSalvarClick(Sender: TObject);
begin
  if edtOpNome.Text = '' then begin
    ShowMessage('Informe o NOME!');
    edtOpNome.SetFocus;
    Exit;
  end;

  if edtOpUsuario.Text = '' then begin
    ShowMessage('Informe o USUÁRIO!');
    edtOpUsuario.SetFocus;
    Exit;
  end;

  if (edtOpSenha.Text = '') and (FModoEditOperator = false) then begin
    ShowMessage('Informe o SENHA!');
    edtOpSenha.SetFocus;
    Exit;
  end;

  if FModoEditOperator then
    AtualizaOperador
  else
    SalvarNovoOperador;
end;

procedure TfrmGeral.btOperatorVoltarClick(Sender: TObject);
begin
  pnOpLevel.Visible := false;
end;

procedure TfrmGeral.btOpExcluirClick(Sender: TObject);
var
  sql, Json : string;
begin
  if Tabelas.mt_operator.FieldByName('id').AsInteger = 1 then begin
    ShowMessage('Esse operador não pode ser excluído!');
    Exit;
  end;

  if Tabelas.mt_operator.FieldByName('id').AsInteger = FOperadorLogado then begin
    ShowMessage('O operador logado não pode ser excluído!');
    Exit;
  end;

  if Application.MessageBox('Deseja mesmo excluir este cliente?','Atenção!',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then begin
    Enabled := false;
    frmLoading.Show;

    TThread.CreateAnonymousThread(procedure
    begin

      try
        sql := 'DELETE FROM mt_operator '+
               'WHERE id = '+Tabelas.mt_operator.FieldByName('id').AsInteger.ToString;
        Tabelas.InjectSQL(sql);

        sql := 'SELECT * FROM mt_operator WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString+' ORDER BY id';
        Json := Tabelas.InjectSQL(sql);

        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
          Tabelas.JsonToDataset(Tabelas.mt_operator, Json);
      except
        Json := 'sql_erro';
      end;

      TThread.Synchronize(nil, procedure
      begin
        Enabled := true;
        frmLoading.FClose := true;
        frmLoading.Close;

        if (Json = 'sql_erro') or (Json = 'sql_vazio') then
          ShowMessage('Ocorreu um erro na conexão')
        else
          ShowMessage('Registro excluído com sucesso!');
      end);
    end).Start;
  end;
end;

procedure TfrmGeral.btOpNovoClick(Sender: TObject);
begin
  FModoEditOperator := false;
  Label44.Caption := 'Senha';
  edtOpNome.Text := '';
  edtOpUsuario.Text := '';
  edtOpSenha.Text := '';
  Label6.Caption := 'Adicionar novo operador';
  lbOpNome.Visible := false;
  cbOpNivel.ItemIndex := 0;

  {imgOpClienteVis.Tag := 0;
  imgOpClienteVis.Picture := imgOpCheckFalse.Picture;
  imgOpClienteCad.Tag := 0;
  imgOpClienteCad.Picture := imgOpCheckFalse.Picture;
  imgOpClienteAlt.Tag := 0;
  imgOpClienteAlt.Picture := imgOpCheckFalse.Picture;
  imgOpClienteExc.Tag := 0;
  imgOpClienteExc.Picture := imgOpCheckFalse.Picture;

  imgOpBairroVis.Tag := 0;
  imgOpBairroVis.Picture := imgOpCheckFalse.Picture;
  imgOpBairroCad.Tag := 0;
  imgOpBairroCad.Picture := imgOpCheckFalse.Picture;
  imgOpBairroAlt.Tag := 0;
  imgOpBairroAlt.Picture := imgOpCheckFalse.Picture;
  imgOpBairroExc.Tag := 0;
  imgOpBairroExc.Picture := imgOpCheckFalse.Picture;

  imgOpCatgVis.Tag := 0;
  imgOpCatgVis.Picture := imgOpCheckFalse.Picture;
  imgOpCatgCad.Tag := 0;
  imgOpCatgCad.Picture := imgOpCheckFalse.Picture;
  imgOpCatgAlt.Tag := 0;
  imgOpCatgAlt.Picture := imgOpCheckFalse.Picture;
  imgOpCatgExc.Tag := 0;
  imgOpCatgExc.Picture := imgOpCheckFalse.Picture;

  imgOpProdVis.Tag := 0;
  imgOpProdVis.Picture := imgOpCheckFalse.Picture;
  imgOpProdCad.Tag := 0;
  imgOpProdCad.Picture := imgOpCheckFalse.Picture;
  imgOpProdAlt.Tag := 0;
  imgOpProdAlt.Picture := imgOpCheckFalse.Picture;
  imgOpProdExc.Tag := 0;
  imgOpProdExc.Picture := imgOpCheckFalse.Picture;

  imgOpPagVis.Tag := 0;
  imgOpPagVis.Picture := imgOpCheckFalse.Picture;
  imgOpPagCad.Tag := 0;
  imgOpPagCad.Picture := imgOpCheckFalse.Picture;
  imgOpPagAlt.Tag := 0;
  imgOpPagAlt.Picture := imgOpCheckFalse.Picture;
  imgOpPagExc.Tag := 0;
  imgOpPagExc.Picture := imgOpCheckFalse.Picture;

  imgOpContaVis.Tag := 0;
  imgOpContaVis.Picture := imgOpCheckFalse.Picture;
  imgOpContaRec.Tag := 0;
  imgOpContaRec.Picture := imgOpCheckFalse.Picture;
  imgOpContaDet.Tag := 0;
  imgOpContaDet.Picture := imgOpCheckFalse.Picture;
  imgOpContaImp.Tag := 0;
  imgOpContaImp.Picture := imgOpCheckFalse.Picture;

  imgOpRepVenda.Tag := 0;
  imgOpRepVenda.Picture := imgOpCheckFalse.Picture;
  imgOpRepMaisVend.Tag := 0;
  imgOpRepMaisVend.Picture := imgOpCheckFalse.Picture;
  imgOpRepFat.Tag := 0;
  imgOpRepFat.Picture := imgOpCheckFalse.Picture;}

  pnOpLevel.Visible := true;
end;

procedure TfrmGeral.btWpConectarClick(Sender: TObject);
begin
  frmPrincipal.btConectarWhatsapp.Click;
end;

procedure TfrmGeral.btWpSalvarClick(Sender: TObject);
var
  sql, Json : String;
  ArrayDados : TJSONArray;
begin
  {mmWpBemVindo.Lines.Text := AllTrim(mmWpBemVindo.Lines.Text);
  mmWpBemVindo.SelStart := Length(mmWpBemVindo.Lines.Text);
  mmWpPreparo.Lines.Text := AllTrim(mmWpPreparo.Lines.Text);
  mmWpPreparo.SelStart := Length(mmWpPreparo.Lines.Text);
  mmWpPronto.Lines.Text := AllTrim(mmWpPronto.Lines.Text);
  mmWpPronto.SelStart := Length(mmWpPronto.Lines.Text);
  mmWpSaiuEntrega.Lines.Text := AllTrim(mmWpSaiuEntrega.Lines.Text);
  mmWpSaiuEntrega.SelStart := Length(mmWpSaiuEntrega.Lines.Text);
  mmWpEntregue.Lines.Text := AllTrim(mmWpEntregue.Lines.Text);
  mmWpEntregue.SelStart := Length(mmWpEntregue.Lines.Text);
  mmWpCancelado.Lines.Text := AllTrim(mmWpCancelado.Lines.Text);
  mmWpCancelado.SelStart := Length(mmWpCancelado.Lines.Text);}

  if mmWpBemVindo.Lines.Text = '' then begin
    ShowMessage('A mensagem de boas vindas não pode ser em branco!');
    Exit;
    mmWpBemVindo.SetFocus;
  end;

  if mmWpPreparo.Lines.Text = '' then begin
    ShowMessage('A mensagem EM PREPARO não pode ser em branco!');
    Exit;
    mmWpPreparo.SetFocus;
  end;

  if mmWpPronto.Lines.Text = '' then begin
    ShowMessage('A mensagem PRONTO não pode ser em branco!');
    Exit;
    mmWpPronto.SetFocus;
  end;

  if mmWpSaiuEntrega.Lines.Text = '' then begin
    ShowMessage('A mensagem SAIU PARA ENTREGA não pode ser em branco!');
    Exit;
    mmWpSaiuEntrega.SetFocus;
  end;

  if mmWpEntregue.Lines.Text = '' then begin
    ShowMessage('A mensagem ENTREGUE não pode ser em branco!');
    Exit;
    mmWpEntregue.SetFocus;
  end;

  if mmWpCancelado.Lines.Text = '' then begin
    ShowMessage('A mensagem CANCELADO não pode ser em branco!');
    Exit;
    mmWpCancelado.SetFocus;
  end;

  Enabled := False;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'UPDATE mt_bot_message_default SET '+
             'msg_apresentacao = '+QuotedStr(mmWpBemVindo.Lines.Text)+', '+
             'msg_status_em_preparo = '+QuotedStr(mmWpPreparo.Lines.Text)+', '+
             'msg_status_pronto = '+QuotedStr(mmWpPronto.Lines.Text)+', '+
             'msg_status_saiu_entrega = '+QuotedStr(mmWpSaiuEntrega.Lines.Text)+', '+
             'msg_status_entregue = '+QuotedStr(mmWpEntregue.Lines.Text)+', '+
             'msg_status_cancelado = '+QuotedStr(mmWpCancelado.Lines.Text)+' '+
             'WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString;
      Tabelas.InjectSQL(sql);

      sql := 'SELECT * FROM mt_bot_message_default WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        frmPrincipal.FMsgApresentacao := mmWpBemVindo.Lines.Text;
        frmPrincipal.FMsgStatusPreparo := mmWpPreparo.Lines.Text;
        frmPrincipal.FMsgStatusPronto := mmWpPronto.Lines.Text;
        frmPrincipal.FMsgStatusSaiuEntrega := mmWpSaiuEntrega.Lines.Text;
        frmPrincipal.FMsgStatusEntregue := mmWpEntregue.Lines.Text;
        frmPrincipal.FMsgStatusCancelado := mmWpCancelado.Lines.Text;
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
        ShowMessage('Ocorreu um erro de conexão!')
      else
        ShowMessage('Dados salvos com sucesso!');
    end);
  end).Start;
end;

procedure TfrmGeral.cbBairroKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    edtTelefone1.SetFocus;
    key := #0;
  end;
end;

procedure TfrmGeral.cbUsaEstoqueClick(Sender: TObject);
begin
  if cbUsaEstoque.Checked then begin
    cbPermiteEstoqueNeg.Visible := true;
    Label47.Visible := true;
  end else begin
    cbPermiteEstoqueNeg.Visible := false;
    Label47.Visible := false;
  end;
end;

procedure TfrmGeral.edtHorarioFuncKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    btInfoSalvar.Click;
    key := #0;
  end;
end;

procedure TfrmGeral.edtEnderecoEstbKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    cbBairro.SetFocus;
    key := #0;
  end;
end;

procedure TfrmGeral.edtMsgCupomKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    edtHorarioFunc.SetFocus;
    key := #0;
  end;
end;

procedure TfrmGeral.edtNomeEstbKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    edtEnderecoEstb.SetFocus;
    key := #0;
  end;
end;

procedure TfrmGeral.edtOpNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    edtOpUsuario.SetFocus;
    key := #0;
  end;
end;

procedure TfrmGeral.edtOpSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    cbOpNivel.SetFocus;
    key := #0;
  end;
end;

procedure TfrmGeral.edtOpUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    edtOpSenha.SetFocus;
    key := #0;
  end;
end;

procedure TfrmGeral.edtTelefone1Change(Sender: TObject);
begin
  //Formatar(TEdit(Sender), TFormato.Celular);
end;

procedure TfrmGeral.edtTelefone1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    edtTelefone2.SetFocus;
    key := #0;
  end;
end;

procedure TfrmGeral.edtTelefone2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    edtMsgCupom.SetFocus;
    key := #0;
  end;
end;

procedure TfrmGeral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Tabelas.mt_operator.Locate('id',FOperadorLogado,[loCaseInsensitive]);
end;

procedure TfrmGeral.FormCreate(Sender: TObject);
begin
  pnConfiguracoes.Align := alClient;
  pnInformacoes.Align := alClient;
  pnOperadores.Align := alClient;
  pnOpLevel.Align := alClient;
  pnWhatsapp.Align := alClient;
  pnConfiguracoes.Visible := false;
  pnInformacoes.Visible := false;
  pnOpLevel.Visible := false;
  pnWhatsapp.Visible := false;
end;

procedure TfrmGeral.FormResize(Sender: TObject);
begin
  pnInfoSalvar.Left := Trunc(pnInformacoes.Width/2 - pnInfoSalvar.Width/2);
  //pnOperatorSalvar.Left := Trunc(pnOperadores.Width/2 - pnOperatorSalvar.Width/2);
end;

procedure TfrmGeral.Image1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmGeral.imgOpClienteVisClick(Sender: TObject);
begin
  if TImage(Sender).Tag = 1 then begin
    TImage(Sender).Tag := 0;
    TImage(Sender).Picture := imgOpCheckFalse.Picture;
  end else begin
    TImage(Sender).Tag := 1;
    TImage(Sender).Picture := imgOpCheckTrue.Picture;
  end;
end;

procedure TfrmGeral.Label45Click(Sender: TObject);
begin
  if cbUsaEstoque.Checked then begin
    cbUsaEstoque.Checked := false;
    cbPermiteEstoqueNeg.Visible := false;
    Label47.Visible := false;
  end else begin
    cbUsaEstoque.Checked := true;
    cbPermiteEstoqueNeg.Visible := true;
    Label47.Visible := true;
  end;
end;

procedure TfrmGeral.Label46Click(Sender: TObject);
begin
  if cbPreVisPrint.Checked then
    cbPreVisPrint.Checked := false
  else
    cbPreVisPrint.Checked := true;
end;

procedure TfrmGeral.Label47Click(Sender: TObject);
begin
  if cbPermiteEstoqueNeg.Checked then
    cbPermiteEstoqueNeg.Checked := false
  else
    cbPermiteEstoqueNeg.Checked := true;
end;

procedure TfrmGeral.Label49Click(Sender: TObject);
begin
  if cbBotListarID.Checked then
    cbBotListarID.Checked := false
  else
    cbBotListarID.Checked := true;
end;

procedure TfrmGeral.Label50Click(Sender: TObject);
begin
  if cbLigaBot.Checked then
    cbLigaBot.Checked := false
  else
    cbLigaBot.Checked := true;
end;

procedure TfrmGeral.SalvarNovoOperador;
var
  ClienteVis, ClienteCad, ClienteAlt, ClienteExc : string;
  BairroVis, BairroCad, BairroAlt, BairroExc : string;
  CatgVis, CatgCad, CatgAlt, CatgExc : string;
  ProdVis, ProdCad, ProdAlt, ProdExc : string;
  PagVis, PagCad, PagAlt, PagExc : string;
  ContaVis, ContaRec, ContaDet, ContaImp : string;
  RepVenda, RepMaisVend, RepFat: string;
  sql, Json: string;
  OpID : integer;
  ArrayDados : TJSONArray;
begin
  if imgOpClienteVis.Tag = 1 then
    ClienteVis := 's'
  else
    ClienteVis := 'n';

  if imgOpClienteCad.Tag = 1 then
    ClienteCad := 's'
  else
    ClienteCad := 'n';

  if imgOpClienteAlt.Tag = 1 then
    ClienteAlt := 's'
  else
    ClienteAlt := 'n';

  if imgOpClienteExc.Tag = 1 then
    ClienteExc := 's'
  else
    ClienteExc := 'n';

   if imgOpBairroVis.Tag = 1 then
    BairroVis := 's'
  else
    BairroVis := 'n';

  if imgOpBairroCad.Tag = 1 then
    BairroCad := 's'
  else
    BairroCad := 'n';

  if imgOpBairroAlt.Tag = 1 then
    BairroAlt := 's'
  else
    BairroAlt := 'n';

  if imgOpBairroExc.Tag = 1 then
    BairroExc := 's'
  else
    BairroExc := 'n';

  if imgOpCatgVis.Tag = 1 then
    CatgVis := 's'
  else
    CatgVis := 'n';

  if imgOpCatgCad.Tag = 1 then
    CatgCad := 's'
  else
    CatgCad := 'n';

  if imgOpCatgAlt.Tag = 1 then
    CatgAlt := 's'
  else
    CatgAlt := 'n';

  if imgOpCatgExc.Tag = 1 then
    CatgExc := 's'
  else
    CatgExc := 'n';

  if imgOpProdVis.Tag = 1 then
    ProdVis := 's'
  else
    ProdVis := 'n';

  if imgOpProdCad.Tag = 1 then
    ProdCad := 's'
  else
    ProdCad := 'n';

  if imgOpProdAlt.Tag = 1 then
    ProdAlt := 's'
  else
    ProdAlt := 'n';

  if imgOpProdExc.Tag = 1 then
    ProdExc := 's'
  else
    ProdExc := 'n';

  if imgOpPagVis.Tag = 1 then
    PagVis := 's'
  else
    PagVis := 'n';

  if imgOpPagCad.Tag = 1 then
    PagCad := 's'
  else
    PagCad := 'n';

  if imgOpPagAlt.Tag = 1 then
    PagAlt := 's'
  else
    PagAlt := 'n';

  if imgOpPagExc.Tag = 1 then
    PagExc := 's'
  else
    PagExc := 'n';

  if imgOpContaVis.Tag = 1 then
    ContaVis := 's'
  else
    ContaVis := 'n';

  if imgOpContaRec.Tag = 1 then
    ContaRec := 's'
  else
    ContaRec := 'n';

  if imgOpContaDet.Tag = 1 then
    ContaDet := 's'
  else
    ContaDet := 'n';

  if imgOpContaImp.Tag = 1 then
    ContaImp := 's'
  else
    ContaImp := 'n';

  if imgOpRepVenda.Tag = 1 then
    RepVenda := 's'
  else
    RepVenda := 'n';

  if imgOpRepMaisVend.Tag = 1 then
    RepMaisVend := 's'
  else
    RepMaisVend := 'n';

  if imgOpRepFat.Tag = 1 then
    RepFat := 's'
  else
    RepFat := 'n';

  TThread.CreateAnonymousThread(procedure begin

    try
      sql := 'INSERT INTO mt_operator (id, name, user, password, level, '+
             'client_view, client_insert, client_update, client_delete, '+
             'district_view, district_insert, district_update, district_delete, '+
             'category_view, category_insert, category_update, category_delete, '+
             'product_view, product_insert, product_update, product_delete, '+
             'payment_view, payment_insert, payment_update, payment_delete, '+
             'report_sale, report_best_seller, report_revenues, '+
             'bill_view, bill_receive, bill_detail, bill_print, merchant_id) VALUES (NULL, '+
             QuotedStr(edtOpNome.Text)+', '+
             QuotedStr(edtOpUsuario.Text)+', '+
             QuotedStr(MD5String(edtOpSenha.Text))+', '+
             QuotedStr(cbOpNivel.Text)+', '+
             QuotedStr(ClienteVis)+', '+QuotedStr(ClienteCad)+', '+
             QuotedStr(ClienteAlt)+', '+QuotedStr(ClienteExc)+', '+
             QuotedStr(BairroVis)+', '+QuotedStr(BairroCad)+', '+
             QuotedStr(BairroAlt)+', '+QuotedStr(BairroExc)+', '+
             QuotedStr(CatgVis)+', '+QuotedStr(CatgCad)+', '+
             QuotedStr(CatgAlt)+', '+QuotedStr(CatgExc)+', '+
             QuotedStr(ProdVis)+', '+QuotedStr(ProdCad)+', '+
             QuotedStr(ProdAlt)+', '+QuotedStr(ProdExc)+', '+
             QuotedStr(PagVis)+', '+QuotedStr(PagCad)+', '+
             QuotedStr(PagAlt)+', '+QuotedStr(PagExc)+', '+
             QuotedStr(RepVenda)+', '+QuotedStr(RepMaisVend)+', '+
             QuotedStr(RepFat)+', '+QuotedStr(ContaVis)+', '+
             QuotedStr(ContaRec)+', '+QuotedStr(ContaDet)+', '+
             QuotedStr(ContaImp)+', '+
             frmPrincipal.FMerchantID.ToString+')';
      Tabelas.InjectSQL(sql);

      sql := 'SELECT MAX(id) AS id FROM mt_operator WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      OpID := ArrayDados.Get(0).GetValue<integer>('id', 0);

      sql := 'SELECT * FROM mt_operator WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString+' ORDER BY id';
      Json := Tabelas.InjectSQL(sql);

      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_operator, Json);
        Tabelas.mt_operator.Locate('id',OpID,[loCaseInsensitive]);
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure begin
      if Json = 'sql_erro' then
        ShowMessage('Ocorreu um erro de conexão!')
      else begin
        pnOpLevel.Visible := false;
        ShowMessage('Registro salvo com sucesso!');
      end;
    end);
  end).Start;
end;

procedure TfrmGeral.sbWpMsgMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  with sbWpMsg.VertScrollBar do
  begin
    Position := Position + Increment;
  end;
end;

procedure TfrmGeral.sbWpMsgMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  with sbWpMsg.VertScrollBar do
  begin
    Position := Position - Increment;
  end;
end;

end.
