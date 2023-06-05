unit Requisicao;

interface

uses IdTCPClient, IdHTTP, system.Classes;

type
  TRequisicao = class(TObject)
  public
  var
    HTTP: TIdHTTP;
    constructor create();
    function GET(servico: string): string;
    function DELETE(servico: string): string;
    function PUT(servico: string; paramter: TStringStream): string;
    function POST(servico : string;paramter : TStringList):string;
  end;

implementation

{ TRequisicao }

constructor TRequisicao.create;
begin
  HTTP := TIdHTTP.create(nil);
end;

function TRequisicao.GET(servico: string): string;
begin
HTTP.Request.UserAgent :=
      'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0';
  result := HTTP.GET(servico);
end;

function TRequisicao.POST(servico: string; paramter: TStringList): string;
begin
HTTP.Request.UserAgent :=
      'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0';
   result := HTTP.Post(servico, paramter);
end;

function TRequisicao.PUT(servico: string; paramter: TStringStream): string;
begin
HTTP.Request.UserAgent :=
      'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0';
  HTTP.Request.ContentType := 'application/x-www-form-urlencoded';
  result := HTTP.PUT(servico, paramter);

end;

function TRequisicao.DELETE(servico: string): string;
begin
HTTP.Request.UserAgent :=
      'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0';
  result := HTTP.DELETE(servico);
end;

end.
