unit uPerguntaQtdPrint;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmPerguntaQtdPrint = class(TForm)
    rb1: TRadioButton;
    rb2: TRadioButton;
    Label2: TLabel;
    pnConfirmar: TPanel;
    imgConfirmar: TImage;
    lbConfirmar: TLabel;
    btConfirmar: TBitBtn;
    procedure btConfirmarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPerguntaQtdPrint: TfrmPerguntaQtdPrint;

implementation

{$R *.dfm}

uses uCadastroPedido;

procedure TfrmPerguntaQtdPrint.btConfirmarClick(Sender: TObject);
begin
  if rb1.Checked then
    frmCadastroPedido.FQtdImpressao := 1
  else
    frmCadastroPedido.FQtdImpressao := 2;

  Close;
end;

procedure TfrmPerguntaQtdPrint.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    btConfirmar.Click;
    key := #0;
  end;
end;

end.
