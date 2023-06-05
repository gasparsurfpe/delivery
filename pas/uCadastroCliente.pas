unit uCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Datasnap.DBClient, System.JSON;

type
  TfrmCadastroCliente = class(TForm)
    pnTopo: TPanel;
    imgVoltar: TImage;
    lbTitulo: TLabel;
    grdCart: TDBGrid;
    edtNome: TEdit;
    gbNome: TGroupBox;
    Label1: TLabel;
    gbTelefone: TGroupBox;
    imgAddItem: TImage;
    imgRemoveItem: TImage;
    gbEndereco: TGroupBox;
    imgAddEndereco: TImage;
    imgDelEndereco: TImage;
    DBGrid1: TDBGrid;
    btSalvar: TBitBtn;
    DScdsTelefone: TDataSource;
    DScdsEndereco: TDataSource;
    imgEditTelefone: TImage;
    imgEdtEndereco: TImage;
    Label2: TLabel;
    mmPreferencias: TMemo;
    cdsTelefone: TClientDataSet;
    cdsTelefoneid: TIntegerField;
    cdsTelefonetelefone: TStringField;
    cdsTelefonemajor: TStringField;
    pnBottom: TPanel;
    pnSalvar: TPanel;
    imgSalvar: TImage;
    lbSalvar: TLabel;
    pnCancelar: TPanel;
    imgCancelar: TImage;
    lbCancelar: TLabel;
    btCancelar: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cdsEndereco: TClientDataSet;
    cdsEnderecoid: TIntegerField;
    cdsEnderecoaddress: TStringField;
    cdsEnderecodistrict_id: TIntegerField;
    cdsEnderecodistrict_name: TStringField;
    cdsEnderecomajor: TStringField;
    procedure imgVoltarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure imgAddItemClick(Sender: TObject);
    procedure imgAddEnderecoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imgEditTelefoneClick(Sender: TObject);
    procedure imgRemoveItemClick(Sender: TObject);
    procedure imgDelEnderecoClick(Sender: TObject);
    procedure imgEdtEnderecoClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    procedure Salvar;
    procedure Atualizar;
    { Private declarations }
  public
    FEntrada : TForm;
    FDeleteAddress : Array of Integer;
    FDeletePhone : Array of Integer;
    FDeleteAddressCont : integer;
    FDeletePhoneCont : integer;
    FModoEdit : boolean;
    FTelefoneEdit : boolean;
    FEnderecoEdit : boolean;
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

uses uClientes, uTabelas, uCadastroClienteTelefone, uCadastroEndereco, uLoading,
  uFunctions, uListaClientes, uPrincipal;

procedure TfrmCadastroCliente.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroCliente.btSalvarClick(Sender: TObject);
begin
  edtNome.Text := AllTrim(edtNome.Text);
  edtNome.SelStart := Length(edtNome.Text);
  mmPreferencias.Text := AllTrim(mmPreferencias.Text);
  mmPreferencias.SelStart := Length(mmPreferencias.Text);

  if FModoEdit = true then
    Atualizar
  else
    Salvar;
end;

procedure TfrmCadastroCliente.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    mmPreferencias.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroCliente.FormCreate(Sender: TObject);
begin
  FDeleteAddressCont := 0;
  FDeletePhoneCont := 0;
end;

procedure TfrmCadastroCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F9 then
    Salvar;
end;

procedure TfrmCadastroCliente.FormResize(Sender: TObject);
begin
  pnTopo.Width := Width;
  lbTitulo.Width := Width - 70;
end;

procedure TfrmCadastroCliente.imgVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroCliente.imgEdtEnderecoClick(Sender: TObject);
begin
  if cdsEndereco.IsEmpty then
    Exit;

  Application.CreateForm(TfrmCadastroEndereco, frmCadastroEndereco);
  frmCadastroEndereco.mmEndereco.Lines.Text := cdsEndereco.FieldByName('address').AsString;
  frmCadastroEndereco.cbBairro.KeyValue := cdsEndereco.FieldByName('district_id').AsInteger;
  frmCadastroEndereco.FModoEdit := true;
  frmCadastroEndereco.ShowModal;
  frmCadastroEndereco.Free;
end;

procedure TfrmCadastroCliente.imgEditTelefoneClick(Sender: TObject);
begin
  if cdsTelefone.IsEmpty then
    Exit;

  Application.CreateForm(TfrmCadastroClienteTelefone, frmCadastroClienteTelefone);
  frmCadastroClienteTelefone.edtTelefone.Text := cdsTelefone.FieldByName('telefone').AsString;
  frmCadastroClienteTelefone.btAdicionar.Caption := ' Alterar (F9)';
  frmCadastroClienteTelefone.FModoEdit := true;
  frmCadastroClienteTelefone.ShowModal;
  frmCadastroClienteTelefone.Free;
end;

