object frmPerguntaQtdPrint: TfrmPerguntaQtdPrint
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Impress'#227'o'
  ClientHeight = 122
  ClientWidth = 233
  Color = 16242628
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 214
    Height = 25
    Caption = 'N'#250'mero de impress'#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11762436
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object rb1: TRadioButton
    Left = 73
    Top = 50
    Width = 25
    Height = 17
    Cursor = crHandPoint
    Caption = '1'
    TabOrder = 0
  end
  object rb2: TRadioButton
    Left = 145
    Top = 50
    Width = 25
    Height = 17
    Cursor = crHandPoint
    Caption = '2'
    Checked = True
    TabOrder = 1
    TabStop = True
  end
  object pnConfirmar: TPanel
    Left = 45
    Top = 78
    Width = 145
    Height = 35
    Cursor = crHandPoint
    BevelOuter = bvNone
    TabOrder = 2
    object imgConfirmar: TImage
      Left = 0
      Top = 0
      Width = 145
      Height = 35
      Cursor = crHandPoint
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000910000
        0023080600000094DAE85D000000097048597300000B1300000B1301009A9C18
        000001BB4944415478DAEDDCCD2B44511CC6F1734959280B2F2B2B4B89254519
        4B3BC48EBF8195FC0966C7DFC08EB0B344512C499656565E16CA427919CFE93A
        75EF1DE39A39E9CCCDF7534F3163F19B7A1A75CF4B54A9540CE023CA295197B2
        A84C29FD4A9FD21E7A68FCB917E556B9510E944DE5B1D61FD72A519BB2A2AC2A
        1DA13F11827B56D694B2F2967DF3BB12752B7BCA78E8C9D1744E9419E521F962
        B6449DCAB1321C7A5A34AD0B654279722F644BB46BE2A6013FB1FFA966DD2FC9
        12CD29DBA1A74361CC2B3BF60757A248B95206424F86C2B85606958A2B514939
        0C3D150A67523972255A5796424F84C2D950965D89CE9491D013A170CE955157
        A27B133F1F02EA619F17F5B812BD2B2DA12742E17C28ADAE44ACC2A251112582
        2F4A046F9408DE2811BC512278A344F04689E08D12C15BC4136BF8483DB166ED
        0C8D48AD9DB18A8F46A456F1D94F8446A4F613950C3B1B51BFD4CE46F658A35E
        557BAC2D4E7BA01E55A73D1CCE9DE1376A9E3BB338018B3CB927602DFBBC685F
        190B3D2D9ACEA9326D72CEE23BDC0A82247B2B48F92BAFD937F3EE27B2DF4A0B
        26BE9F6848E9352C8FFC077639E34EB934F1FD445B26F3ED9394572220D72785
        99B3BBADF8CFA70000000049454E44AE426082}
      OnClick = btConfirmarClick
    end
    object lbConfirmar: TLabel
      Left = 0
      Top = 7
      Width = 145
      Height = 20
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btConfirmarClick
    end
    object btConfirmar: TBitBtn
      Left = -5000
      Top = -6
      Width = 121
      Height = 41
      Cursor = crHandPoint
      Caption = 'Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = btConfirmarClick
    end
  end
end
