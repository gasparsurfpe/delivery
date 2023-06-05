unit uPerguntaQtd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmPerguntaQtd = class(TForm)
    Label1: TLabel;
    edtQtd: TEdit;
    btnAdicionar: TBitBtn;
    pnAdicionar: TPanel;
    imgAdicionar: TImage;
    lbAdicionar: TLabel;
    procedure FormShow(Sender: TObject);
    procedure edtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure btnAdicionarClick(Sender: TObject);
    procedure edtQtdChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPerguntaQtd: TfrmPerguntaQtd;

implementation

{$R *.dfm}

uses uCadastroPedido, uTabelas, uLIstaProdutos, uFormat;

procedure TfrmPerguntaQtd.btnAdicionarClick(Sender: TObject);
var
  Qtd : Double;
begin
  edtQtd.Text := StringReplace(edtQtd.Text,' ','',[rfReplaceAll]);

  if edtQtd.Text = '' then
    edtQtd.Text := '1';

  if StrToFloat(edtQtd.Text) <= 0 then begin
    ShowMessage('A quantidade deve ser maior que zero!');
    Exit;
  end;

  Qtd := StrToFloat(StringReplace(edtQtd.Text,'.','',[rfReplaceAll]));

  if (Tabelas.mt_settings.FieldByName('block_negative_stock').AsString = 's') and
     (Tabelas.mt_product.FieldByName('qtd').AsFloat < Qtd) then begin
    ShowMessage('Quantidade disponível: '+FormatFloat('#,0.000',Tabelas.mt_product.FieldByName('qtd').AsFloat));
    Exit;
  end;

  try
    frmCadastroPedido.FItem := frmCadastroPedido.FItem + 1;

    frmCadastroPedido.FQtdItens := frmCadastroPedido.FQtdItens + 1;
    frmCadastroPedido.FSubTotal := frmCadastroPedido.FSubTotal + (StrToFloat(StringReplace(edtQtd.Text,'.','',[rfReplaceAll])) * Tabelas.Mt_product.FieldByName('value').AsFloat);

    frmCadastroPedido.cdsCarrinho.Append;
    frmCadastroPedido.cdsCarrinho.FieldByName('id').AsInteger := 0;
    frmCadastroPedido.cdsCarrinho.FieldByName('item').AsInteger := frmCadastroPedido.FItem;
    frmCadastroPedido.cdsCarrinho.FieldByName('product_id').AsInteger:= Tabelas.Mt_product.FieldByName('id').AsInteger;
    frmCadastroPedido.cdsCarrinho.FieldByName('product_name').AsString:= Tabelas.Mt_product.FieldByName('name').AsString;
    frmCadastroPedido.cdsCarrinho.FieldByName('qtd').AsFloat:= Qtd;
    frmCadastroPedido.cdsCarrinho.FieldByName('vlr_unit').AsFloat := Tabelas.Mt_product.FieldByName('value').AsFloat;
    frmCadastroPedido.cdsCarrinho.FieldByName('total').AsFloat:= StrToFloat(StringReplace(edtQtd.Text,'.','',[rfReplaceAll])) * Tabelas.Mt_product.FieldByName('value').AsFloat;
    frmCadastroPedido.cdsCarrinho.Post;

    frmCadastroPedido.lbQtdProdutos.Caption := FloatToStr(frmCadastroPedido.FQtdItens);
    frmCadastroPedido.lbSubTotal.Caption := FormatFloat('R$ #,0.00',frmCadastroPedido.FSubTotal);

    frmCadastroPedido.AtualizaValores;

    if frmCadastroPedido.FModoEdit then
      frmCadastroPedido.FCartModify := true;
  except
    ShowMessage('Ocorreu algum problema');
  end;

  Close;
  frmListaProdutos.Close;
end;

procedure TfrmPerguntaQtd.edtQtdChange(Sender: TObject);
begin
  if Tabelas.mt_product.FieldByName('type_unit').AsString <> 'UN' then
    Formatar(TEdit(Sender), TFormato.Peso);
end;

procedure TfrmPerguntaQtd.edtQtdKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    btnAdicionar.Click;
    key := #0;
  end;
end;

procedure TfrmPerguntaQtd.FormShow(Sender: TObject);
begin
  edtQtd.SetFocus;
end;

end.