procedure TfrmCadastroCliente.imgRemoveItemClick(Sender: TObject);
begin
  if not cdsTelefone.IsEmpty then begin
    if Application.MessageBox('Deseja mesmo excluir este telefone?','Atenção!',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then begin
      try
        FDeletePhoneCont := FDeletePhoneCont + 1;
        SetLength(FDeletePhone, FDeletePhoneCont);
        FDeletePhone[FDeletePhoneCont-1] := cdsTelefone.FieldByName('id').AsInteger;

        if cdsTelefone.FieldByName('major').AsString = 's' then begin
          cdsTelefone.Delete;
          if not cdsEndereco.IsEmpty then begin
            cdsTelefone.Edit;
            cdsTelefone.FieldByName('major').AsString := 's';
            cdsTelefone.Post;
          end;
        end else
          cdsTelefone.Delete;

        FTelefoneEdit := true;
      except
        ShowMessage('Ocorreu um erro');
      end;
    end;
  end;
end;

procedure TfrmCadastroCliente.imgAddEnderecoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCadastroEndereco, frmCadastroEndereco);
  frmCadastroEndereco.ShowModal;
  frmCadastroEndereco.Free;
end;

procedure TfrmCadastroCliente.imgAddItemClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCadastroClienteTelefone, frmCadastroClienteTelefone);
  frmCadastroClienteTelefone.FModoEdit := false;
  frmCadastroClienteTelefone.ShowModal;
  frmCadastroClienteTelefone.Free;
end;

procedure TfrmCadastroCliente.imgDelEnderecoClick(Sender: TObject);
begin
  if not cdsEndereco.IsEmpty then begin
    if Application.MessageBox('Deseja mesmo excluir este endereço?','Atenção!',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then begin
      try
        FDeleteAddressCont := FDeleteAddressCont + 1;
        SetLength(FDeleteAddress, FDeleteAddressCont);
        FDeleteAddress[FDeleteAddressCont-1] := cdsEndereco.FieldByName('id').AsInteger;

        if cdsEndereco.FieldByName('major').AsString = 's' then begin
          cdsEndereco.Delete;
          if not cdsEndereco.IsEmpty then begin
            cdsEndereco.Edit;
            cdsEndereco.FieldByName('major').AsString := 's';
            cdsEndereco.Post;
          end;
        end else
          cdsEndereco.Delete;

        FEnderecoEdit := true;
      except on E:Exception do
        ShowMessage('Não foi possível excluir o registro');
      end;
    end;
  end;
end;

procedure TfrmCadastroCliente.Salvar;
var
  sql, Json, ClientID: string;
  ArrayDados : TJSONArray;
begin
  if edtNome.Text = '' then
  begin
    ShowMessage('Informe o NOME do cliente!');
    edtNome.SetFocus;
    Exit;
  end;

  if cdsTelefone.IsEmpty then
  begin
    ShowMessage('Adicione um TELEFONE!');
    Exit;
  end;

  if cdsEndereco.IsEmpty then
  begin
    ShowMessage('Adicione um ENDEREÇO!');
    Exit;
  end;

  Enabled := false;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      sql := 'INSERT INTO mt_client (id, name, obs, merchant_id) VALUES (NULL, '+
             QuotedStr(edtNome.Text)+', '+
             QuotedStr(mmPreferencias.Lines.Text)+', '+frmPrincipal.FMerchantID.ToString+')';
      Tabelas.InjectSQl(sql);
      sql := 'SELECT MAX(id) AS id FROM mt_client WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString;
      Json := Tabelas.InjectSQL(sql);
      ArrayDados := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Json), 0) AS TJSONArray;
      ClientID := ArrayDados.Get(0).GetValue<string>('id', '');

      sql := 'INSERT INTO mt_client_phone (id, client_id, phone, major) VALUES ';
      cdsTelefone.First;
      while not cdsTelefone.Eof do
      begin
        sql := sql + '(NULL, '+ClientID+', '+
               QuotedStr(cdsTelefone.FieldByName('telefone').AsString)+', '+
               QuotedStr(cdsTelefone.FieldByName('major').AsString)+'),';
        cdsTelefone.Next;
      end;
      Delete(sql,Length(sql),1);
      Tabelas.InjectSQL(sql);

      sql := 'INSERT INTO mt_client_address (id, client_id, address, district_id, major) VALUES ';
      cdsEndereco.First;
      while not cdsEndereco.Eof do
      begin
        sql := sql + '(NULL, '+ClientID+', '+
               QuotedStr(cdsEndereco.FieldByName('address').AsString)+', '+
               cdsEndereco.FieldByName('district_id').AsInteger.ToString+', '+
               QuotedStr(cdsEndereco.FieldByName('major').AsString)+'),';
        cdsEndereco.Next;
      end;
      Delete(sql,Length(sql),1);
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
             'GROUP BY mt_client.id '+
             'ORDER BY mt_client.name ASC, mt_client_address.major DESC, mt_client_phone.major DESC';
      Json := Tabelas.InjectSQL(sql);

      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_client, Json);
        Tabelas.Mt_client.Locate('id',ClientID,[loCaseInsensitive]);

        if FEntrada = frmConsultaCliente then begin
          sql := 'SELECT * FROM mt_client_phone WHERE client_id = '+ClientID+' '+
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
                 'AND mt_client_address.client_id = '+ClientID+' '+
                 'ORDER BY mt_client_address.major DESC';
          Json := Tabelas.InjectSQL(sql);
          Tabelas.JsonToDataset(Tabelas.mt_client_address, Json);
        end;
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if FEntrada = frmClientes then begin
        if Json <> 'sql_erro' then
          frmClientes.FCadastroSucesso := 1
        else
          frmClientes.FCadastroSucesso := 0;
      end else if FEntrada = frmConsultaCliente then begin
        if Json <> 'sql_erro' then
          frmConsultaCliente.FNovoClienteAdicionado := true
        else
          frmConsultaCliente.FNovoClienteAdicionado := false;
      end;

      Close;
    end);
  end).Start;
