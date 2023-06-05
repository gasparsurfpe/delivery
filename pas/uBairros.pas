unit uBairros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, System.JSON,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Menus;

type
  TfrmBairros = class(TForm)
    gbFiltro: TGroupBox;
    Label1: TLabel;
    edtBusca: TEdit;
    pnBuscar: TPanel;
    imgBuscar: TImage;
    lbBuscar: TLabel;
    btBuscar: TBitBtn;
    grdBairros: TDBGrid;
    lbResult: TLabel;
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
    procedure grdBairrosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btAlterarClick(Sender: TObject);
    procedure grdBairrosDblClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure edtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
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
  frmBairros: TfrmBairros;

implementation

{$R *.dfm}

uses uCadastroBairro, uTabelas, uLoading, uFunctions, uPrincipal;

procedure TfrmBairros.ModificarStatus(ID, Status:String);
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
      sql := 'UPDATE mt_district SET active = '+QuotedStr(Status)+' '+
             'WHERE id = '+ID;
      Tabelas.InjectSQL(sql);

      sql := 'SELECT * FROM	mt_district '+
             'WHERE name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'AND merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'ORDER BY active DESC, name ASC';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_district, ConvertJsonToValue(Json));
        Tabelas.mt_district.Locate('id',ID,[loPartialKey]);
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

procedure TfrmBairros.ExistsDados;
begin
  lbResult.Visible := false;
  pnAlterar.Enabled := true;
  pnExcluir.Enabled := true;
  grdBairros.Visible := true;
end;

procedure TfrmBairros.No1Click(Sender: TObject);
begin
  if Tabelas.mt_district.FieldByName('active').AsString <> 'Não' then
    ModificarStatus(Tabelas.mt_district.FieldByName('id').AsInteger.ToString,'Não');
end;

procedure TfrmBairros.NotExistsDados;
begin
  pnAlterar.Enabled := false;
  pnExcluir.Enabled := false;
  grdBairros.Visible := false;
  lbResult.Visible := true;
end;

procedure TfrmBairros.Sim1Click(Sender: TObject);
begin
  if Tabelas.mt_district.FieldByName('active').AsString <> 'Sim' then
    ModificarStatus(Tabelas.mt_district.FieldByName('id').AsInteger.ToString,'Sim');
end;

procedure TfrmBairros.FormShow(Sender: TObject);
begin
  pnTopo.SetFocus;
end;

procedure TfrmBairros.btAlterarClick(Sender: TObject);
begin
  if not AllowOperator('district_update') then
    Exit;

  FRegistroSalvo := false;
  Application.CreateForm(TfrmCadastroBairro, frmCadastroBairro);
  frmCadastroBairro.FModoEdit := true;
  frmCadastroBairro.FBairroID := Tabelas.mt_district.FieldByName('id').AsInteger;
  frmCadastroBairro.edtCodigo.Text := Tabelas.mt_district.FieldByName('command').AsInteger.ToString;
  frmCadastroBairro.edtNome.Text := Tabelas.mt_district.FieldByName('name').AsString;
  frmCadastroBairro.edtTaxa.Text := FormatFloat('#,0.00',Tabelas.mt_district.FieldByName('tax').AsFloat);

  if Tabelas.mt_district.FieldByName('active').AsString = 'Sim' then
    frmCadastroBairro.cbStatus.ItemIndex := 0
  else
    frmCadastroBairro.cbStatus.ItemIndex := 1;

  frmCadastroBairro.lbTitulo.Caption := 'Editar bairro';
  frmCadastroBairro.ShowModal;
  frmCadastroBairro.Free;

  if FRegistroSalvo = true then
    ShowMessage('Registro salvo');
end;

procedure TfrmBairros.btBuscarClick(Sender: TObject);
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
      sql := 'SELECT * FROM	mt_district '+
             'WHERE name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'AND merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'ORDER BY active DESC, command, name';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
        Tabelas.JsonToDataset(Tabelas.mt_district, ConvertJsonToValue(Json));
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

procedure TfrmBairros.btExcluirClick(Sender: TObject);
var
  sql, Json: string;
begin
  if not AllowOperator('district_delete') then
    Exit;

  if Application.MessageBox('Deseja mesmo excluir este bairro?','Atenção!',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then begin
    edtBusca.Text := '';
    Enabled := false;
    frmLoading.Show;

    TThread.CreateAnonymousThread(procedure begin

      try
        sql := 'DELETE FROM mt_district WHERE id = '+
               Tabelas.mt_district.FieldByName('id').AsInteger.ToString;
        Tabelas.InjectSQL(sql);

        sql := 'SELECT * FROM	mt_district '+
               'WHERE name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
               'AND merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
               'ORDER BY active DESC, command, name';
        Json := Tabelas.InjectSQL(sql);
        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
          Tabelas.JsonToDataset(Tabelas.mt_district, ConvertJsonToValue(Json));
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

procedure TfrmBairros.btNovoClick(Sender: TObject);
begin
  if not AllowOperator('district_insert') then
    Exit;

  FRegistroSalvo := false;
  Application.CreateForm(TfrmCadastroBairro, frmCadastroBairro);
  frmCadastroBairro.FModoEdit := false;
  frmCadastroBairro.FBairroID := 0;
  frmCadastroBairro.cbStatus.ItemIndex := 0;
  frmCadastroBairro.lbTitulo.Caption := 'Novo bairro';
  frmCadastroBairro.ShowModal;
  frmCadastroBairro.Free;

  if FRegistroSalvo = true then
    ShowMessage('Registro salvo');
end;

procedure TfrmBairros.edtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    btBuscar.Click;
    key := #0;
  end;
end;

procedure TfrmBairros.grdBairrosDblClick(Sender: TObject);
begin
  btAlterar.Click;
end;

procedure TfrmBairros.grdBairrosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (POS('Sim',Tabelas.mt_district.FieldByName('active').AsString) > 0) and (DataCol = 3) then
    TDBGrid(Sender).Canvas.Font.Color := clGreen;

  if (POS('Não',Tabelas.mt_district.FieldByName('active').AsString) > 0) and (DataCol = 3) then
    TDBGrid(Sender).Canvas.Font.Color := clRed;

  grdBairros.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmBairros.Image1Click(Sender: TObject);
begin
  Close;
end;

end.
