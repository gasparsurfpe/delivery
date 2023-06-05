unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Imaging.GIFImg,
  Vcl.Imaging.pngimage;

type
  TfrmClientes = class(TForm)
    grdClientes: TDBGrid;
    gbFiltro: TGroupBox;
    edtBusca: TEdit;
    btBuscar: TBitBtn;
    lbResult: TLabel;
    pnTopo: TPanel;
    lbTitulo: TLabel;
    Image1: TImage;
    pnBottom: TPanel;
    btNovo: TBitBtn;
    btAlterar: TBitBtn;
    btExcluir: TBitBtn;
    edtFoco: TEdit;
    pnNovo: TPanel;
    imgNovo: TImage;
    lbNovo: TLabel;
    pnAlterar: TPanel;
    imgAlterar: TImage;
    lbAlterar: TLabel;
    pnExcluir: TPanel;
    imgExcluir: TImage;
    lbExcluir: TLabel;
    pnBuscar: TPanel;
    imgBuscar: TImage;
    lbBuscar: TLabel;
    Label1: TLabel;
    procedure btExcluirClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure edtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure grdClientesDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    FCadastroSucesso : Integer;
    procedure ExistsDados;
    procedure NotExistsDados;
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses uTabelas, uCadastroCliente, uLoading, uFunctions, uPermissaoAcesso,
  uPrincipal;

procedure cdsTabelaCPF_CNPJGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if  Sender.AsString <> '' then begin
    Text := FormatFloat( '0##"."###"."###"-"##', StrToFloatDef(Sender.AsString, 0) )
  end;
end;

procedure TfrmClientes.ExistsDados;
begin
  lbResult.Visible := false;
  pnAlterar.Enabled := true;
  pnExcluir.Enabled := true;
  grdClientes.Visible := true;
end;

procedure TfrmClientes.NotExistsDados;
begin
  pnAlterar.Enabled := false;
  pnExcluir.Enabled := false;
  grdClientes.Visible := false;
  lbResult.Visible := true;
end;

procedure TfrmClientes.FormResize(Sender: TObject);
begin
  pnTopo.Width := Width;
  pnBottom.Width := Width;
  lbTitulo.Width := Width - 70;
  lbResult.Left := Trunc((Width/2) - (lbResult.Width/2));
end;

procedure TfrmClientes.grdClientesDblClick(Sender: TObject);
begin
  btAlterar.Click;
end;

procedure TfrmClientes.Image1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmClientes.btAlterarClick(Sender: TObject);
var
  sql, Json: string;
  retorno : integer;
