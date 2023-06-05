unit uLoading;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmLoading = class(TForm)
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    FClose : boolean;
    { Public declarations }
  end;

var
  frmLoading: TfrmLoading;

implementation

{$R *.dfm}

procedure TfrmLoading.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not FClose then
    Abort;
end;

procedure TfrmLoading.FormShow(Sender: TObject);
begin
  FClose := false;
end;

end.
