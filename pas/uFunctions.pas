unit uFunctions;

interface

uses System.SysUtils, Vcl.StdCtrls, Classes, System.MaskUtils;

Function Alltrim(const Search: string): string;
function ConvertJsonToValue(J:String):String;
function IsPhone(N:String):Boolean;
function ConvertWhatsappToNumber(T:String):String;
function AllowOperator(Action:String):Boolean;
function ConvertNumberToWhatsapp(N,Tipo:String):String;

implementation

uses uPermissaoAcesso, uTabelas;

Function Alltrim(const Search: string): string;
{Remove os espaços em branco de ambos os lados da string}
const
BlackSpace = [#33..#126];
var
Index: byte;
begin
Index:=1;
while (Index <= Length(Search)) and not (Search[Index] in BlackSpace) do
       begin
       Index:=Index + 1;
       end;
Result:=Copy(Search, Index, 255);
Index := Length(Result);
while (Index > 0) and not (Result[Index] in BlackSpace) do
       begin
       Index:=Index - 1;
       end;
Result := Copy(Result, 1, Index);
end;

function ConvertJsonToValue(J:String):String;
var
  aux: String;
  x, num: integer;
begin
  aux := J;

  for x := 1 to Length(aux) do begin
    if TryStrToInt(aux[x], num) and (aux[x+1] = '.') and TryStrToInt(aux[x+2], num) then
      aux[x+1] := ',';
  end;

  result := aux;
end;

function IsPhone(N:String):Boolean;
var
  aux: String;
begin
  aux := N;

  aux := StringReplace(aux,'(','',[rfReplaceAll]);
  aux := StringReplace(aux,')','',[rfReplaceAll]);
  aux := StringReplace(aux,'-','',[rfReplaceAll]);
  aux := StringReplace(aux,' ','',[rfReplaceAll]);

  if Length(aux) = 11 then
    result := true
  else
    result := false;
end;

function ConvertWhatsappToNumber(T:String):String;
var
 aux : string;
begin
  aux := T;

  if POS('@',aux) > 0 then
    Delete(aux,POS('@',aux),5);
  if (aux[1] = '5') and (aux[2] = '5') then
    Delete(aux,1,2);
  if (Length(aux) = 10) then
    aux := Copy(aux,1,2)+'9'+Copy(aux,3,Length(aux)-2);

  Result := aux;
end;

function ConvertNumberToWhatsapp(N,Tipo:String):String;
var
 aux, ddd: string;
begin
  aux := N;
  aux := StringReplace(aux,' ','',[rfReplaceAll]);
  aux := StringReplace(aux,'(','',[rfReplaceAll]);
  aux := StringReplace(aux,')','',[rfReplaceAll]);
  aux := StringReplace(aux,'-','',[rfReplaceAll]);
  ddd := Copy(aux,1,2);

  if Tipo = '@' then begin
    if StrToInt(ddd) < 30 then
      aux := '55'+aux+'@c.us'
    else
      aux := '55'+ddd+Copy(aux,4,Length(aux)-3)+'@c.us';
  end else
    aux := '55'+aux;

  Result := aux;
end;

function AllowOperator(Action:String):Boolean;
begin
  frmPermissaoAcesso.FValido := true;

  if Action = 'admin' then begin
    if Tabelas.mt_operator.FieldByName('level').AsString <> 'Administrador' then
      frmPermissaoAcesso.ShowModal;
  end else if (Tabelas.mt_operator.FieldByName('level').AsString <> 'Administrador') and (Tabelas.mt_operator.FieldByName(Action).AsString = 'n') then
    frmPermissaoAcesso.ShowModal;

  Result := frmPermissaoAcesso.FValido;
end;

end.
