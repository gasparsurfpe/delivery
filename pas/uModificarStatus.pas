unit uModificarStatus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmModificaStatus = class(TForm)
    Label5: TLabel;
    cbStatusPedido: TComboBox;
    mmMsgAdicional: TMemo;
    Label1: TLabel;
    pnConfirma: TPanel;
    imgConfirma: TImage;
    lbConfirma: TLabel;
    btConfirma: TBitBtn;
    cbNotificar: TCheckBox;
    Label3: TLabel;
    procedure Label3Click(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModificaStatus: TfrmModificaStatus;

implementation

{$R *.dfm}

uses uCadastroPedido;

procedure TfrmModificaStatus.btConfirmaClick(Sender: TObject);
begin
  frmCadastroPedido.FMsgAdicional := mmMsgAdicional.Lines.Text;
  frmCadastroPedido.lbStatusPedido.Caption := cbStatusPedido.Text;
  frmCadastroPedido.FNotificar := cbNotificar.Checked;

  if frmCadastroPedido.lbStatusPedido.Caption = 'Pendente' then begin
    frmCadastroPedido.pnFaixaStatus.Color := clGray;
    frmCadastroPedido.lbStatusPedido.Font.Color := $003A3A3A;
  end else if frmCadastroPedido.lbStatusPedido.Caption = 'Em preparo' then begin
    frmCadastroPedido.pnFaixaStatus.Color := clYellow; //$001A85A8
    frmCadastroPedido.lbStatusPedido.Font.Color := $000B827E;
  end else if frmCadastroPedido.lbStatusPedido.Caption = 'Pronto' then begin
    frmCadastroPedido.pnFaixaStatus.Color := $0000C400;
    frmCadastroPedido.lbStatusPedido.Font.Color := $00005900;
  end else if frmCadastroPedido.lbStatusPedido.Caption = 'Saiu para entrega' then begin
    frmCadastroPedido.pnFaixaStatus.Color := $00FF8000;
    frmCadastroPedido.lbStatusPedido.Font.Color := $006A3500;
  end else if frmCadastroPedido.lbStatusPedido.Caption = 'Entregue' then begin
    frmCadastroPedido.pnFaixaStatus.Color := clGreen;
    frmCadastroPedido.lbStatusPedido.Font.Color := $00003700;
  end else if POS('Cancelado',frmCadastroPedido.lbStatusPedido.Caption) > 0  then begin
    frmCadastroPedido.pnFaixaStatus.Color := clRed;
    frmCadastroPedido.lbStatusPedido.Font.Color := $0000006C;
  end;

  Close;
end;

procedure TfrmModificaStatus.Label3Click(Sender: TObject);
begin
  if cbNotificar.Checked then
    cbNotificar.Checked := false
  else
    cbNotificar.Checked := true;
end;

end.
