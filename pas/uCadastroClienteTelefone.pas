unit uCadastroClienteTelefone;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCadastroClienteTelefone = class(TForm)
    btAdicionar: TBitBtn;
    pnAdicionar: TPanel;
    imgAdicionar: TImage;
    lbAdicionar: TLabel;
    edtTelefone: TEdit;
    procedure FormShow(Sender: TObject);
    procedure edtTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure btAdicionarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtTelefoneChange(Sender: TObject);
  private
    { Private declarations }
  public
    FModoEdit : boolean;
    { Public declarations }
  end;

var
  frmCadastroClienteTelefone: TfrmCadastroClienteTelefone;

implementation

{$R *.dfm}

uses uCadastroCliente, uFunctions, uFormat;

procedure TfrmCadastroClienteTelefone.btAdicionarClick(Sender: TObject);
var
  NumeroPhone, major: string;
begin
  NumeroPhone := edtTelefone.Text;
  NumeroPhone := StringReplace(NumeroPhone,' ','',[rfReplaceAll]);
  NumeroPhone := StringReplace(NumeroPhone,'(','',[rfReplaceAll]);
  NumeroPhone := StringReplace(NumeroPhone,')','',[rfReplaceAll]);
  NumeroPhone := StringReplace(NumeroPhone,'-','',[rfReplaceAll]);

  if not IsPhone(edtTelefone.Text) then begin
    ShowMessage('Informe o TELEFONE!');
    Exit;
  end;

  try
    if FModoEdit then begin
      frmCadastroCliente.cdsTelefone.Edit;
      major := frmCadastroCliente.cdsTelefone.FieldByName('major').AsString;
    end else begin
      if frmCadastroCliente.cdsTelefone.IsEmpty then
        major := 's'
      else
        major := 'n';

      frmCadastroCliente.cdsTelefone.Append;
      frmCadastroCliente.cdsTelefone.FieldByName('id').AsInteger := 0;
    end;

    frmCadastroCliente.cdsTelefone.FieldByName('telefone').AsString := NumeroPhone;
    frmCadastroCliente.cdsTelefone.FieldByName('major').AsString := major;
    frmCadastroCliente.cdsTelefone.Post;

    frmCadastroCliente.FTelefoneEdit := true;
  except
    ShowMessage('Ocorreu um erro');
  end;

  Close;
end;

procedure TfrmCadastroClienteTelefone.edtTelefoneChange(Sender: TObject);
begin
  Formatar(TEdit(Sender), TFormato.Celular);
end;

procedure TfrmCadastroClienteTelefone.edtTelefoneKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    btAdicionar.Click;
    key := #0;
  end;
end;

procedure TfrmCadastroClienteTelefone.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F9 then
    btAdicionar.Click;
end;

procedure TfrmCadastroClienteTelefone.FormShow(Sender: TObject);
begin
  edtTelefone.SetFocus;
end;

end.