begin
  edtFoco.SetFocus;

  if not AllowOperator('client_update') then
    Exit;

  Enabled := false;
  frmLoading.Show;

  FCadastroSucesso := -1;
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);

  TThread.CreateAnonymousThread(procedure
  begin

    try
      sql := 'SELECT * FROM mt_client_phone WHERE client_id = '+
             Tabelas.Mt_client.FieldByName('id').AsInteger.ToString+' '+
             'ORDER BY major DESC';
      Json := Tabelas.InjectSQL(sql);
      Tabelas.JsonToDataset(Tabelas.mt_client_phone, Json);

      sql := 'SELECT DISTINCT '+
             'mt_client_address.id AS id, '+
             'mt_client_address.client_id AS client_id, '+
             'mt_district.id AS district_id, '+
             'mt_client_address.address AS address, '+
             'mt_district.name AS district_name, '+
             'mt_client_address.major AS major '+
             'FROM mt_client_address, mt_district '+
             'WHERE mt_client_address.district_id = mt_district.id '+
             'AND mt_client_address.client_id = '+Tabelas.Mt_client.FieldByName('id').AsInteger.ToString+' '+
             'ORDER BY mt_client_address.major DESC';
      Json := Tabelas.InjectSQL(sql);
      Tabelas.JsonToDataset(Tabelas.mt_client_address, Json);

      frmCadastroCliente.edtNome.Text := Tabelas.Mt_client.FieldByName('name').AsString;
      frmCadastroCliente.mmPreferencias.Text := Tabelas.Mt_client.FieldByName('obs').AsString;

      Tabelas.Mt_client_address.First;
      while not Tabelas.Mt_client_address.Eof do
      begin
        frmCadastroCliente.cdsEndereco.Append;
        frmCadastroCliente.cdsEndereco.FieldByName('id').AsInteger := Tabelas.Mt_client_address.FieldByName('id').AsInteger;
        frmCadastroCliente.cdsEndereco.FieldByName('address').AsString := Tabelas.Mt_client_address.FieldByName('address').AsString;
        frmCadastroCliente.cdsEndereco.FieldByName('district_id').AsString := Tabelas.Mt_client_address.FieldByName('district_id').AsString;
        frmCadastroCliente.cdsEndereco.FieldByName('district_name').AsString := Tabelas.Mt_client_address.FieldByName('district_name').AsString;
        frmCadastroCliente.cdsEndereco.FieldByName('major').AsString := Tabelas.Mt_client_address.FieldByName('major').AsString;
        frmCadastroCliente.cdsEndereco.Post;

        Tabelas.Mt_client_address.Next;
      end;

      Tabelas.Mt_client_phone.First;
      while not Tabelas.Mt_client_phone.Eof do
      begin
        frmCadastroCliente.cdsTelefone.Append;
        frmCadastroCliente.cdsTelefone.FieldByName('id').AsInteger := Tabelas.Mt_client_phone.FieldByName('id').AsInteger;
        frmCadastroCliente.cdsTelefone.FieldByName('telefone').AsString := Tabelas.Mt_client_phone.FieldByName('phone').AsString;
        frmCadastroCliente.cdsTelefone.FieldByName('major').AsString := Tabelas.Mt_client_phone.FieldByName('major').AsString;
        frmCadastroCliente.cdsTelefone.Post;

        Tabelas.Mt_client_phone.Next;
      end;

      if Json = 'sql_erro' then
        retorno := -1
      else if Json = 'sql_vazio' then
        retorno := 0
      else
        retorno := 1;
    except
      retorno := -1;
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if retorno = 1 then begin
        frmCadastroCliente.FEntrada := frmClientes;
        frmCadastroCliente.lbTitulo.Caption := 'Editar dados do cliente';
        frmCadastroCliente.FModoEdit := true;
        frmCadastroCliente.FTelefoneEdit := false;
        frmCadastroCliente.FEnderecoEdit := false;
        frmCadastroCliente.ShowModal;
        frmCadastroCliente.Free;

        if FCadastroSucesso = 1 then begin
          edtBusca.Text := '';
          ShowMessage('Registro gravado com sucesso');
        end;
      end else begin
        frmCadastroCliente.Free;
        ShowMessage('Ocorreu um erro');
      end;
    end);
  end).Start;
end;

procedure TfrmClientes.btBuscarClick(Sender: TObject);
var
  sql, Json: string;
  retorno : integer;
begin
  Enabled := false;
  frmLoading.Show;

  edtBusca.Text := AllTrim(edtBusca.Text);
  edtBusca.SelStart := Length(edtBusca.Text);

  TThread.CreateAnonymousThread(procedure
  begin

    try
      sql := 'SELECT mt_client.id AS id, '+
             '       mt_client.name AS name, '+
             '       mt_client.obs AS obs, '+
             '       mt_client_address.id AS address_id, '+
             '       mt_client_phone.id AS phone_id, '+
             '       mt_client_phone.phone AS phone, '+
             '       mt_client_address.address AS address, '+
             '       mt_district.name AS district '+
             'FROM   mt_client, mt_client_address, mt_client_phone, mt_district '+
             'WHERE  mt_client.id = mt_client_address.client_id '+
             'AND    mt_client.id = mt_client_phone.client_id '+
             'AND    mt_client_address.district_id = mt_district.id '+
             'AND    mt_client.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
             'AND    mt_client.name NOT LIKE ''Consumidor'' '+
             'AND    mt_client_phone.phone NOT LIKE ''S/T'' '+
             'AND    mt_client_address.address NOT LIKE ''S/L'' '+
             'AND   (mt_client.id LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'OR     mt_client.name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'OR     mt_client.obs LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'OR     mt_client_address.address LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'OR     mt_district.name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'OR     mt_client_phone.phone LIKE '+QuotedStr('%'+edtBusca.Text+'%')+') '+
             'GROUP BY mt_client.id '+
             'ORDER BY mt_client.name ASC, mt_client_address.major DESC, mt_client_phone.major DESC';
      Json := Tabelas.InjectSQL(sql);

      if Json = 'sql_erro' then
        retorno := -1
      else if Json = 'sql_vazio' then
        retorno := 0
      else
        retorno := 1;

      if retorno = 1 then
        Tabelas.JsonToDataset(Tabelas.mt_client, Json);
    except
      retorno := -1;
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if retorno = -1 then
        ShowMessage('Ocorreu um erro de conexão')
      else if retorno = 0 then
        NotExistsDados
      else
        ExistsDados;
    end);
  end).Start;
