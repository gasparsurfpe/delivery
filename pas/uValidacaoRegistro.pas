unit uValidacaoRegistro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, RLReport, System.Json;

type
  TfrmValidacaoRegistro = class(TForm)
    Label1: TLabel;
    edtCodigo: TEdit;
    Label2: TLabel;
    edtChaveLiberacao: TEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmValidacaoRegistro: TfrmValidacaoRegistro;

implementation

{$R *.dfm}

uses uTabelas, VCL.Onguard, VCL.ogutil, uPrincipal;

const
  EncryptionKey : TKey = ($E5, $8F, $84, $D6, $92, $C9, $A4, $D8,
                          $1A, $FC, $6F, $8D, $AB, $FC, $DF, $B4);

procedure TfrmValidacaoRegistro.BitBtn1Click(Sender: TObject);
var
  Json, sql, txtDataVenc, txtData: string;
  Key : TKey;
  Code : TCode;
  Modifier : Longint;
  d, DataVenc: TDateTime;
  ArrayDados : TJSONArray;
  Reg : integer;
begin
  Key := EncryptionKey;
  Modifier := StringHashELF(edtCodigo.Text);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  HexToBuffer(edtChaveLiberacao.Text, Code, SizeOf(Code));
  DataVenc := GetExpirationDate(Key,Code);

  if IsRegCodeValid(Key, Code) then begin
    if IsRegCodeExpired(Key, Code) then
      Reg := 2
    else
      Reg := 1
  end else
    Reg := 0;

  if Reg <> 1 then
    ShowMessage('Registro inválido! Entre em contato com o suporte!')
  else begin
    TThread.CreateAnonymousThread(procedure begin
      try
        sql := 'SELECT * FROM mt_registry WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString;
        Json := Tabelas.InjectSQL(sql);
        txtDataVenc := Copy(DateToStr(DataVenc),7,4)+'-'+Copy(DateToStr(DataVenc),4,2)+'-'+Copy(DateToStr(DataVenc),1,2);
        txtData := Copy(DateToStr(Date()),7,4)+'-'+Copy(DateToStr(Date()),4,2)+'-'+Copy(DateToStr(Date()),1,2);
      except
        Json := 'sql_erro';
      end;


      TThread.Synchronize(nil, procedure begin
        if Json = 'sql_erro' then
          ShowMessage('Ocorreu um erro')
        else begin
          if Json = 'sql_vazio' then
            sql := 'INSERT INTO mt_registry (id, release_code, expiration_date, '+
                   'last_acess, origin_code, merchant_id) VALUES (NULL, '+
                   QuotedStr(edtChaveLiberacao.Text)+', '+
                   QuotedStr(txtDataVenc)+', '+
                   QuotedStr(txtData)+', '+
                   QuotedStr(edtCodigo.Text)+', '+
                   frmPrincipal.FMerchantID.ToString+')'
          else
            sql := 'UPDATE mt_registry SET '+
                   'release_code = '+QuotedStr(edtChaveLiberacao.Text)+', '+
                   'expiration_date = '+QuotedStr(txtDataVenc)+', '+
                   'last_acess = '+QuotedStr(txtData)+', '+
                   'origin_code = '+QuotedStr(edtCodigo.Text)+' '+
                   'WHERE merchant_id = '+frmPrincipal.FMerchantID.ToString;

          Tabelas.InjectSQL(sql);
          ShowMessage('Registro validado com sucesso!'+#13+'O sistema será fechado automaticamente!');
          Application.Terminate;
        end;
      end);
    end).Start;
  end;
end;

procedure TfrmValidacaoRegistro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
