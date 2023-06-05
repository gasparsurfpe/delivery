unit uListaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls;

type
  TfrmConsultaCliente = class(TForm)
    lbResult: TLabel;
    grdListaClientes: TDBGrid;
    pnTopo: TPanel;
    imgVoltar: TImage;
    lbTitulo: TLabel;
    btAdicionar: TBitBtn;
    edtBusca: TEdit;
    btBuscar: TBitBtn;
    lbAtalhoCliente: TLabel;
    grdEndereco: TDBGrid;
    grdTelefone: TDBGrid;
    pnAdicionar: TPanel;
    imgAdicionar: TImage;
    lbAdicionar: TLabel;
    pnBuscar: TPanel;
    imgBuscar: TImage;
    lbBuscar: TLabel;
    procedure imgVoltarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btAdicionarClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure grdListaClientesKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure grdListaClientesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdListaClientesCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure lbAtalhoClienteClick(Sender: TObject);
  private
    FUltimoConsultado : Integer;
    procedure MaisInfoCliente;
    { Private declarations }
  public
    FNovoClienteAdicionado : Boolean;
    procedure ExistsDados;
    procedure NotExistsDados;
    { Public declarations }
  end;

var
  frmConsultaCliente: TfrmConsultaCliente;

implementation

{$R *.dfm}

uses uTabelas, uCadastroPedido, uLoading, uCadastroCliente, uClientes,
  uPrincipal;

procedure TfrmConsultaCliente.MaisInfoCliente;
var
  sql, Json: string;
begin
  if FUltimoConsultado = Tabelas.Mt_client.FieldByName('id').AsInteger then
    Exit;

  Enabled := false;
  frmLoading.Show;

  TThread.CreateAnonymousThread(procedure
  begin
    try
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
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_client_address, Json);

        sql := 'SELECT * FROM mt_client_phone '+
               'WHERE client_id = '+Tabelas.Mt_client.FieldByName('id').AsInteger.ToString+' '+
               'ORDER BY major DESC;';
        Json := Tabelas.InjectSQL(sql);
        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
          Tabelas.JsonToDataset(Tabelas.mt_client_phone, Json);
      end;
    except
      Json := 'sql_erro';
    end;

    TThread.Synchronize(nil, procedure
    begin
      Enabled := true;
      frmLoading.FClose := true;
      frmLoading.Close;

      if (Json = 'sql_erro') or (Json = 'sql_vazio') then
        ShowMessage('Erro');

      FUltimoConsultado := Tabelas.Mt_client.FieldByName('id').AsInteger;
    end);

  end).Start;
end;

procedure TfrmConsultaCliente.btBuscarClick(Sender: TObject);
var
  sql, Json: string;
begin
  Enabled := false;
  frmLoading.Show;

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
             'AND   (mt_client.id LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'OR     mt_client.name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'OR     mt_client.obs LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'OR     mt_client_address.address LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'OR     mt_district.name LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' '+
             'OR     mt_client_phone.phone LIKE '+QuotedStr('%'+edtBusca.Text+'%')+') '+
             'GROUP BY mt_client.id '+
             'ORDER BY mt_client.name ASC, mt_client_address.major DESC, mt_client_phone.major DESC';
      Json := Tabelas.InjectSQL(sql);
      if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
        Tabelas.JsonToDataset(Tabelas.mt_client, Json);

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
        if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then begin
          Tabelas.JsonToDataset(Tabelas.mt_client_address, Json);

          sql := 'SELECT * FROM mt_client_phone '+
                 'WHERE client_id = '+Tabelas.Mt_client.FieldByName('id').AsInteger.ToString+' '+
                 'ORDER BY major DESC;';
          Json := Tabelas.InjectSQL(sql);
          if (Json <> 'sql_erro') and (Json <> 'sql_vazio') then
            Tabelas.JsonToDataset(Tabelas.mt_client_phone, Json);
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

      if Json = 'sql_erro' then
        ShowMessage('Ocorreu um erro de conexão')
      else if Json = 'sql_vazio' then
        NotExistsDados
      else begin
        FUltimoConsultado := Tabelas.Mt_client.FieldByName('id').AsInteger;
        ExistsDados;
        grdListaClientes.SetFocus;
      end;
    end);
  end).Start;
end;

