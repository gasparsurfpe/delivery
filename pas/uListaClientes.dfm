object frmConsultaCliente: TfrmConsultaCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 467
  ClientWidth = 756
  Color = 16242628
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object lbResult: TLabel
    Left = 1000
    Top = 216
    Width = 537
    Height = 45
    Caption = 'Nenhum registro encontrado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11762436
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lbAtalhoCliente: TLabel
    Left = 804
    Top = 144
    Width = 161
    Height = 19
    Cursor = crHandPoint
    Caption = 'Criar um novo registro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11762436
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    Visible = False
    OnClick = lbAtalhoClienteClick
  end
  object grdListaClientes: TDBGrid
    Left = 8
    Top = 87
    Width = 554
    Height = 226
    DataSource = Tabelas.DSmt_client
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = grdListaClientesCellClick
    OnKeyPress = grdListaClientesKeyPress
    OnKeyUp = grdListaClientesKeyUp
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
        Width = 277
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'obs'
        Title.Caption = 'Observa'#231#245'es'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object pnTopo: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 48
    BevelOuter = bvNone
    Color = 11762436
    ParentBackground = False
    TabOrder = 1
    object imgVoltar: TImage
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
      OnClick = imgVoltarClick
    end
    object lbTitulo: TLabel
      Left = 54
      Top = 6
      Width = 698
      Height = 35
      Alignment = taCenter
      AutoSize = False
      Caption = 'Procurar clientes'
      Color = 1380795
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object edtBusca: TEdit
    Left = 8
    Top = 54
    Width = 649
    Height = 24
    TabOrder = 2
    TextHint = 
      'Digite o local, rua, n'#250'mero, bairro, complemento, refer'#234'ncia, te' +
      'lefone ou nome do cliente'
    OnKeyPress = edtBuscaKeyPress
  end
  object grdEndereco: TDBGrid
    Left = 7
    Top = 319
    Width = 741
    Height = 98
    DataSource = Tabelas.DSmt_client_address
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = grdListaClientesKeyPress
    OnKeyUp = grdListaClientesKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'address'
        Title.Caption = 'Endere'#231'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 449
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'district_name'
        Title.Caption = 'Bairro'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 254
        Visible = True
      end>
  end
  object grdTelefone: TDBGrid
    Left = 568
    Top = 85
    Width = 180
    Height = 228
    DataSource = Tabelas.DSmt_client_phone
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
    OnKeyPress = grdListaClientesKeyPress
    OnKeyUp = grdListaClientesKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'phone'
        Title.Caption = 'Telefone'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 142
        Visible = True
      end>
  end
  object pnAdicionar: TPanel
    Left = 305
    Top = 425
    Width = 145
    Height = 35
    BevelOuter = bvNone
    TabOrder = 5
    object imgAdicionar: TImage
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
      OnClick = btAdicionarClick
    end
    object lbAdicionar: TLabel
      Left = 0
      Top = 7
      Width = 145
      Height = 20
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btAdicionarClick
    end
    object btAdicionar: TBitBtn
      Left = -5000
      Top = 9
      Width = 88
      Height = 26
      Cursor = crHandPoint
      Caption = '  Confirmar (F9)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        B6080000424DB608000000000000360000002800000016000000200000000100
        18000000000080080000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFC8C8C84646460B0B0B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0B0B0B484848CACACAFFFFFF0000C3C3C3060606000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000060606C6C6C600003E3E3E0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000414141000007070700000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000909090000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002020200000808
        0800000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000D0D0D
        00001F1F1F000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0025252500004848480000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000004E4E4E000083838300000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000008888880000D5D5D5000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000D8D8D80000FFFFFF4E4E4E0000000000000000
        0000000000000000000000000004040423232323232303030300000000000000
        0000000000000000000000000000505050FFFFFF0000FFFFFFE2E2E21A1A1A00
        00000000000000000000003A3A3AADADADF5F5F5FFFFFFFFFFFFF4F4F4ABABAB
        3838380000000000000000000000001B1B1BE4E4E4FFFFFFF45EFFFFFFFFFFFF
        E4E4E46060601212121111119B9B9BF5F5F58989892F2F2F0606060606063030
        308C8C8CF6F6F6999999111111131313636363E6E6E6FFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E12A2A2A00000000000000000000
        00000000000000002E2E2EE4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F52A2A2A000000000000000000
        0000000000000000000000000000002E2E2EF7F7F7FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8787870000000000000000
        000000000000000000000000000000000000000000008C8C8CFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D2D2D00000000
        0000000000000000000000000000000000000000000000000000303030FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404
        0000000000000000000000000000000000000000000000000000000000000606
        06FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF05050500000000000000000000000000000000000000000000000000000000
        0000060606FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF2D2D2D000000000000000000000000000000000000000000000000
        0000000000002F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF8686860000000000000000000000000000000000000000
        00000000000000000000898989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F427272700000000000000000000000000
        00000000000000000000002A2A2AF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF262626000000000000
        0000000000000000000000002A2A2AE1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F48484
        842C2C2C0404040404042D2D2D878787F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = btAdicionarClick
    end
  end
  object pnBuscar: TPanel
    Left = 665
    Top = 54
    Width = 75
    Height = 25
    BevelOuter = bvNone
    TabOrder = 6
    object imgBuscar: TImage
      Left = 0
      Top = 0
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D494844520000004B0000
        001908060000007908D316000000097048597300000B1300000B1301009A9C18
        0000017E4944415478DAED993D2F045114866724BB85464122626950129D4610
        058D52A1A0E50FB09552C3FA03B4140A3A0D85906874A2B60A1F4142A15198C4
        786E7199D99DAF02E716E7499E62EE4C71E6CDCC9D7BCFF861187A4A317C1356
        69F530EDFC30CEE328F66227B64817FD8B7CE233DEE239EEE265D285C1DA4C6A
        5815DCC039F4A5EFE81F31AFD91E56F13E7A222DAC713CC076E9CA0579C5593C
        B50349618DE009B64A57EB00EF388917E6A031AC0EBCC22EE92A1DE21187F0A5
        31AC2D5C94AECE41B671291A9699D0EB5896AECC413EB09FB0EE6C58CB0CD4A4
        AB729815C2DAB4611D3130255D91C31C13D6B40DCBAC29BAA52B729807C2AAD8
        B0CC7B5992AEC86102C22ADBB07483980361F9FA641523F664E99C954D6CCED2
        AF6136B1AFA1AEB3B2A912562DBA82BFF174DE4A22C0BEE80ADE0CEADE3099A6
        BDA119D4AE43334F38E825741D0CDACFFA21B39F6599C07D4F3BA5B99D524B0F
        AE7BDA83FF262B2C8BF9BBB3806338806DD277F307BCE1359EE18E97F7774729
        C617B440CFCF1F742EFE0000000049454E44AE426082}
      OnClick = btBuscarClick
    end
    object lbBuscar: TLabel
      Left = 0
      Top = 3
      Width = 75
      Height = 20
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btBuscarClick
    end
    object btBuscar: TBitBtn
      Left = -5000
      Top = -1
      Width = 88
      Height = 26
      Cursor = crHandPoint
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = btBuscarClick
    end
  end
end
