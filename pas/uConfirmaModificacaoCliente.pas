unit uConfirmaModificacaoCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmConfirmaModifacaoCliente = class(TForm)
    gbDados: TGroupBox;
    Label1: TLabel;
    rbClientNameYes: TRadioButton;
    rbClientNameNo: TRadioButton;
    gbEndereco: TGroupBox;
    Label2: TLabel;
    rbClientAddressUpdate: TRadioButton;
    rbClientAddressAdd: TRadioButton;
    rbClientAddressNo: TRadioButton;
    gbTelefone: TGroupBox;
    Label3: TLabel;
    rbClientPhoneUpdate: TRadioButton;
    rbClientPhoneAdd: TRadioButton;
    rbClientPhoneNo: TRadioButton;
    pnConfirma: TPanel;
    imgConfirma: TImage;
    lbConfirma: TLabel;
    btConfirma: TBitBtn;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    FClose : Boolean;
    { Public declarations }
  end;

var
  frmConfirmaModifacaoCliente: TfrmConfirmaModifacaoCliente;

implementation

{$R *.dfm}

uses uCadastroPedido;

procedure TfrmConfirmaModifacaoCliente.btConfirmaClick(Sender: TObject);
begin
  FClose := true;

  if rbClientNameYes.Checked then
    frmCadastroPedido.FEditClientName := 1
  else
    frmCadastroPedido.FEditClientName := 0;

  if rbClientAddressUpdate.Checked then
    frmCadastroPedido.FEditClientAddress := 1
  else if rbClientAddressAdd.Checked then
    frmCadastroPedido.FEditClientAddress := 2
  else
    frmCadastroPedido.FEditClientAddress := 0;

  if rbClientPhoneUpdate.Checked then
    frmCadastroPedido.FEditClientPhone := 1
  else if rbClientPhoneAdd.Checked then
    frmCadastroPedido.FEditClientPhone := 2
  else
    frmCadastroPedido.FEditClientPhone := 0;

  Close;
end;

procedure TfrmConfirmaModifacaoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not FClose then
    Abort;
end;

procedure TfrmConfirmaModifacaoCliente.FormCreate(Sender: TObject);
begin
  FClose := False;
end;

procedure TfrmConfirmaModifacaoCliente.FormResize(Sender: TObject);
begin
  pnConfirma.Left := Trunc(Width/2 - pnConfirma.Width/2);
end;

end.
