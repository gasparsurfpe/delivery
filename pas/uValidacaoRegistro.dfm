object frmValidacaoRegistro: TfrmValidacaoRegistro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Valida'#231#227'o de Registro'
  ClientHeight = 234
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 310
    Height = 18
    Caption = 'Ligue para o suporte e informe a chave abaixo:'
  end
  object Label2: TLabel
    Left = 16
    Top = 112
    Width = 334
    Height = 18
    Caption = 'Digite a chave de libera'#231#227'o informada pelo suporte:'
  end
  object edtCodigo: TEdit
    Left = 16
    Top = 48
    Width = 497
    Height = 26
    TabOrder = 0
  end
  object edtChaveLiberacao: TEdit
    Left = 16
    Top = 136
    Width = 497
    Height = 26
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 192
    Width = 129
    Height = 26
    Caption = 'Liberar registro'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
