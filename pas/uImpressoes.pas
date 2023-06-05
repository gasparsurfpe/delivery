unit uImpressoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmImpressoes = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rpLbNomeEmpresa: TRLLabel;
    rpLbLogradouro: TRLLabel;
    rpLbBairro: TRLLabel;
    rpLbWhatsApp: TRLLabel;
    rpLbTelefone: TRLLabel;
    RLLabel1: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpressoes: TfrmImpressoes;

implementation

{$R *.dfm}

end.