end;

procedure TfrmClientes.btExcluirClick(Sender: TObject);
var
  sql, Json: string;
  retorno : integer;
begin
  edtFoco.SetFocus;

  if not AllowOperator('client_delete') then
    Exit;

  if Application.MessageBox('Deseja mesmo excluir este cliente?','Atenção!',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
  begin
    Enabled := false;
    frmLoading.Show;

    TThread.CreateAnonymousThread(procedure
    begin

      try
        sql := 'DELETE FROM mt_client_address WHERE client_id = '+
               Tabelas.Mt_client.FieldByName('id').AsInteger.ToString;
        Tabelas.InjectSQL(sql);

        sql := 'DELETE FROM mt_client_phone WHERE client_id = '+
               Tabelas.Mt_client.FieldByName('id').AsInteger.ToString;
        Tabelas.InjectSQL(sql);

        sql := 'DELETE FROM mt_client WHERE id = '+
               Tabelas.Mt_client.FieldByName('id').AsInteger.ToString;
        Tabelas.InjectSQL(sql);

        sql := 'SELECT mt_client.id AS id, '+
               '       mt_client.name AS name, '+
               '       mt_client.obs AS obs, '+
               '       mt_client_address.id AS address_id, '+
               '       mt_client_phone.id AS phone_id, '+
               '       mt_client_phone.phone AS phone, '+
               '       mt_client_address.address AS address, '+
               '       mt_district.name AS district '+
               'FROM   mt_client, mt_client_address, mt_client_phone, mt_district '+
               'WHERE  mt_client.id = mt_client_address.client_id '+
               'AND    mt_client.id = mt_client_phone.client_id '+
               'AND    mt_client_address.district_id = mt_district.id '+
               'AND    mt_client.merchant_id = '+frmPrincipal.FMerchantID.ToString+' '+
               'AND    mt_client.name NOT LIKE ''Consumidor'' '+
               'AND    mt_client_phone.phone NOT LIKE ''S/T'' '+
               'AND    mt_client_address.address NOT LIKE ''S/L'' '+
               'GROUP BY mt_client.name '+
               'ORDER BY mt_client.name ASC, mt_client_address.major DESC, mt_client_phone.major DESC';
        Json := Tabelas.InjectSQL(sql);

        if Json = 'sql_erro' then
          retorno := -1
        else if Json = 'sql_vazio' then
          retorno := 0
        else
          retorno := 1;

        if retorno = 1 then
          Tabelas.JsonToDataset(Tabelas.mt_client, Json);
      except
        retorno := -1;
      end;

      TThread.Synchronize(nil, procedure
      begin
        Enabled := true;
        frmLoading.FClose := true;
        frmLoading.Close;

        if retorno <> -1 then begin
          if retorno = 0 then
            NotExistsDados
          else
            ExistsDados;

          ShowMessage('Registro excluído com sucesso')
        end else begin
          edtBusca.Text := '';
          ShowMessage('Ocorreu um erro na conexão');
        end;
      end);
    end).Start;
  end;
end;

procedure TfrmClientes.btNovoClick(Sender: TObject);
begin
  edtFoco.SetFocus;

  if not AllowOperator('client_insert') then
    Exit;

  FCadastroSucesso := -1;
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  frmCadastroCliente.FEntrada := frmClientes;
  frmCadastroCliente.lbTitulo.Caption := 'Novo cliente';
  frmCadastroCliente.FModoEdit := false;
  frmCadastroCliente.ShowModal;
  frmCadastroCliente.Free;

  if FCadastroSucesso = 1 then
  begin
    edtBusca.Text := '';
    ExistsDados;
    ShowMessage('Registro gravado com sucesso');
  end;
end;

procedure TfrmClientes.edtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    btBuscar.Click;
    key := #0;
  end;
end;

end.