end;

procedure TfrmCadastroCliente.Atualizar;
var
  sql, erro_sql, Json, ClientID: string;
  retorno, x: integer;
begin
  if edtNome.Text = '' then
  begin
    ShowMessage('Informe o NOME do cliente!');
    edtNome.SetFocus;
    Exit;
  end;

  if cdsTelefone.IsEmpty then
  begin
    ShowMessage('Adicione um TELEFONE!');
    Exit;
  end;

  if cdsEndereco.IsEmpty then
  begin
    ShowMessage('Adicione um ENDEREÇO!');
    Exit;
  end;

  Enabled := false;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
      ClientID := Tabelas.mt_client.FieldByName('id').AsInteger.ToString;

      sql := 'UPDATE mt_client SET '+
             'name = '+QuotedStr(edtNome.Text)+', '+
             'obs = '+QuotedStr(mmPreferencias.Lines.Text)+' '+
             'WHERE id = '+ClientID;
      Tabelas.InjectSQL(sql);

      if FEnderecoEdit = true then begin
        cdsEndereco.First;
        while not cdsEndereco.Eof do begin
          if cdsEndereco.FieldByName('id').AsInteger = 0 then
            sql := 'INSERT INTO mt_client_address (id, client_id, address, district_id, major) VALUES '+
                   '(NULL, '+ClientID+', '+
                   QuotedStr(cdsEndereco.FieldByName('address').AsString)+', '+
                   cdsEndereco.FieldByName('district_id').AsInteger.ToString+', '+
                   QuotedStr(cdsEndereco.FieldByName('major').AsString)+')'
          else
            sql := 'UPDATE mt_client_address SET '+
                   'address = '+QuotedStr(cdsEndereco.FieldByName('address').AsString)+', '+
                   'district_id = '+cdsEndereco.FieldByName('district_id').AsInteger.ToString+', '+
                   'major = '+QuotedStr(cdsEndereco.FieldByName('major').AsString)+' '+
                   'WHERE id = '+cdsEndereco.FieldByName('id').AsInteger.ToString;

          Tabelas.InjectSQL(sql);
          cdsEndereco.Next;
        end;

        x := 0;
        while x < FDeleteAddressCont do begin
          sql := 'DELETE FROM mt_client_address WHERE id = '+FDeleteAddress[x].ToString;
          Tabelas.InjectSQL(sql);
          x := x + 1;
        end;
        Finalize(FDeleteAddress);
      end;

      if FTelefoneEdit = true then
      begin
        cdsTelefone.First;
        while not cdsTelefone.Eof do
        begin
          if cdsTelefone.FieldByName('id').AsInteger = 0 then
            sql := 'INSERT INTO mt_client_phone (id, client_id, phone, major) VALUES (NULL, '+
                   ClientID+', '+
                   QuotedStr(cdsTelefone.FieldByName('telefone').AsString)+', '+
                   QuotedStr(cdsTelefone.FieldByName('major').AsString)+')'
          else
            sql := 'UPDATE mt_client_phone SET '+
                   'phone = '+QuotedStr(cdsTelefone.FieldByName('telefone').AsString)+', '+
                   'major = '+QuotedStr(cdsTelefone.FieldByName('major').AsString)+' '+
                   'WHERE id = '+cdsTelefone.FieldByName('id').AsInteger.ToString;

          Tabelas.InjectSQL(sql);
          cdsTelefone.Next;
        end;

        x := 0;
        while x < FDeletePhoneCont do begin
          sql := 'DELETE FROM mt_client_phone WHERE id = '+FDeletePhone[x].ToString;
          Tabelas.InjectSQL(sql);
          x := x + 1;
        end;
        Finalize(FDeletePhone);
      end;

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
             'GROUP BY mt_client.id '+
             'ORDER BY mt_client.name ASC, mt_client_address.major DESC, mt_client_phone.major DESC';
      Json := Tabelas.InjectSQL(sql);

      if Json = 'sql_erro' then
        retorno := -1
      else if Json = 'sql_vazio' then
        retorno := 0
      else
        retorno := 1;

      if retorno = 1 then begin
        Tabelas.JsonToDataset(Tabelas.mt_client, Json);
        Tabelas.Mt_client.Locate('id',ClientID,[loCaseInsensitive]);
      end;
    except on E:Exception do
      begin
        retorno := -1;
        erro_sql := E.Message;
      end;
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if retorno <> -1 then
        frmClientes.FCadastroSucesso := 1
      else
        frmClientes.FCadastroSucesso := 0;

      Close;
    end);
  end).Start;
end;

end.
