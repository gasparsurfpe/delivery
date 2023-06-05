unit uPermissaoAcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB;

type
  TfrmPermissaoAcesso = class(TForm)
    edtSenha: TEdit;
    Label1: TLabel;
    pnConfirma: TPanel;
    imgConfirma: TImage;
    lbConfirma: TLabel;
    btConfirma: TBitBtn;
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    FValido : Boolean;
    { Public declarations }
  end;

var
  frmPermissaoAcesso: TfrmPermissaoAcesso;

implementation

{$R *.dfm}

uses uTabelas, uMD5;

procedure TfrmPermissaoAcesso.btConfirmaClick(Sender: TObject);
var
  OperatorID : Integer;
begin
  OperatorID := Tabelas.mt_operator.FieldByName('id').AsInteger;

  if Tabelas.mt_operator.Locate('password',MD5String(edtSenha.Text),[loCaseInsensitive]) then begin
    FValido := true;
    Tabelas.mt_operator.Locate('id',OperatorID,[loCaseInsensitive]);
    Close;
  end else
    ShowMessage('Senha inválida!');
end;

procedure TfrmPermissaoAcesso.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    btConfirma.Click;
    key := #0;
  end;
end;

procedure TfrmPermissaoAcesso.FormResize(Sender: TObject);
begin
  pnConfirma.Left := Trunc(Width/2 - pnConfirma.Width/2);
end;

procedure TfrmPermissaoAcesso.FormShow(Sender: TObject);
begin
  FValido := false;
  edtSenha.Text := '';
  edtSenha.SetFocus;
end;

end.