procedure TfrmConsultaCliente.btAdicionarClick(Sender: TObject);
begin
  frmCadastroPedido.FClientID := Tabelas.Mt_client.FieldByName('id').AsInteger;
  frmCadastroPedido.FClientAddressID := Tabelas.Mt_client_address.FieldByName('id').AsInteger;
  frmCadastroPedido.FClientPhoneID := Tabelas.Mt_client_phone.FieldByName('id').AsInteger;

  frmCadastroPedido.FNomeCliente := Tabelas.Mt_client.FieldByName('name').AsString;
  frmCadastroPedido.FEndereco :=  Tabelas.Mt_client_address.FieldByName('address').AsString;

  if Tabelas.mt_client_address.FieldByName('district_name').AsString = 'S/B' then begin
    Tabelas.mt_district.First;
    frmCadastroPedido.FBairroID := Tabelas.mt_district.FieldByName('id').AsInteger;
  end else
    frmCadastroPedido.FBairroID :=  Tabelas.Mt_client_address.FieldByName('district_id').AsInteger;

  frmCadastroPedido.FTelefone :=  Tabelas.Mt_client_phone.FieldByName('phone').AsString;

  frmCadastroPedido.edtCliente.Text := frmCadastroPedido.FNomeCliente;
  frmCadastroPedido.edtTelefone.Text := frmCadastroPedido.FTelefone;
  frmCadastroPedido.mmEndereco.Lines.Text := frmCadastroPedido.FEndereco;

  frmCadastroPedido.cbBairro.KeyValue := frmCadastroPedido.FBairroID;

  frmCadastroPedido.mmObservacoes.Text :=  Tabelas.Mt_client.FieldByName('obs').AsString;
  frmCadastroPedido.lbClienteSelecionado.Caption := frmCadastroPedido.FNomeCliente;

  frmCadastroPedido.lbResultClient.Visible := false;
  frmCadastroPedido.pnInfoCliente.Visible := true;

  Tabelas.mt_district.Locate('id',frmCadastroPedido.FBairroID,[loCaseInsensitive]);
  frmCadastroPedido.FTaxaEntrega := Tabelas.mt_district.FieldByName('tax').AsFloat;
  frmCadastroPedido.AtualizaValores;

  Close;
end;

procedure TfrmConsultaCliente.edtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    btBuscar.Click;
    key := #0;
  end;
end;

procedure TfrmConsultaCliente.ExistsDados;
begin
  lbResult.Visible := false;
  lbAtalhoCliente.Visible := false;
  btAdicionar.Enabled := true;
  grdListaClientes.Visible := true;
  grdTelefone.Visible := true;
  grdEndereco.Visible := true;
end;

procedure TfrmConsultaCliente.NotExistsDados;
begin
  btAdicionar.Enabled := false;
  grdListaClientes.Visible := false;
  grdTelefone.Visible := false;
  grdEndereco.Visible := false;
  lbResult.Visible := true;
  lbAtalhoCliente.Visible := true;
end;

procedure TfrmConsultaCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_f9 then
    btAdicionar.Click;
end;

procedure TfrmConsultaCliente.FormResize(Sender: TObject);
begin
  lbResult.Left := Trunc((Width/2) - (lbResult.Width/2));
  lbResult.Top := Trunc((Height/2) - 20);

  lbAtalhoCliente.Left := Trunc((Width/2)-(lbAtalhoCliente.Width/2));
  lbAtalhoCliente.Top := lbResult.Top + lbResult.Height + 10;
end;

procedure TfrmConsultaCliente.FormShow(Sender: TObject);
begin
  FUltimoConsultado := Tabelas.Mt_client.FieldByName('id').AsInteger;
  edtBusca.SetFocus;
end;

procedure TfrmConsultaCliente.grdListaClientesCellClick(Column: TColumn);
begin
  MaisInfoCliente;
end;

procedure TfrmConsultaCliente.grdListaClientesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    btAdicionar.Click;
    key := #0;
  end;
end;

procedure TfrmConsultaCliente.grdListaClientesKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key <> 13 then
    MaisInfoCliente;
end;

procedure TfrmConsultaCliente.imgVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsultaCliente.lbAtalhoClienteClick(Sender: TObject);
begin
  FNovoClienteAdicionado := false;
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  frmCadastroCliente.FEntrada := frmConsultaCliente;
  frmCadastroCliente.ShowModal;
  frmCadastroCliente.Free;

  if FNovoClienteAdicionado then begin
    ExistsDados;
    btAdicionar.Click;
  end;
end;

end.
