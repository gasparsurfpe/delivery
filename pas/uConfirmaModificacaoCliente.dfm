object frmConfirmaModifacaoCliente: TfrmConfirmaModifacaoCliente
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Aten'#231#227'o'
  ClientHeight = 336
  ClientWidth = 441
  Color = 16242628
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 17
  object gbDados: TGroupBox
    Left = 8
    Top = 8
    Width = 425
    Height = 89
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 16
      Top = 11
      Width = 248
      Height = 25
      Caption = 'Atualizar nome do cliente?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object rbClientNameYes: TRadioButton
      Left = 24
      Top = 56
      Width = 41
      Height = 17
      Caption = 'Sim'
      TabOrder = 0
    end
    object rbClientNameNo: TRadioButton
      Left = 88
      Top = 56
      Width = 41
      Height = 17
      Caption = 'N'#227'o'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
  end
  object gbEndereco: TGroupBox
    Left = 8
    Top = 198
    Width = 425
    Height = 89
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label2: TLabel
      Left = 16
      Top = 11
      Width = 396
      Height = 25
      Caption = 'Endere'#231'o modificado. O que deseja fazer?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object rbClientAddressUpdate: TRadioButton
      Left = 24
      Top = 56
      Width = 105
      Height = 17
      Caption = 'Atualizar'
      TabOrder = 0
    end
    object rbClientAddressAdd: TRadioButton
      Left = 144
      Top = 56
      Width = 73
      Height = 17
      Caption = 'Adicionar'
      TabOrder = 1
    end
    object rbClientAddressNo: TRadioButton
      Left = 256
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Nada a fazer'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
  end
  object gbTelefone: TGroupBox
    Left = 8
    Top = 103
    Width = 425
    Height = 89
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object Label3: TLabel
      Left = 16
      Top = 11
      Width = 389
      Height = 25
      Caption = 'Telefone modificado. O que deseja fazer?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object rbClientPhoneUpdate: TRadioButton
      Left = 24
      Top = 56
      Width = 105
      Height = 17
      Caption = 'Atualizar'
      TabOrder = 0
    end
    object rbClientPhoneAdd: TRadioButton
      Left = 144
      Top = 56
      Width = 73
      Height = 17
      Caption = 'Adicionar'
      TabOrder = 1
    end
    object rbClientPhoneNo: TRadioButton
      Left = 256
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Nada a fazer'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
  end
  object pnConfirma: TPanel
    Left = 151
    Top = 295
    Width = 145
    Height = 35
    BevelOuter = bvNone
    TabOrder = 3
    object imgConfirma: TImage
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
      OnClick = btConfirmaClick
    end
    object lbConfirma: TLabel
      Left = 0
      Top = 7
      Width = 145
      Height = 20
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btConfirmaClick
    end
    object btConfirma: TBitBtn
      Left = -5000
      Top = 4
      Width = 73
      Height = 31
      Cursor = crHandPoint
      Caption = 'Confirmar (F9)'
      TabOrder = 0
      Visible = False
      OnClick = btConfirmaClick
    end
  end
end
