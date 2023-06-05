unit uNotificacaoPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmNotificacaoPedido = class(TForm)
    Label100: TLabel;
    pnRecusar: TPanel;
    pnAceitar: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbTipoSaida: TLabel;
    lbNomeCliente: TLabel;
    lbNumPedido: TLabel;
    lbTelefone: TLabel;
    lbEndereco: TLabel;
    lbBairro: TLabel;
    Label14: TLabel;
    lbFormaPagamento: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotificacaoPedido: TfrmNotificacaoPedido;

implementation

{$R *.dfm}

procedure TfrmNotificacaoPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
