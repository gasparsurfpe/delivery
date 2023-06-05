unit uCategorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Imaging.pngimage, System.JSON,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Menus;

type
  TfrmCategorias = class(TForm)
    edtFoco: TEdit;
    gbFiltro: TGroupBox;
    edtBusca: TEdit;
    btBuscar: TBitBtn;
    grdCategorias: TDBGrid;
    lbResult: TLabel;
    pnTopo: TPanel;
    lbTitulo: TLabel;
    Image1: TImage;
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
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    Mudarstatus1: TMenuItem;
    Sim1: TMenuItem;
    No1: TMenuItem;
    procedure grdCategoriasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Image1Click(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure edtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure btNovoClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure grdCategoriasDblClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure Sim1Click(Sender: TObject);
    procedure No1Click(Sender: TObject);
  private
    procedure ModificarStatus(ID, Status: String);
    { Private declarations }
  public
    { Public declarations }
    FRegistroSalvo : Boolean;
    procedure ExistsDados;
    procedure NotExistsDados;
  end;

var
  frmCategorias: TfrmCategorias;

implementation

{$R *.dfm}

uses uTabelas, uLoading, uCadastroCategoria, uFunctions, uPrincipal;

procedure TfrmCategorias.ModificarStatus(ID, Status:String);
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
      sql := 'UPDATE mt_category SET active = '+QuotedStr(Status)+' '+
             'WHERE id = '+ID;
      Tabelas.InjectSQL(sql);

      sql := 'SELECT * FROM	mt_category '+
             'WHERE name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'AND merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'ORDER BY active DESC, command, name';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_category, Json);
        Tabelas.mt_category.Locate('id',ID,[loPartialKey]);
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

procedure TfrmCategorias.btAlterarClick(Sender: TObject);
begin
  if not AllowOperator('category_update') then
    Exit;

  FRegistroSalvo := false;
  Application.CreateForm(TfrmCadastroCategoria, frmCadastroCategoria);
  frmCadastroCategoria.FModoEdit := true;
  frmCadastroCategoria.FCategoriaID := Tabelas.mt_category.FieldByName('id').AsInteger;
  frmCadastroCategoria.edtCodigo.Text := Tabelas.mt_category.FieldByName('command').AsInteger.ToString;
  frmCadastroCategoria.edtNome.Text := Tabelas.mt_category.FieldByName('name').AsString;

  if Tabelas.mt_category.FieldByName('active').AsString = 'Sim' then
    frmCadastroCategoria.cbStatus.ItemIndex := 0
  else
    frmCadastroCategoria.cbStatus.ItemIndex := 1;

  frmCadastroCategoria.mmDetalhes.Lines.Text := Tabelas.mt_category.FieldByName('detail').AsString;
  frmCadastroCategoria.lbTitulo.Caption := 'Editar categoria';
  frmCadastroCategoria.ShowModal;
  frmCadastroCategoria.Free;

  if FRegistroSalvo = true then
    ShowMessage('Registro salvo');
end;

procedure TfrmCategorias.btBuscarClick(Sender: TObject);
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
      sql := 'SELECT * FROM	mt_category '+
             'WHERE name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'AND merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'ORDER BY active DESC, command, name';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_category, Json);
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

procedure TfrmCategorias.btExcluirClick(Sender: TObject);
var
  sql, Json: string;
begin
  edtFoco.SetFocus;

  if not AllowOperator('category_delete') then
    Exit;

  if Application.MessageBox('Deseja mesmo excluir esta categoria? Todos os produtos desta categoria serão excluídos também','Atenção!',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then begin
    edtBusca.Text := '';
    Enabled := false;
    frmLoading.Show;

    TThread.CreateAnonymousThread(procedure begin

      try
        sql := 'DELETE FROM mt_product WHERE category_id = '+
               Tabelas.mt_category.FieldByName('id').AsInteger.ToString;
        Tabelas.InjectSQL(sql);

        sql := 'DELETE FROM mt_category WHERE id = '+
               Tabelas.mt_category.FieldByName('id').AsInteger.ToString;
        Tabelas.InjectSQL(sql);

        sql := 'SELECT * FROM	mt_category '+
               'WHERE name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
               'AND merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
               'ORDER BY active DESC, command, name';
        Json := Tabelas.InjectSQL(sql);
        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
          Tabelas.JsonToDataset(Tabelas.mt_category, Json);
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

procedure TfrmCategorias.btNovoClick(Sender: TObject);
begin
  if not AllowOperator('category_insert') then
    Exit;

  edtFoco.SetFocus;
  FRegistroSalvo := false;
  Application.CreateForm(TfrmCadastroCategoria, frmCadastroCategoria);
  frmCadastroCategoria.FModoEdit := false;
  frmCadastroCategoria.FCategoriaID := 0;
  frmCadastroCategoria.cbStatus.ItemIndex := 0;
  frmCadastroCategoria.lbTitulo.Caption := 'Nova categoria';
  frmCadastroCategoria.ShowModal;
  frmCadastroCategoria.Free;

  if FRegistroSalvo = true then
    ShowMessage('Registro salvo');
end;

procedure TfrmCategorias.edtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    btBuscar.Click;
    key := #0;
  end;
end;

procedure TfrmCategorias.grdCategoriasDblClick(Sender: TObject);
begin
  btAlterar.Click;
end;

procedure TfrmCategorias.grdCategoriasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (POS('Sim',Tabelas.mt_category.FieldByName('active').AsString) > 0) and (DataCol = 2) then
    TDBGrid(Sender).Canvas.Font.Color := clGreen;

  if (POS('Não',Tabelas.mt_category.FieldByName('active').AsString) > 0) and (DataCol = 2) then
    TDBGrid(Sender).Canvas.Font.Color := clRed;

  grdCategorias.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmCategorias.Image1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCategorias.ExistsDados;
begin
  lbResult.Visible := false;
  pnAlterar.Enabled := true;
  pnExcluir.Enabled := true;
  grdCategorias.Visible := true;
end;

procedure TfrmCategorias.No1Click(Sender: TObject);
begin
  if Tabelas.mt_category.FieldByName('active').AsString <> 'Não' then
    ModificarStatus(Tabelas.mt_category.FieldByName('id').AsInteger.ToString,'Não');
end;

procedure TfrmCategorias.NotExistsDados;
begin
  pnAlterar.Enabled := false;
  pnExcluir.Enabled := false;
  grdCategorias.Visible := false;
  lbResult.Visible := true;
end;

procedure TfrmCategorias.Sim1Click(Sender: TObject);
begin
  if Tabelas.mt_category.FieldByName('active').AsString <> 'Sim' then
    ModificarStatus(Tabelas.mt_category.FieldByName('id').AsInteger.ToString,'Sim');
end;

end.
