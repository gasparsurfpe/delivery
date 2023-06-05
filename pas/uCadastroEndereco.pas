unit uCadastroEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmCadastroEndereco = class(TForm)
    Label12: TLabel;
    btAdicionar: TBitBtn;
    pnAdicionar: TPanel;
    imgAdicionar: TImage;
    lbAdicionar: TLabel;
    mmEndereco: TMemo;
    Label1: TLabel;
    cbBairro: TDBLookupComboBox;
    procedure edtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure cbBairroKeyPress(Sender: TObject; var Key: Char);
    procedure edtReferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure btAdicionarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    FModoEdit : boolean;
    { Public declarations }
  end;

var
  frmCadastroEndereco: TfrmCadastroEndereco;

implementation

{$R *.dfm}

uses uCadastroCliente, uTabelas, uFunctions;

procedure TfrmCadastroEndereco.btAdicionarClick(Sender: TObject);
var
  major : string;
begin
  mmEndereco.Text := AllTrim(mmEndereco.Text);
  mmEndereco.SelStart := Length(mmEndereco.Text);

  if mmEndereco.Lines.Text = '' then
  begin
    ShowMessage('Informe o ENDEREÇO!');
    mmEndereco.SetFocus;
    Exit;
  end;

  if cbBairro.KeyValue <= 0 then
  begin
    ShowMessage('Informe o BAIRRO!');
    cbBairro.SetFocus;
    Exit;
  end;

  try
    if FModoEdit then begin
      frmCadastroCliente.cdsEndereco.Edit;
      major := frmCadastroCliente.cdsEndereco.FieldByName('major').AsString;
    end else begin
      if frmCadastroCliente.cdsEndereco.IsEmpty then
        major := 's'
      else
        major := 'n';

      frmCadastroCliente.cdsEndereco.Append;
      frmCadastroCliente.cdsEndereco.FieldByName('id').AsInteger := 0;
    end;

    frmCadastroCliente.cdsEndereco.FieldByName('district_id').AsInteger := Tabelas.mt_district.FieldByName('id').AsInteger;
    frmCadastroCliente.cdsEndereco.FieldByName('address').AsString := mmEndereco.Lines.Text;
    frmCadastroCliente.cdsEndereco.FieldByName('district_name').AsString := Tabelas.mt_district.FieldByName('name').AsString;
    frmCadastroCliente.cdsEndereco.FieldByName('major').AsString := major;
    frmCadastroCliente.cdsEndereco.Post;

    frmCadastroCliente.FEnderecoEdit := true;
  except
    ShowMessage('ocorreu um erro');
  end;

  Close;
end;

procedure TfrmCadastroEndereco.cbBairroKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    btAdicionar.Click;
    key := #0;
  end;
end;

procedure TfrmCadastroEndereco.edtNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    cbBairro.SetFocus;
    key := #0;
  end;
end;

procedure TfrmCadastroEndereco.edtReferenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    btAdicionar.Click;
    key := #0;
  end;
end;

procedure TfrmCadastroEndereco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F9 then
    btAdicionar.Click;
end;

end.
