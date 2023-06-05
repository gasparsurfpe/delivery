object frmGeral: TfrmGeral
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Geral'
  ClientHeight = 509
  ClientWidth = 645
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
  object pnWhatsapp: TPanel
    Left = 0
    Top = 104
    Width = 645
    Height = 405
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object pnWpConectar: TPanel
      Left = 490
      Top = 10
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 0
      object ImgWpConectar: TImage
        Left = 0
        Top = 0
        Width = 145
        Height = 35
        Cursor = crHandPoint
        Align = alClient
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
        OnClick = btWpConectarClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbWpConectar: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Conectar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btWpConectarClick
      end
      object btWpConectar: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btWpConectarClick
      end
    end
    object sbWpMsg: TScrollBox
      Left = 10
      Top = 6
      Width = 298
      Height = 387
      BorderStyle = bsNone
      ParentBackground = True
      TabOrder = 1
      OnMouseWheelDown = sbWpMsgMouseWheelDown
      OnMouseWheelUp = sbWpMsgMouseWheelUp
      object Label51: TLabel
        Left = 10
        Top = 10
        Width = 133
        Height = 16
        Caption = 'Mensagem boas vindas'
        Color = 16242628
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label52: TLabel
        Left = 10
        Top = 121
        Width = 107
        Height = 16
        Caption = 'Status em preparo'
        Color = 16242628
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label53: TLabel
        Left = 10
        Top = 230
        Width = 77
        Height = 16
        Caption = 'Status pronto'
        Color = 16242628
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label54: TLabel
        Left = 10
        Top = 342
        Width = 141
        Height = 16
        Caption = 'Status saiu para entrega'
        Color = 16242628
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label55: TLabel
        Left = 10
        Top = 453
        Width = 91
        Height = 16
        Caption = 'Status entregue'
        Color = 16242628
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label56: TLabel
        Left = 10
        Top = 564
        Width = 97
        Height = 16
        Caption = 'Status cancelado'
        Color = 16242628
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object mmWpBemVindo: TMemo
        Left = 10
        Top = 32
        Width = 255
        Height = 81
        Lines.Strings = (
          'mmWpBemVindo')
        TabOrder = 0
      end
      object mmWpPreparo: TMemo
        Left = 10
        Top = 143
        Width = 255
        Height = 81
        Lines.Strings = (
          'Memo1')
        TabOrder = 1
      end
      object mmWpPronto: TMemo
        Left = 10
        Top = 252
        Width = 255
        Height = 81
        Lines.Strings = (
          'Memo1')
        TabOrder = 2
      end
      object mmWpSaiuEntrega: TMemo
        Left = 10
        Top = 364
        Width = 255
        Height = 81
        Lines.Strings = (
          'Memo1')
        TabOrder = 3
      end
      object mmWpEntregue: TMemo
        Left = 10
        Top = 475
        Width = 255
        Height = 81
        Lines.Strings = (
          'Memo1')
        TabOrder = 4
      end
      object mmWpCancelado: TMemo
        Left = 10
        Top = 586
        Width = 255
        Height = 81
        Lines.Strings = (
          'Memo1')
        TabOrder = 5
      end
    end
    object pnWpSalvar: TPanel
      Left = 490
      Top = 358
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 2
      object imgWpSalvar: TImage
        Left = 0
        Top = 0
        Width = 145
        Height = 35
        Cursor = crHandPoint
        Align = alClient
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
        OnClick = btWpSalvarClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbWpSalvar: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btWpSalvarClick
      end
      object btWpSalvar: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btWpSalvarClick
      end
    end
  end
  object pnInformacoes: TPanel
    Left = 0
    Top = 104
    Width = 645
    Height = 405
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 10
      Top = 10
      Width = 148
      Height = 16
      Caption = 'Nome do estabelecimento'
      Color = 16242628
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 66
      Width = 53
      Height = 16
      Caption = 'Endere'#231'o'
      Color = 16242628
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Categoria: TLabel
      Left = 10
      Top = 126
      Width = 34
      Height = 16
      Caption = 'Bairro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 186
      Width = 61
      Height = 16
      Caption = 'Telefone 1'
      Color = 16242628
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 202
      Top = 186
      Width = 61
      Height = 16
      Caption = 'Telefone 2'
      Color = 16242628
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 252
      Width = 122
      Height = 16
      Caption = 'Mensagem no cupom'
      Color = 16242628
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label57: TLabel
      Left = 291
      Top = 252
      Width = 151
      Height = 16
      Caption = 'Hor'#225'rio de Funcionamento'
      Color = 16242628
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object pnInfoSalvar: TPanel
      Left = 250
      Top = 360
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 6
      object imgInfoSalvar: TImage
        Left = 0
        Top = 0
        Width = 145
        Height = 35
        Cursor = crHandPoint
        Align = alClient
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
        OnClick = btInfoSalvarClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbInfoSalvar: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btInfoSalvarClick
      end
      object btInfoSalvar: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btInfoSalvarClick
      end
    end
    object edtNomeEstb: TEdit
      Left = 10
      Top = 32
      Width = 615
      Height = 25
      TabOrder = 0
      TextHint = 'Digite aqui o nome do estabelecimento'
      OnKeyPress = edtNomeEstbKeyPress
    end
    object edtEnderecoEstb: TEdit
      Left = 10
      Top = 88
      Width = 615
      Height = 25
      TabOrder = 1
      TextHint = 'Digite aqui o endere'#231'o do estabelecimento'
      OnKeyPress = edtEnderecoEstbKeyPress
    end
    object cbBairro: TDBLookupComboBox
      Left = 10
      Top = 148
      Width = 359
      Height = 25
      KeyField = 'id'
      ListField = 'name'
      ListSource = Tabelas.DSmt_district
      TabOrder = 2
      OnKeyPress = cbBairroKeyPress
    end
    object edtTelefone1: TEdit
      Left = 10
      Top = 208
      Width = 167
      Height = 25
      TabOrder = 3
      OnChange = edtTelefone1Change
      OnKeyPress = edtTelefone1KeyPress
    end
    object edtTelefone2: TEdit
      Left = 202
      Top = 208
      Width = 167
      Height = 25
      TabOrder = 4
      OnChange = edtTelefone1Change
      OnKeyPress = edtTelefone2KeyPress
    end
    object edtMsgCupom: TEdit
      Left = 10
      Top = 274
      Width = 265
      Height = 25
      TabOrder = 5
      TextHint = 'Digite aqui a mensagem final do cupom'
      OnKeyPress = edtMsgCupomKeyPress
    end
    object edtHorarioFunc: TEdit
      Left = 291
      Top = 274
      Width = 334
      Height = 25
      TabOrder = 7
      TextHint = 'Digite aqui o hor'#225'rio de funcionamento'
      OnKeyPress = edtHorarioFuncKeyPress
    end
  end
  object pnTopo: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Color = 11762436
    ParentBackground = False
    TabOrder = 0
    object lbTitulo: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 639
      Height = 39
      Margins.Top = 6
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Geral'
      Color = 1380795
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 84
      ExplicitWidth = 643
      ExplicitHeight = 35
    end
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 48
      Height = 48
      Cursor = crHandPoint
      Hint = 'Voltar'
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
        003008060000005702F987000000097048597300000B1300000B1301009A9C18
        000000A64944415478DAEDD8CB0D80300C0350B2FFD0E5CAA1A212C4762CD90B
        C44FA2F4536BADCB391540000104104000CE09401D05E039B0DC00BB61BF104C
        C0DBA0CF0816E034643400569E0180964703E0E591004A791480561E01A096EF
        06D0CB770224E5BB00B2F20C00B47C001310ACBFD0E8452C45B077E2D11B9904
        A13A8D8E3ECC5111EA1BD9E80B0D0591578926840D6087B0F98476089B450C4B
        00EA04A04E00EAD8036E75C7ABA116B60E6E0000000049454E44AE426082}
      ShowHint = True
      OnClick = Image1Click
    end
  end
  object pnMenusButton: TPanel
    Left = 0
    Top = 48
    Width = 645
    Height = 56
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object sp1: TShape
      AlignWithMargins = True
      Left = 10
      Top = 55
      Width = 625
      Height = 1
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alBottom
      Pen.Color = 11762436
      ExplicitWidth = 640
    end
    object imgBtEmpty: TImage
      Left = -4992
      Top = 22
      Width = 49
      Height = 27
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000910000
        0023080600000094DAE85D000000097048597300000B1300000B1301009A9C18
        0000024E4944415478DAED9C3B6814511486EFFA00ED6C62D4541A2460E1A35A
        51EC2C2268A1518B7462DA6CE11B2CB4B1F011456D45AD6C7C41526861A960C0
        421BC12251507CC4C6CE4034EB771CAFCECE3AFBE0C2DE1DF27FF0EDC0CC1467
        E167E7CEDE7B6EA95AAD3A2142283509D16A3C848338802B63172C3AC60CBEC1
        C7780B3FE5DD9817A26578160FE33D7C88AFF04BEC6F263A462F6EC2BD78006F
        B82413B3D91BFF17A235388E6FB1E21A24502C18EC89740DD7E11EFC98BE980D
        D10A7C8E0FF0346AC0243C253C87FB702B7EFB7B2113A2BBF80E8FC7AE58742D
        17712DEEF727D2211AC6A358C61FB12B155DCB129CC431BC63277C8816B96424
        6E63A047B1AB145DCF2E978C91EC8D7DDE8768275EC2CDB1AB1385E1251EC327
        3E44D7F1039E8F5D99280C27B10F2B3E44F68CB3F1D0D3D89589C2B01D2F63D9
        87E82B6EF87314A2157AF0B51D7D887EE2529C8F5D99280CF63236878B7D88EC
        A314BB2A51387EE74621122128442218854804A31089601422118C4224825188
        44300A9108A62644FAC75AB44BDD3FD69A3B13ED52377766B3F847F059ECCA44
        61D886575C6A16DFD613BDC70BB12B1385A16E3D91AD6CB405D85B6257260AC3
        0B3CE5522B1BFD1AEB5197743C0AD1881D78D365D6581BEAF610AD60DD1ED69B
        68AB1A6BBA3D3CD6323D8D2762572ABA161B37F7E3903F91D7017BDF251DB042
        A4B10E580B4FC30E58C37AF12770CA257D689F63572EA2B30AAFE27ADCED9AF4
        E27B96E3191C71496BB576055978D8AE201B5DD27B7FD0FDDB15E47BF646ED4F
        24F248EF4F74DB657E7DD2340B91104DF90555EAD9BBDE07A7D9000000004945
        4E44AE426082}
      Visible = False
    end
    object imgBtFull: TImage
      Left = -5000
      Top = 14
      Width = 49
      Height = 27
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
      Visible = False
    end
    object pnBtWp: TPanel
      Left = 10
      Top = 12
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 0
      object imgBtWp: TImage
        Left = 0
        Top = 0
        Width = 145
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000910000
          0023080600000094DAE85D000000097048597300000B1300000B1301009A9C18
          0000024E4944415478DAED9C3B6814511486EFFA00ED6C62D4541A2460E1A35A
          51EC2C2268A1518B7462DA6CE11B2CB4B1F011456D45AD6C7C41526861A960C0
          421BC12251507CC4C6CE4034EB771CAFCECE3AFBE0C2DE1DF27FF0EDC0CC1467
          E167E7CEDE7B6EA95AAD3A2142283509D16A3C848338802B63172C3AC60CBEC1
          C7780B3FE5DD9817A26578160FE33D7C88AFF04BEC6F263A462F6EC2BD78006F
          B82413B3D91BFF17A235388E6FB1E21A24502C18EC89740DD7E11EFC98BE980D
          D10A7C8E0FF0346AC0243C253C87FB702B7EFB7B2113A2BBF80E8FC7AE58742D
          17712DEEF727D2211AC6A358C61FB12B155DCB129CC431BC63277C8816B96424
          6E63A047B1AB145DCF2E978C91EC8D7DDE8768275EC2CDB1AB1385E1251EC327
          3E44D7F1039E8F5D99280C27B10F2B3E44F68CB3F1D0D3D89589C2B01D2F63D9
          87E82B6EF87314A2157AF0B51D7D887EE2529C8F5D99280CF63236878B7D88EC
          A314BB2A51387EE74621122128442218854804A31089601422118C4224825188
          44300A9108A62644FAC75AB44BDD3FD69A3B13ED52377766B3F847F059ECCA44
          61D886575C6A16DFD613BDC70BB12B1385A16E3D91AD6CB405D85B6257260AC3
          0B3CE5522B1BFD1AEB5197743C0AD1881D78D365D6581BEAF610AD60DD1ED69B
          68AB1A6BBA3D3CD6323D8D2762572ABA161B37F7E3903F91D7017BDF251DB042
          A4B10E580B4FC30E58C37AF12770CA257D689F63572EA2B30AAFE27ADCED9AF4
          E27B96E3191C71496BB576055978D8AE201B5DD27B7FD0FDDB15E47BF646ED4F
          24F248EF4F74DB657E7DD2340B91104DF90555EAD9BBDE07A7D9000000004945
          4E44AE426082}
        OnClick = btBtWpClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbBtWp: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Whatsapp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBtWpClick
      end
      object btBtWp: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btBtWpClick
      end
    end
    object pnBtInfo: TPanel
      Left = 170
      Top = 12
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 1
      object imgBtInfo: TImage
        Left = 0
        Top = 0
        Width = 145
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000910000
          0023080600000094DAE85D000000097048597300000B1300000B1301009A9C18
          0000024E4944415478DAED9C3B6814511486EFFA00ED6C62D4541A2460E1A35A
          51EC2C2268A1518B7462DA6CE11B2CB4B1F011456D45AD6C7C41526861A960C0
          421BC12251507CC4C6CE4034EB771CAFCECE3AFBE0C2DE1DF27FF0EDC0CC1467
          E167E7CEDE7B6EA95AAD3A2142283509D16A3C848338802B63172C3AC60CBEC1
          C7780B3FE5DD9817A26578160FE33D7C88AFF04BEC6F263A462F6EC2BD78006F
          B82413B3D91BFF17A235388E6FB1E21A24502C18EC89740DD7E11EFC98BE980D
          D10A7C8E0FF0346AC0243C253C87FB702B7EFB7B2113A2BBF80E8FC7AE58742D
          17712DEEF727D2211AC6A358C61FB12B155DCB129CC431BC63277C8816B96424
          6E63A047B1AB145DCF2E978C91EC8D7DDE8768275EC2CDB1AB1385E1251EC327
          3E44D7F1039E8F5D99280C27B10F2B3E44F68CB3F1D0D3D89589C2B01D2F63D9
          87E82B6EF87314A2157AF0B51D7D887EE2529C8F5D99280CF63236878B7D88EC
          A314BB2A51387EE74621122128442218854804A31089601422118C4224825188
          44300A9108A62644FAC75AB44BDD3FD69A3B13ED52377766B3F847F059ECCA44
          61D886575C6A16DFD613BDC70BB12B1385A16E3D91AD6CB405D85B6257260AC3
          0B3CE5522B1BFD1AEB5197743C0AD1881D78D365D6581BEAF610AD60DD1ED69B
          68AB1A6BBA3D3CD6323D8D2762572ABA161B37F7E3903F91D7017BDF251DB042
          A4B10E580B4FC30E58C37AF12770CA257D689F63572EA2B30AAFE27ADCED9AF4
          E27B96E3191C71496BB576055978D8AE201B5DD27B7FD0FDDB15E47BF646ED4F
          24F248EF4F74DB657E7DD2340B91104DF90555EAD9BBDE07A7D9000000004945
          4E44AE426082}
        OnClick = btBtInfoClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbBtInfo: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Informa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBtInfoClick
      end
      object btBtInfo: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btBtInfoClick
      end
    end
    object pnBtOperator: TPanel
      Left = 330
      Top = 12
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 2
      object imgBtOperator: TImage
        Left = 0
        Top = 0
        Width = 145
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000910000
          0023080600000094DAE85D000000097048597300000B1300000B1301009A9C18
          0000024E4944415478DAED9C3B6814511486EFFA00ED6C62D4541A2460E1A35A
          51EC2C2268A1518B7462DA6CE11B2CB4B1F011456D45AD6C7C41526861A960C0
          421BC12251507CC4C6CE4034EB771CAFCECE3AFBE0C2DE1DF27FF0EDC0CC1467
          E167E7CEDE7B6EA95AAD3A2142283509D16A3C848338802B63172C3AC60CBEC1
          C7780B3FE5DD9817A26578160FE33D7C88AFF04BEC6F263A462F6EC2BD78006F
          B82413B3D91BFF17A235388E6FB1E21A24502C18EC89740DD7E11EFC98BE980D
          D10A7C8E0FF0346AC0243C253C87FB702B7EFB7B2113A2BBF80E8FC7AE58742D
          17712DEEF727D2211AC6A358C61FB12B155DCB129CC431BC63277C8816B96424
          6E63A047B1AB145DCF2E978C91EC8D7DDE8768275EC2CDB1AB1385E1251EC327
          3E44D7F1039E8F5D99280C27B10F2B3E44F68CB3F1D0D3D89589C2B01D2F63D9
          87E82B6EF87314A2157AF0B51D7D887EE2529C8F5D99280CF63236878B7D88EC
          A314BB2A51387EE74621122128442218854804A31089601422118C4224825188
          44300A9108A62644FAC75AB44BDD3FD69A3B13ED52377766B3F847F059ECCA44
          61D886575C6A16DFD613BDC70BB12B1385A16E3D91AD6CB405D85B6257260AC3
          0B3CE5522B1BFD1AEB5197743C0AD1881D78D365D6581BEAF610AD60DD1ED69B
          68AB1A6BBA3D3CD6323D8D2762572ABA161B37F7E3903F91D7017BDF251DB042
          A4B10E580B4FC30E58C37AF12770CA257D689F63572EA2B30AAFE27ADCED9AF4
          E27B96E3191C71496BB576055978D8AE201B5DD27B7FD0FDDB15E47BF646ED4F
          24F248EF4F74DB657E7DD2340B91104DF90555EAD9BBDE07A7D9000000004945
          4E44AE426082}
        OnClick = btBtOperatorClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbBtOperator: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Operadores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object btBtOperator: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btBtOperatorClick
      end
    end
    object pnBtCfg: TPanel
      Left = 490
      Top = 12
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 3
      object ImgBtCfg: TImage
        Left = 0
        Top = 0
        Width = 145
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000910000
          0023080600000094DAE85D000000097048597300000B1300000B1301009A9C18
          0000024E4944415478DAED9C3B6814511486EFFA00ED6C62D4541A2460E1A35A
          51EC2C2268A1518B7462DA6CE11B2CB4B1F011456D45AD6C7C41526861A960C0
          421BC12251507CC4C6CE4034EB771CAFCECE3AFBE0C2DE1DF27FF0EDC0CC1467
          E167E7CEDE7B6EA95AAD3A2142283509D16A3C848338802B63172C3AC60CBEC1
          C7780B3FE5DD9817A26578160FE33D7C88AFF04BEC6F263A462F6EC2BD78006F
          B82413B3D91BFF17A235388E6FB1E21A24502C18EC89740DD7E11EFC98BE980D
          D10A7C8E0FF0346AC0243C253C87FB702B7EFB7B2113A2BBF80E8FC7AE58742D
          17712DEEF727D2211AC6A358C61FB12B155DCB129CC431BC63277C8816B96424
          6E63A047B1AB145DCF2E978C91EC8D7DDE8768275EC2CDB1AB1385E1251EC327
          3E44D7F1039E8F5D99280C27B10F2B3E44F68CB3F1D0D3D89589C2B01D2F63D9
          87E82B6EF87314A2157AF0B51D7D887EE2529C8F5D99280CF63236878B7D88EC
          A314BB2A51387EE74621122128442218854804A31089601422118C4224825188
          44300A9108A62644FAC75AB44BDD3FD69A3B13ED52377766B3F847F059ECCA44
          61D886575C6A16DFD613BDC70BB12B1385A16E3D91AD6CB405D85B6257260AC3
          0B3CE5522B1BFD1AEB5197743C0AD1881D78D365D6581BEAF610AD60DD1ED69B
          68AB1A6BBA3D3CD6323D8D2762572ABA161B37F7E3903F91D7017BDF251DB042
          A4B10E580B4FC30E58C37AF12770CA257D689F63572EA2B30AAFE27ADCED9AF4
          E27B96E3191C71496BB576055978D8AE201B5DD27B7FD0FDDB15E47BF646ED4F
          24F248EF4F74DB657E7DD2340B91104DF90555EAD9BBDE07A7D9000000004945
          4E44AE426082}
        OnClick = btBtCfgClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbBtCfg: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Configura'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBtCfgClick
      end
      object btBtCfg: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btBtCfgClick
      end
    end
  end
  object pnOperadores: TPanel
    Left = -5000
    Top = 104
    Width = 645
    Height = 405
    BevelOuter = bvNone
    TabOrder = 4
    Visible = False
    object pnOpNovo: TPanel
      Left = 10
      Top = 360
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 0
      object imgOpNovo: TImage
        Left = 0
        Top = 0
        Width = 145
        Height = 35
        Cursor = crHandPoint
        Align = alClient
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
        OnClick = btOpNovoClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbOpNovo: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Novo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btOpNovoClick
      end
      object btOpNovo: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btOpNovoClick
      end
    end
    object pnOpAlterar: TPanel
      Left = 170
      Top = 360
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 1
      object imgOpAlterar: TImage
        Left = 0
        Top = 0
        Width = 145
        Height = 35
        Cursor = crHandPoint
        Align = alClient
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
        OnClick = btOpAlterarClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbOpAlterar: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btOpAlterarClick
      end
      object btOpAlterar: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btOpAlterarClick
      end
    end
    object pnOpExcluir: TPanel
      Left = 330
      Top = 360
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 2
      object imgOpExcluir: TImage
        Left = 0
        Top = 0
        Width = 145
        Height = 35
        Cursor = crHandPoint
        Align = alClient
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
        OnClick = btOpExcluirClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbOpExcluir: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btOpExcluirClick
      end
      object btOpExcluir: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btOpExcluirClick
      end
    end
    object grdContas: TDBGrid
      Left = 10
      Top = 7
      Width = 625
      Height = 341
      DataSource = Tabelas.DSmt_operator
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'name'
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 331
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'user'
          Title.Caption = 'Usu'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'level'
          Title.Caption = 'N'#237'vel'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 117
          Visible = True
        end>
    end
    object pnOpLevel: TPanel
      Left = -5000
      Top = 0
      Width = 645
      Height = 405
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      object imgOpCheckTrue: TImage
        Left = -5000
        Top = 86
        Width = 40
        Height = 18
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
      end
      object Label6: TLabel
        Left = 10
        Top = 10
        Width = 61
        Height = 17
        Cursor = crHandPoint
        Caption = 'Operador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object imgOpCheckFalse: TImage
        Left = -5000
        Top = 105
        Width = 40
        Height = 18
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001964944415478DACD96BF4EC25014C64F4D931628903A90D4B8AB899B89
          8B0E3AE8C2ACAFA18998E83BF827EA084907147D01075D7581B8A92FE0A43E40
          691B68FD4EF9135030506E43BFE44B692127BF7EDC7BEE917CDFA7384B62C062
          B1D8F75055D5395C2E9ACDE6063CEB79DE0C44B22CF377944C2689EF2794077F
          C135F81EBE86EBBD3FC8E7F37F002500DC3A8EB38BE7D2D0B792244AA7D3A469
          9AC8B018F6183607022A8A22E3F3ABEBBA8BA3564C2412A4EBBA4848D625BC0F
          FB7D8048EEC1B6EDED71AB71926CC12AC0A75DC04AA5B26659D673D80D93CBE5
          82F5295016BC04C08F00B05C2E5791DE6AD86ABC1633998CD008A99560210034
          4DB3DE6834D4B095383D4E51B0DE01B81C00964A257F927EC8BBDA300CD1800E
          00D50EA0F75F5B993A60ECFF626C92176C9295B09552A91465B359D18067003C
          E8B49975B499A7D8B69976A37E448A5BE3568AA8511FC227838EBA371C750BA3
          5689E8A8BB82F7E8F751D7160F0B77181676A6302C7CC347346C58E81520E771
          39C7A8B509EB118D5BAC4FB84AAD71EB865A6BAFAB2E609CF50301CEE0DD2732
          6DDF0000000049454E44AE426082}
      end
      object imgOpClienteVis: TImage
        Tag = 1
        Left = 79
        Top = 123
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object lbOpNome: TLabel
        Left = 78
        Top = 10
        Width = 74
        Height = 17
        Cursor = crHandPoint
        Caption = '<operador>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Shape1: TShape
        AlignWithMargins = True
        Left = 10
        Top = 34
        Width = 625
        Height = 1
        Margins.Left = 10
        Margins.Top = 34
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Pen.Color = 11762436
        ExplicitTop = 70
      end
      object Label8: TLabel
        Left = 10
        Top = 102
        Width = 49
        Height = 17
        Cursor = crHandPoint
        Caption = 'Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label9: TLabel
        Left = 10
        Top = 123
        Width = 55
        Height = 17
        Cursor = crHandPoint
        Caption = 'Visualizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label10: TLabel
        Left = 10
        Top = 146
        Width = 57
        Height = 17
        Cursor = crHandPoint
        Caption = 'Cadastrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label11: TLabel
        Left = 10
        Top = 169
        Width = 39
        Height = 17
        Cursor = crHandPoint
        Caption = 'Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label12: TLabel
        Left = 10
        Top = 192
        Width = 37
        Height = 17
        Cursor = crHandPoint
        Caption = 'Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object imgOpClienteCad: TImage
        Tag = 1
        Left = 79
        Top = 145
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpClienteAlt: TImage
        Tag = 1
        Left = 79
        Top = 168
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpClienteExc: TImage
        Tag = 1
        Left = 79
        Top = 191
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object Label13: TLabel
        Left = 137
        Top = 102
        Width = 43
        Height = 17
        Cursor = crHandPoint
        Caption = 'Bairros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label14: TLabel
        Left = 137
        Top = 123
        Width = 55
        Height = 17
        Cursor = crHandPoint
        Caption = 'Visualizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label15: TLabel
        Left = 137
        Top = 146
        Width = 57
        Height = 17
        Cursor = crHandPoint
        Caption = 'Cadastrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label16: TLabel
        Left = 137
        Top = 169
        Width = 39
        Height = 17
        Cursor = crHandPoint
        Caption = 'Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label17: TLabel
        Left = 137
        Top = 192
        Width = 37
        Height = 17
        Cursor = crHandPoint
        Caption = 'Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object imgOpBairroExc: TImage
        Tag = 1
        Left = 206
        Top = 191
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpBairroAlt: TImage
        Tag = 1
        Left = 206
        Top = 168
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpBairroCad: TImage
        Tag = 1
        Left = 206
        Top = 145
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpBairroVis: TImage
        Tag = 1
        Left = 206
        Top = 123
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object Label18: TLabel
        Left = 266
        Top = 102
        Width = 65
        Height = 17
        Cursor = crHandPoint
        Caption = 'Categorias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label19: TLabel
        Left = 266
        Top = 123
        Width = 55
        Height = 17
        Cursor = crHandPoint
        Caption = 'Visualizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label20: TLabel
        Left = 266
        Top = 146
        Width = 57
        Height = 17
        Cursor = crHandPoint
        Caption = 'Cadastrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label21: TLabel
        Left = 266
        Top = 169
        Width = 39
        Height = 17
        Cursor = crHandPoint
        Caption = 'Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label22: TLabel
        Left = 266
        Top = 192
        Width = 37
        Height = 17
        Cursor = crHandPoint
        Caption = 'Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object imgOpCatgExc: TImage
        Tag = 1
        Left = 335
        Top = 191
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpCatgAlt: TImage
        Tag = 1
        Left = 335
        Top = 168
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpCatgCad: TImage
        Tag = 1
        Left = 335
        Top = 145
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpCatgVis: TImage
        Tag = 1
        Left = 335
        Top = 122
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object Label23: TLabel
        Left = 394
        Top = 102
        Width = 56
        Height = 17
        Cursor = crHandPoint
        Caption = 'Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label24: TLabel
        Left = 394
        Top = 123
        Width = 55
        Height = 17
        Cursor = crHandPoint
        Caption = 'Visualizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label25: TLabel
        Left = 394
        Top = 146
        Width = 57
        Height = 17
        Cursor = crHandPoint
        Caption = 'Cadastrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label26: TLabel
        Left = 394
        Top = 169
        Width = 39
        Height = 17
        Cursor = crHandPoint
        Caption = 'Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label27: TLabel
        Left = 394
        Top = 192
        Width = 37
        Height = 17
        Cursor = crHandPoint
        Caption = 'Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object imgOpProdExc: TImage
        Tag = 1
        Left = 463
        Top = 191
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpProdAlt: TImage
        Tag = 1
        Left = 463
        Top = 168
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpProdCad: TImage
        Tag = 1
        Left = 463
        Top = 145
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpProdVis: TImage
        Tag = 1
        Left = 463
        Top = 122
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object Label28: TLabel
        Left = 521
        Top = 103
        Width = 76
        Height = 17
        Cursor = crHandPoint
        Caption = 'Pagamentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label29: TLabel
        Left = 521
        Top = 124
        Width = 55
        Height = 17
        Cursor = crHandPoint
        Caption = 'Visualizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label30: TLabel
        Left = 521
        Top = 147
        Width = 57
        Height = 17
        Cursor = crHandPoint
        Caption = 'Cadastrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label31: TLabel
        Left = 521
        Top = 170
        Width = 39
        Height = 17
        Cursor = crHandPoint
        Caption = 'Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label32: TLabel
        Left = 521
        Top = 193
        Width = 37
        Height = 17
        Cursor = crHandPoint
        Caption = 'Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object imgOpPagExc: TImage
        Tag = 1
        Left = 590
        Top = 191
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpPagAlt: TImage
        Tag = 1
        Left = 590
        Top = 168
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpPagCad: TImage
        Tag = 1
        Left = 590
        Top = 145
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpPagVis: TImage
        Tag = 1
        Left = 590
        Top = 122
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object Label33: TLabel
        Left = 10
        Top = 230
        Width = 42
        Height = 17
        Cursor = crHandPoint
        Caption = 'Contas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label34: TLabel
        Left = 10
        Top = 251
        Width = 55
        Height = 17
        Cursor = crHandPoint
        Caption = 'Visualizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label35: TLabel
        Left = 10
        Top = 274
        Width = 48
        Height = 17
        Cursor = crHandPoint
        Caption = 'Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label36: TLabel
        Left = 10
        Top = 297
        Width = 50
        Height = 17
        Cursor = crHandPoint
        Caption = 'Detalhes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label37: TLabel
        Left = 10
        Top = 320
        Width = 49
        Height = 17
        Cursor = crHandPoint
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object imgOpContaImp: TImage
        Tag = 1
        Left = 79
        Top = 320
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpContaDet: TImage
        Tag = 1
        Left = 79
        Top = 297
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpContaRec: TImage
        Tag = 1
        Left = 79
        Top = 273
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpContaVis: TImage
        Tag = 1
        Left = 79
        Top = 250
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object Label38: TLabel
        Left = 137
        Top = 230
        Width = 62
        Height = 17
        Cursor = crHandPoint
        Caption = 'Relat'#243'rios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label39: TLabel
        Left = 137
        Top = 251
        Width = 40
        Height = 17
        Cursor = crHandPoint
        Caption = 'Verdas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label40: TLabel
        Left = 137
        Top = 274
        Width = 85
        Height = 17
        Cursor = crHandPoint
        Caption = 'Mais vendidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label41: TLabel
        Left = 137
        Top = 297
        Width = 73
        Height = 17
        Cursor = crHandPoint
        Caption = 'Faturamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object imgOpRepVenda: TImage
        Tag = 1
        Left = 233
        Top = 250
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpRepMaisVend: TImage
        Tag = 1
        Left = 233
        Top = 273
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object imgOpRepFat: TImage
        Tag = 1
        Left = 233
        Top = 297
        Width = 40
        Height = 18
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          00120806000000291F9CA6000000097048597300000B1300000B1301009A9C18
          000001A74944415478DACD96BB4A03511086FFCDAAB9088228C6465F406D2C4C
          6D63E3622D68E3037801ED248528589842F1316CEDD204B5B211A21082F15224
          0103894AAEAB71D7FF902C2461497473C40CFCC5CEEE703E66CECC8E629A267A
          D91401B8747ADEEAF752ABD4223547F9295737077D1A40B2026474205FAD3DF7
          2B303C2A723E1511A66993EFD24D31079A2DE01A75588792624F25205100AA6D
          8AD5A7C01C19C0D98B8E653E9A76800A754C6DC80213A7DCBE03A9CACF638607
          1027C874EE03D556C06D2A240B4E58A208DC177E1F37E64698E55E68049CA43F
          46F964C195BF808B2C6038E84151CA092FE61F76B5880518AA67509AC599B9C7
          A2F378BF1BD7C9A016B000EFE89B92097895AD75AB531B54A1BFED691E0B505C
          63B74CC070A67DD7763217EBACEF6B8A05C85EC3502F0172ECA0DC0018A56F46
          26A0EC124B6F92581E782E398FE7A8B94905B5D93F1B33258E994B896346F877
          A823995914433AE160D4D80D6A0BFC845A970528921765FBA525FDEA2CFB9765
          41E5B230DA61596834711757505BB702D478B79076EB164789E155F12AD62D7E
          B245B864538C05D8CBF60D3DE0F6DD4FA312AD0000000049454E44AE426082}
        OnClick = imgOpClienteVisClick
      end
      object Label42: TLabel
        Left = 10
        Top = 41
        Width = 36
        Height = 17
        Cursor = crHandPoint
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label43: TLabel
        Left = 186
        Top = 41
        Width = 45
        Height = 17
        Cursor = crHandPoint
        Caption = 'Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Label44: TLabel
        Left = 332
        Top = 41
        Width = 35
        Height = 17
        Cursor = crHandPoint
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object Shape2: TShape
        AlignWithMargins = True
        Left = 10
        Top = 347
        Width = 625
        Height = 1
        Margins.Left = 10
        Margins.Top = 34
        Margins.Right = 10
        Margins.Bottom = 0
        Pen.Color = 11762436
      end
      object Label7: TLabel
        Left = 478
        Top = 38
        Width = 35
        Height = 17
        Cursor = crHandPoint
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btBtOperatorClick
      end
      object pnOperatorSalvar: TPanel
        Left = 340
        Top = 360
        Width = 145
        Height = 35
        BevelOuter = bvNone
        TabOrder = 3
        object imgOperatorSalvar: TImage
          Left = 0
          Top = 0
          Width = 145
          Height = 35
          Cursor = crHandPoint
          Align = alClient
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
          OnClick = btOperatorSalvarClick
          ExplicitLeft = 40
          ExplicitTop = 25
        end
        object lbOperatorSalvar: TLabel
          Left = 0
          Top = 9
          Width = 145
          Height = 20
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          Caption = 'Salvar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11762436
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btOperatorSalvarClick
        end
        object btOperatorSalvar: TBitBtn
          Left = -5000
          Top = 8
          Width = 75
          Height = 25
          Caption = 'bt15dias'
          TabOrder = 0
          Visible = False
          OnClick = btOperatorSalvarClick
        end
      end
      object edtOpNome: TEdit
        Left = 10
        Top = 61
        Width = 170
        Height = 25
        TabOrder = 0
        TextHint = 'Digite aqui o nome'
        OnKeyPress = edtOpNomeKeyPress
      end
      object edtOpUsuario: TEdit
        Left = 186
        Top = 61
        Width = 140
        Height = 25
        TabOrder = 1
        TextHint = 'Usu'#225'rio'
        OnKeyPress = edtOpUsuarioKeyPress
      end
      object edtOpSenha: TEdit
        Left = 332
        Top = 61
        Width = 140
        Height = 25
        PasswordChar = '*'
        TabOrder = 2
        TextHint = 'Senha'
        OnKeyPress = edtOpSenhaKeyPress
      end
      object pnOperatorVoltar: TPanel
        Left = 160
        Top = 360
        Width = 145
        Height = 35
        BevelOuter = bvNone
        TabOrder = 4
        object imgOperatorVoltar: TImage
          Left = 0
          Top = 0
          Width = 145
          Height = 35
          Cursor = crHandPoint
          Align = alClient
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
          OnClick = btOperatorVoltarClick
          ExplicitLeft = 40
          ExplicitTop = 25
        end
        object lbOperatorVoltar: TLabel
          Left = 0
          Top = 9
          Width = 145
          Height = 20
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          Caption = 'Voltar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11762436
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btOperatorVoltarClick
        end
        object btOperatorVoltar: TBitBtn
          Left = -5000
          Top = 8
          Width = 75
          Height = 25
          Caption = 'bt15dias'
          TabOrder = 0
          Visible = False
          OnClick = btOperatorVoltarClick
        end
      end
      object cbOpNivel: TComboBox
        Left = 478
        Top = 61
        Width = 157
        Height = 25
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 5
        Text = 'Administrador'
        Items.Strings = (
          'Administrador'
          'Operador')
      end
    end
  end
  object pnConfiguracoes: TPanel
    Left = -5000
    Top = 104
    Width = 645
    Height = 405
    BevelOuter = bvNone
    TabOrder = 5
    Visible = False
    object Label46: TLabel
      Left = 28
      Top = 18
      Width = 140
      Height = 16
      Cursor = crHandPoint
      Caption = 'Pr'#233'-visualizar impress'#227'o'
      Color = 16242628
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      OnClick = Label46Click
    end
    object Label45: TLabel
      Left = 28
      Top = 41
      Width = 75
      Height = 16
      Cursor = crHandPoint
      Caption = 'Usar estoque'
      Color = 16242628
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      OnClick = Label45Click
    end
    object Label47: TLabel
      Left = 46
      Top = 64
      Width = 212
      Height = 16
      Cursor = crHandPoint
      Caption = 'Permitir venda com estoque negativo'
      Color = 16242628
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      OnClick = Label47Click
    end
    object pnConfigSalvar: TPanel
      Left = 250
      Top = 360
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 0
      object imgConfigSalvar: TImage
        Left = 0
        Top = 0
        Width = 145
        Height = 35
        Cursor = crHandPoint
        Align = alClient
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
        OnClick = btConfigSalvarClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbConfigSalvar: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btConfigSalvarClick
      end
      object btConfigSalvar: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btConfigSalvarClick
      end
    end
    object cbPreVisPrint: TCheckBox
      Left = 10
      Top = 18
      Width = 31
      Height = 17
      Cursor = crHandPoint
      TabOrder = 1
    end
    object cbUsaEstoque: TCheckBox
      Left = 10
      Top = 41
      Width = 31
      Height = 17
      Cursor = crHandPoint
      TabOrder = 2
      OnClick = cbUsaEstoqueClick
    end
    object cbPermiteEstoqueNeg: TCheckBox
      Left = 28
      Top = 64
      Width = 31
      Height = 17
      Cursor = crHandPoint
      TabOrder = 3
    end
    object GroupBox1: TGroupBox
      Left = 282
      Top = 6
      Width = 353
      Height = 98
      TabOrder = 4
      object Label48: TLabel
        Left = 8
        Top = 1
        Width = 18
        Height = 16
        Cursor = crHandPoint
        Caption = 'Bot'
        Color = 16242628
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        OnClick = Label46Click
      end
      object Label49: TLabel
        Left = 26
        Top = 44
        Width = 77
        Height = 16
        Cursor = crHandPoint
        Caption = 'Buscar por ID'
        Color = 16242628
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        OnClick = Label49Click
      end
      object Label50: TLabel
        Left = 26
        Top = 21
        Width = 28
        Height = 16
        Cursor = crHandPoint
        Caption = 'Ativo'
        Color = 16242628
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        OnClick = Label50Click
      end
      object cbBotListarID: TCheckBox
        Left = 8
        Top = 44
        Width = 31
        Height = 17
        Cursor = crHandPoint
        TabOrder = 0
      end
      object cbLigaBot: TCheckBox
        Left = 8
        Top = 21
        Width = 31
        Height = 17
        Cursor = crHandPoint
        TabOrder = 1
      end
    end
  end
end
