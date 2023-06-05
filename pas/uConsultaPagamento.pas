unit uConsultaPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmConsultaPagamento = class(TForm)
    Label1: TLabel;
    edtDesconto: TEdit;
    Label2: TLabel;
    edtValorPago: TEdit;
    btConfirma: TBitBtn;
    Label3: TLabel;
    lbValorTotal: TLabel;
    Label5: TLabel;
    pnConfirma: TPanel;
    imgConfirma: TImage;
    lbConfirma: TLabel;
    Label4: TLabel;
    edtAcrescimo: TEdit;
    cbTipoPagamento: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure edtValorPagoKeyPress(Sender: TObject; var Key: Char);
    procedure cbTipoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorPagoChange(Sender: TObject);
    procedure edtAcrescimoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaPagamento: TfrmConsultaPagamento;

implementation

{$R *.dfm}

uses uTabelas, uCadastroPedido, uFormat;

procedure UpdateValorTotalVisual;
var
  Desc, Acres, Total : Double;
begin
  Desc := StrToFloat(StringReplace(frmConsultaPagamento.edtDesconto.Text,'.','',[rfReplaceAll]));
  Acres := StrToFloat(StringReplace(frmConsultaPagamento.edtAcrescimo.Text,'.','',[rfReplaceAll]));
  Total := frmCadastroPedido.FSubTotal - Desc + Acres + frmCadastroPedido.FTaxaEntrega;

  frmConsultaPagamento.lbValorTotal.Caption := FormatFloat('#,0.00', Total);
end;

procedure TfrmConsultaPagamento.btConfirmaClick(Sender: TObject);
var
  VlrTotal, VlrPago, Desc, Acres: Double;
begin
  Desc := StrToFloat(StringReplace(edtDesconto.Text,'.','',[rfReplaceAll]));
  Acres := StrToFloat(StringReplace(edtAcrescimo.Text,'.','',[rfReplaceAll]));
  VlrPago := StrToFloat(StringReplace(edtValorPago.Text,'.','',[rfReplaceAll]));

  VlrTotal := frmCadastroPedido.FSubtotal - Desc + Acres + frmCadastroPedido.FTaxaEntrega;

  if VlrPago < VlrTotal then
  begin
    ShowMessage('Valor pago deve ser MAIOR ou IGUAL que o valor a pagar!');
    Exit;
  end;

  if (VlrPago > VlrTotal) AND (Tabelas.mt_payment.FieldByName('id').AsInteger <> 1) then
  begin
    ShowMessage('O valor pago dever ser igual ao valor a pagar!');
    Exit;
  end;

  frmCadastroPedido.FDesconto := Desc;
  frmCadastroPedido.FAcrescimo := Acres;
  frmCadastroPedido.FPaymentID := Tabelas.mt_payment.FieldByName('id').AsInteger;
  frmCadastroPedido.FValorPago := VlrPago;
  frmCadastroPedido.FTroco := VlrPago - VlrTotal;

  frmCadastroPedido.lbDesconto.Caption := 'R$ '+FormatFloat('#,0.00',Desc);
  frmCadastroPedido.lbAcrescimo.Caption := 'R$ '+FormatFloat('#,0.00',Acres);
  frmCadastroPedido.lbDescPagamento.Caption := Tabelas.mt_payment.FieldByName('name').AsString;
  frmCadastroPedido.lbValorPago.Caption := 'R$ '+FormatFloat('#,0.00',VlrPago);

  frmCadastroPedido.AtualizaValores;

  Close;
end;

procedure TfrmConsultaPagamento.cbTipoKeyPress(Sender: TObject;
  var Key: Char);
begin
  key := #0;
end;

procedure TfrmConsultaPagamento.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    edtDesconto.SetFocus;
    key := #0;
  end;
end;

procedure TfrmConsultaPagamento.edtAcrescimoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    edtDesconto.SetFocus;
    key := #0;
  end;
end;

procedure TfrmConsultaPagamento.edtDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    edtValorPago.SetFocus;
    key := #0;
  end;
end;

procedure TfrmConsultaPagamento.edtValorPagoChange(Sender: TObject);
begin
  Formatar(TEdit(Sender),TFormato.Valor);
  UpdateValorTotalVisual;
end;

procedure TfrmConsultaPagamento.edtValorPagoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    btConfirma.Click;
    key := #0;
  end;
end;

procedure TfrmConsultaPagamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_f9 then
    btConfirma.Click;
end;

procedure TfrmConsultaPagamento.FormShow(Sender: TObject);
var
  TotalPagar : Double;
begin
  TotalPagar := frmCadastroPedido.FSubTotal +
                frmCadastroPedido.FAcrescimo +
                frmCadastroPedido.FTaxaEntrega -
                frmCadastroPedido.FDesconto;

  lbValorTotal.Caption := FormatFloat('#,0.00',TotalPagar);
  edtDesconto.Text := FormatFloat('#,0.00',frmCadastroPedido.FDesconto);
  edtAcrescimo.Text := FormatFloat('#,0.00',frmCadastroPedido.FAcrescimo);
  edtValorPago.Text := FormatFloat('#,0.00',frmCadastroPedido.FValorPago);

  if frmCadastroPedido.FValorPago = 0 then
    edtValorPago.Text := FormatFloat('#,0.00',frmCadastroPedido.FValorTotal);

  edtValorPago.SetFocus;
end;

end.
