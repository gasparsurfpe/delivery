object frmRelatorios: TfrmRelatorios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rios'
  ClientHeight = 388
  ClientWidth = 777
  Color = 16242628
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 16
  object pnTopo: TPanel
    Left = 0
    Top = 0
    Width = 777
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
      Width = 771
      Height = 39
      Margins.Top = 6
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Relat'#243'rios'
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
  object pnRptVendas: TPanel
    Left = 0
    Top = 48
    Width = 777
    Height = 340
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -5000
    object lbVendasResult: TLabel
      Left = 305
      Top = 208
      Width = 175
      Height = 25
      Caption = 'Nenhum registro'
      Color = 16242628
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 50
      Width = 63
      Height = 16
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 114
      Top = 50
      Width = 57
      Height = 16
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 220
      Top = 50
      Width = 123
      Height = 16
      Caption = 'Forma de pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
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
    object Shape1: TShape
      Left = 10
      Top = 109
      Width = 756
      Height = 1
      Pen.Color = 11762436
    end
    object lbVendaTotalGeral: TLabel
      Left = 724
      Top = 303
      Width = 42
      Height = 30
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbTitleVendaTotalGeral: TLabel
      Left = 615
      Top = 303
      Width = 103
      Height = 30
      Caption = 'Total Geral:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object grdVendas: TDBGrid
      Left = 10
      Top = 123
      Width = 757
      Height = 174
      DataSource = Tabelas.DSmt_rpt_vendas
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
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'payment_name'
          Title.Caption = 'Forma de pagamento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 526
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtd_pedidos'
          Title.Alignment = taRightJustify
          Title.Caption = 'Qtd.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_total'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 111
          Visible = True
        end>
    end
    object pn15dias: TPanel
      Left = 335
      Top = 6
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 1
      object img15dias: TImage
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
        OnClick = bt15diasClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lb15dias: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = #218'ltimos 15 dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = bt15diasClick
      end
      object bt15dias: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = bt15diasClick
      end
    end
    object pn30dias: TPanel
      Left = 495
      Top = 6
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 2
      object img30dias: TImage
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
        OnClick = bt30diasClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lb30dias: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = #218'ltimos 30 dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = bt30diasClick
      end
      object bt30dias: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = bt30diasClick
      end
    end
    object pnOntem: TPanel
      Left = 175
      Top = 6
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 3
      object imgOntem: TImage
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
        OnClick = btOntemClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbOntem: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ontem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btOntemClick
      end
      object btOntem: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btOntemClick
      end
    end
    object pnHoje: TPanel
      Left = 16
      Top = 6
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 4
      object ImgHoje: TImage
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
        OnClick = btHojeClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbHoje: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Hoje'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btHojeClick
      end
      object btHoje: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btHojeClick
      end
    end
    object pnBuscar: TPanel
      Left = 445
      Top = 72
      Width = 75
      Height = 25
      BevelOuter = bvNone
      TabOrder = 5
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
        Left = 3
        Top = 3
        Width = 71
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
        Width = 75
        Height = 26
        Cursor = crHandPoint
        Caption = 'Buscar'
        Glyph.Data = {
          B6020000424DB60200000000000036000000280000000D000000100000000100
          18000000000080020000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E9E9E93131313939390DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE8E8E82A2A2A0000003131310DFFFFFFFFFFFFDCDCDC6363631A1A
          1A020202191919636363C6C6C62A2A2A0000002B2B2BE9E9E90DFFFFFFB1B1B1
          0909090000000000000000000000000000000000000000002A2A2AE9E9E9FFFF
          FF0DDADADA0909090000005A5A5AD7D7D7FBFBFBD6D6D6565656000000000000
          C6C6C6FFFFFFFFFFFF0D6060600000005B5B5BFEFEFEFFFFFFFFFFFFFFFFFFFE
          FEFE565656000000636363FFFFFFFFFFFF0D171717000000D9D9D9FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD6D6D6000000191919FFFFFFFFFFFF0D000000000000
          FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB000000020202FFFFFFFFFF
          FF0D171717000000D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7000000
          1A1A1AFFFFFFFFFFFF0D5E5E5E0000005E5E5EFEFEFEFFFFFFFFFFFFFFFFFFFE
          FEFE5A5A5A000000636363FFFFFFFFFFFF0DD8D8D80707070000005E5E5ED9D9
          D9FCFCFCD8D8D85A5A5A000000090909DCDCDCFFFFFFFFFFFF0DFFFFFFADADAD
          070707000000000000000000000000000000090909B1B1B1FFFFFFFFFFFFFFFF
          FF0DFFFFFFFFFFFFD8D8D85E5E5E171717000000171717606060DADADAFFFFFF
          FFFFFFFFFFFFFFFFFF0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D}
        TabOrder = 0
        Visible = False
        OnClick = btBuscarClick
      end
    end
    object cbVendasPagamentos: TComboBox
      Left = 220
      Top = 72
      Width = 213
      Height = 25
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edtVendasDataInicial: TDateTimePicker
      Left = 10
      Top = 72
      Width = 89
      Height = 25
      Date = 44474.000000000000000000
      Time = 0.002336273151740897
      TabOrder = 7
    end
    object edtVendasDataFinal: TDateTimePicker
      Left = 114
      Top = 72
      Width = 89
      Height = 25
      Date = 44474.000000000000000000
      Time = 0.002336273151740897
      TabOrder = 8
    end
    object rpVenda: TRLReport
      Left = -5000
      Top = 60
      Width = 276
      Height = 140
      Margins.LeftMargin = 0.000000000000000000
      Margins.TopMargin = 0.000000000000000000
      Margins.RightMargin = 0.000000000000000000
      Margins.BottomMargin = 0.000000000000000000
      DataSource = Tabelas.DSmt_rpt_vendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PageSetup.PaperSize = fpCustom
      PageSetup.PaperWidth = 73.000000000000000000
      PageSetup.PaperHeight = 37.000000000000000000
      PrintDialog = False
      PrintEmpty = False
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 276
        Height = 76
        AutoSize = True
        BandType = btTitle
        object rLbNomeEmpresa: TRLLabel
          Left = 3
          Top = 3
          Width = 272
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Relat'#243'rio de venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = 3
          Top = 20
          Width = 271
          Height = 1
        end
        object RLLabel44: TRLLabel
          Left = 3
          Top = 22
          Width = 72
          Height = 16
          AutoSize = False
          Caption = 'Data Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rLbVendaDtInicial: TRLLabel
          Left = 79
          Top = 22
          Width = 196
          Height = 16
          AutoSize = False
          Caption = 'Data abertura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel45: TRLLabel
          Left = 3
          Top = 39
          Width = 72
          Height = 16
          AutoSize = False
          Caption = 'Data Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rLbVendaDtFinal: TRLLabel
          Left = 79
          Top = 39
          Width = 196
          Height = 16
          AutoSize = False
          Caption = 'Situacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 5
          Top = 75
          Width = 271
          Height = 1
        end
        object RLLabel1: TRLLabel
          Left = 3
          Top = 58
          Width = 80
          Height = 16
          AutoSize = False
          Caption = 'Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 233
          Top = 56
          Width = 43
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 3
          Top = 56
          Width = 271
          Height = 1
        end
        object RLLabel3: TRLLabel
          Left = 153
          Top = 58
          Width = 43
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Qtd.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object rpRBandBottom: TRLBand
        Left = 0
        Top = 97
        Width = 276
        Height = 38
        AutoSize = True
        BandType = btSummary
        object RLDraw10: TRLDraw
          Left = 3
          Top = 1
          Width = 271
          Height = 1
        end
        object RLLabel68: TRLLabel
          Left = 3
          Top = 3
          Width = 72
          Height = 16
          AutoSize = False
          Caption = 'Total Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rLbVendaTotalGeral: TRLLabel
          Left = 80
          Top = 3
          Width = 195
          Height = 16
          AutoSize = False
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw12: TRLDraw
          Left = 3
          Top = 20
          Width = 271
          Height = 1
        end
        object rLbVendaMsgCupom: TRLLabel
          Left = 3
          Top = 22
          Width = 272
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Servir bem para servir sempre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 76
        Width = 276
        Height = 21
        object RLDBText1: TRLDBText
          Left = 3
          Top = 2
          Width = 137
          Height = 16
          AutoSize = False
          DataField = 'payment_name'
          DataSource = Tabelas.DSmt_rpt_vendas
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 199
          Top = 2
          Width = 76
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'valor_total'
          DataSource = Tabelas.DSmt_rpt_vendas
          Text = ''
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 143
          Top = 2
          Width = 53
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'qtd_pedidos'
          DataSource = Tabelas.DSmt_rpt_vendas
          Text = ''
          Transparent = False
        end
      end
    end
    object pnVdImp: TPanel
      Left = 690
      Top = 72
      Width = 75
      Height = 25
      BevelOuter = bvNone
      TabOrder = 10
      Visible = False
      object imgVdImp: TImage
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
        OnClick = BtVdImpClick
      end
      object lbVdImp: TLabel
        Left = 3
        Top = 3
        Width = 71
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtVdImpClick
      end
      object BtVdImp: TBitBtn
        Left = -5000
        Top = 0
        Width = 75
        Height = 25
        Caption = 'BtVdImp'
        TabOrder = 0
        OnClick = BtVdImpClick
      end
    end
  end
  object pnMenu: TPanel
    Left = -5000
    Top = 48
    Width = 777
    Height = 349
    BevelOuter = bvNone
    TabOrder = 2
    object pnBtVendas: TPanel
      Left = 320
      Top = 70
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 0
      object imgBtVendas: TImage
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
        OnClick = btVendasClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbBtVendas: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btVendasClick
      end
      object btVendas: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btVendasClick
      end
    end
    object pnBtMaisVendidos: TPanel
      Left = 320
      Top = 130
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 1
      object imgBtMaisVendidos: TImage
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
        OnClick = btMaisVendidosClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbBtMaisVendidos: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Mais vendidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btMaisVendidosClick
      end
      object btMaisVendidos: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btMaisVendidosClick
      end
    end
    object pnBtFaturamento: TPanel
      Left = 320
      Top = 190
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 2
      object ImgBtFaturamento: TImage
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
        OnClick = btFaturamentoClick
        ExplicitLeft = 40
        ExplicitTop = 25
      end
      object lbBtFaturamento: TLabel
        Left = 0
        Top = 9
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Faturamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btFaturamentoClick
      end
      object btFaturamento: TBitBtn
        Left = -5000
        Top = 8
        Width = 75
        Height = 25
        Caption = 'bt15dias'
        TabOrder = 0
        Visible = False
        OnClick = btFaturamentoClick
      end
    end
  end
  object pnRptMaisVendidos: TPanel
    Left = -5000
    Top = 48
    Width = 777
    Height = 349
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
    object lbMVResult: TLabel
      Left = 305
      Top = 208
      Width = 175
      Height = 25
      Caption = 'Nenhum registro'
      Color = 16242628
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 7
      Width = 63
      Height = 16
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 114
      Top = 7
      Width = 57
      Height = 16
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 220
      Top = 7
      Width = 55
      Height = 16
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Image2: TImage
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
    object Image3: TImage
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
    object Shape2: TShape
      Left = 10
      Top = 65
      Width = 756
      Height = 1
      Pen.Color = 11762436
    end
    object lbTitleMVTotalGeral: TLabel
      Left = 615
      Top = 311
      Width = 103
      Height = 30
      Caption = 'Total Geral:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbMVTotalGeral: TLabel
      Left = 724
      Top = 311
      Width = 42
      Height = 30
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object grdMaisVendidos: TDBGrid
      Left = 10
      Top = 79
      Width = 757
      Height = 218
      DataSource = Tabelas.DSmt_rpt_mais_vendidos
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
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'category_name'
          Title.Caption = 'Categoria'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 203
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'product_name'
          Title.Caption = 'Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 334
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtd'
          Title.Alignment = taRightJustify
          Title.Caption = 'Qtd. Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end>
    end
    object pnMVBuscar: TPanel
      Left = 540
      Top = 29
      Width = 75
      Height = 25
      BevelOuter = bvNone
      TabOrder = 1
      object imgMVBuscar: TImage
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
        OnClick = btMVBuscarClick
      end
      object lbMVBuscar: TLabel
        Left = 3
        Top = 3
        Width = 71
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
        OnClick = btMVBuscarClick
      end
      object btMVBuscar: TBitBtn
        Left = -5000
        Top = -1
        Width = 75
        Height = 26
        Cursor = crHandPoint
        Caption = 'Buscar'
        Glyph.Data = {
          B6020000424DB60200000000000036000000280000000D000000100000000100
          18000000000080020000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E9E9E93131313939390DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE8E8E82A2A2A0000003131310DFFFFFFFFFFFFDCDCDC6363631A1A
          1A020202191919636363C6C6C62A2A2A0000002B2B2BE9E9E90DFFFFFFB1B1B1
          0909090000000000000000000000000000000000000000002A2A2AE9E9E9FFFF
          FF0DDADADA0909090000005A5A5AD7D7D7FBFBFBD6D6D6565656000000000000
          C6C6C6FFFFFFFFFFFF0D6060600000005B5B5BFEFEFEFFFFFFFFFFFFFFFFFFFE
          FEFE565656000000636363FFFFFFFFFFFF0D171717000000D9D9D9FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD6D6D6000000191919FFFFFFFFFFFF0D000000000000
          FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB000000020202FFFFFFFFFF
          FF0D171717000000D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7000000
          1A1A1AFFFFFFFFFFFF0D5E5E5E0000005E5E5EFEFEFEFFFFFFFFFFFFFFFFFFFE
          FEFE5A5A5A000000636363FFFFFFFFFFFF0DD8D8D80707070000005E5E5ED9D9
          D9FCFCFCD8D8D85A5A5A000000090909DCDCDCFFFFFFFFFFFF0DFFFFFFADADAD
          070707000000000000000000000000000000090909B1B1B1FFFFFFFFFFFFFFFF
          FF0DFFFFFFFFFFFFD8D8D85E5E5E171717000000171717606060DADADAFFFFFF
          FFFFFFFFFFFFFFFFFF0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D}
        TabOrder = 0
        Visible = False
        OnClick = btMVBuscarClick
      end
    end
    object cbMVCatg: TComboBox
      Left = 220
      Top = 29
      Width = 311
      Height = 25
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtMVDataFinal: TDateTimePicker
      Left = 114
      Top = 29
      Width = 89
      Height = 24
      Date = 44474.000000000000000000
      Time = 0.002336273151740897
      TabOrder = 3
    end
    object edtMVDataInicial: TDateTimePicker
      Left = 10
      Top = 29
      Width = 89
      Height = 24
      Date = 44474.000000000000000000
      Time = 0.002336273151740897
      TabOrder = 4
    end
  end
  object pnRptFaturamento: TPanel
    Left = -5000
    Top = 48
    Width = 777
    Height = 349
    BevelOuter = bvNone
    TabOrder = 4
    object pnFtOntem: TPanel
      Left = 25
      Top = 60
      Width = 165
      Height = 215
      BevelOuter = bvNone
      TabOrder = 0
      object imgFtOntem: TImage
        Left = 0
        Top = 0
        Width = 165
        Height = 215
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000A50000
          00D708060000007BC19110000000097048597300000B1300000B1301009A9C18
          000003F54944415478DAEDDD316BDC051C87F18B58AA75505C9CA43A8B83D40E
          B55011F51D3838380942C54570707173736B07414514DC5CDC15AAD822A84141
          7C01A5A38B8A825A87FABB8683181ADDFA7FC87D3EF085DC5D865FE021979021
          3B376EDC5841C9CEFF447976F6DCECCCECC1D9DD4B1F7C449C981D5FFA88DBEC
          B7D9D5D957B38F67970EFBC4C3A27C7C7661F6C4D25F0947D637B35766BB075F
          B85594E7671767C796BE9A23EFEFD55E98EFED7FF260942FCFDE5EFA52B6CA3A
          C09766EF6F9ED81FE5E9D5DEFBFD9D4B5FC9D6B9BEDAEBEF87F583FD515E59ED
          FD62034BF862F6D4FA834D94CFCC3E5BFA2AB6DEFABBE5EE26CA77577BEFEBB0
          A4B766AF6FA2FC71F6C8D217B1F52ECFCE6DA2FC7D76CFD217B1F5AECE1EDE44
          E96F8D145C9B9D142525A2244794E488921C5192234A7244498E28C91125393F
          CFEE172525BFCEEE132525A2244794E488921C5192234A7244498E28C9112539
          A2244794E488921C5192234A7244498E28C9112539A2244794E488921C519223
          4A7244498E28C9112539A2244794E488921C5192234A7244498E28C9112539A2
          244794E488921C5192234A7244498E28C9112539A2244794E488921C5192234A
          7244498E28C9112539A2244794E488921C5192234A724449CEBFA2FC6576EFD2
          17B1F544498E28C9112539A2244794E488921C5192234A7244498E28C9112539
          A2244794E488921C5192234A7244498E28C9112539A2244794E488921C519223
          4A7244498E28C9112539A2244794E488921C5192234A7244498E28C9112539A2
          244794E488921C5192234A7244498E28C9112539A2244794E488921C5192234A
          7244498E28C9112539A2244794E488921C5192234A7244498E28C9112539A224
          4794E488921C5192234A7244498E28C9112539A2244794E488921C5192234A72
          44498E28C9112539A2244794E488921C5192234A7244498E28C9112539A22447
          94E488929CBF667789929A1D5152234A7244498E28C9112539A2244794E48892
          1C5192234A7244498E28C9112539A2244794E488921C5192234A7244498E28C9
          112539A2244794E488921C5192234A7244498E28C9112539A2244794E488921C
          5192234A7244498E28C9112539A2244794A4AC63BC6313E5D5D9C9A52F62EBFD
          347B6013E595D9D9A52F62EB7D373BB589F2CDD91B4B5FC4D6BB307B7513E5A9
          D9EED217B1F59E9C7DB98972EDD3D9B34B5FC5D6BA3C3BB7FE607F948FCEBE9D
          1D5FFA3AB6CEF5D5DEEF3437DFADF747B9F6C2ECA3A52F64EBBC38FB60F3E060
          946BE7671767C796BE94236FFDFFBDD7BD7DB8FFC95B45B9767AF6CEECB1A5AF
          E6C8FA7CF6DAECFB832F1C16E5CDD7664FCF9E9F9D993D343BB1F4577244FC39
          FB63E9236EB3F5CF8DD76697669FCCBE3EEC13FF2B4A58C43FF31A158FBCC3BE
          910000000049454E44AE426082}
        ExplicitTop = 2
      end
      object Label4: TLabel
        Left = 0
        Top = 10
        Width = 165
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'ONTEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape3: TShape
        Left = 13
        Top = 35
        Width = 140
        Height = 1
        Pen.Color = 11762436
      end
      object Label11: TLabel
        Left = 0
        Top = 43
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Subtotal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtSubtotalOntem: TLabel
        Left = 0
        Top = 62
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 0
        Top = 80
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtTotalOntem: TLabel
        Left = 0
        Top = 99
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 0
        Top = 120
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtPedidosOntem: TLabel
        Left = 0
        Top = 139
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 0
        Top = 160
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ticket M'#233'dio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtTckMedioOntem: TLabel
        Left = 0
        Top = 179
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnFtHoje: TPanel
      Left = 210
      Top = 60
      Width = 165
      Height = 215
      BevelOuter = bvNone
      TabOrder = 1
      object imgFtHoje: TImage
        Left = 0
        Top = 0
        Width = 165
        Height = 215
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000A50000
          00D708060000007BC19110000000097048597300000B1300000B1301009A9C18
          000003F54944415478DAEDDD316BDC051C87F18B58AA75505C9CA43A8B83D40E
          B55011F51D3838380942C54570707173736B07414514DC5CDC15AAD822A84141
          7C01A5A38B8A825A87FABB8683181ADDFA7FC87D3EF085DC5D865FE021979021
          3B376EDC5841C9CEFF447976F6DCECCCECC1D9DD4B1F7C449C981D5FFA88DBEC
          B7D9D5D957B38F67970EFBC4C3A27C7C7661F6C4D25F0947D637B35766BB075F
          B85594E7671767C796BE9A23EFEFD55E98EFED7FF260942FCFDE5EFA52B6CA3A
          C09766EF6F9ED81FE5E9D5DEFBFD9D4B5FC9D6B9BEDAEBEF87F583FD515E59ED
          FD62034BF862F6D4FA834D94CFCC3E5BFA2AB6DEFABBE5EE26CA77577BEFEBB0
          A4B766AF6FA2FC71F6C8D217B1F52ECFCE6DA2FC7D76CFD217B1F5AECE1EDE44
          E96F8D145C9B9D142525A2244794E488921C5192234A7244498E28C91125393F
          CFEE172525BFCEEE132525A2244794E488921C5192234A7244498E28C9112539
          A2244794E488921C5192234A7244498E28C9112539A2244794E488921C519223
          4A7244498E28C9112539A2244794E488921C5192234A7244498E28C9112539A2
          244794E488921C5192234A7244498E28C9112539A2244794E488921C5192234A
          7244498E28C9112539A2244794E488921C5192234A724449CEBFA2FC6576EFD2
          17B1F544498E28C9112539A2244794E488921C5192234A7244498E28C9112539
          A2244794E488921C5192234A7244498E28C9112539A2244794E488921C519223
          4A7244498E28C9112539A2244794E488921C5192234A7244498E28C9112539A2
          244794E488921C5192234A7244498E28C9112539A2244794E488921C5192234A
          7244498E28C9112539A2244794E488921C5192234A7244498E28C9112539A224
          4794E488921C5192234A7244498E28C9112539A2244794E488921C5192234A72
          44498E28C9112539A2244794E488921C5192234A7244498E28C9112539A22447
          94E488929CBF667789929A1D5152234A7244498E28C9112539A2244794E48892
          1C5192234A7244498E28C9112539A2244794E488921C5192234A7244498E28C9
          112539A2244794E488921C5192234A7244498E28C9112539A2244794E488921C
          5192234A7244498E28C9112539A2244794A4AC63BC6313E5D5D9C9A52F62EBFD
          347B6013E595D9D9A52F62EB7D373BB589F2CDD91B4B5FC4D6BB307B7513E5A9
          D9EED217B1F59E9C7DB98972EDD3D9B34B5FC5D6BA3C3BB7FE607F948FCEBE9D
          1D5FFA3AB6CEF5D5DEEF3437DFADF747B9F6C2ECA3A52F64EBBC38FB60F3E060
          946BE7671767C796BE94236FFDFFBDD7BD7DB8FFC95B45B9767AF6CEECB1A5AF
          E6C8FA7CF6DAECFB832F1C16E5CDD7664FCF9E9F9D993D343BB1F4577244FC39
          FB63E9236EB3F5CF8DD76697669FCCBE3EEC13FF2B4A58C43FF31A158FBCC3BE
          910000000049454E44AE426082}
        ExplicitTop = 2
      end
      object Label12: TLabel
        Left = 0
        Top = 10
        Width = 165
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'HOJE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape4: TShape
        Left = 13
        Top = 35
        Width = 140
        Height = 1
        Pen.Color = 11762436
      end
      object Label14: TLabel
        Left = 0
        Top = 43
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Subtotal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtSubtotalHoje: TLabel
        Left = 0
        Top = 62
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 0
        Top = 80
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtTotalHoje: TLabel
        Left = 0
        Top = 99
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 0
        Top = 120
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtPedidosHoje: TLabel
        Left = 0
        Top = 139
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 0
        Top = 160
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ticket M'#233'dio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtTckMedioHoje: TLabel
        Left = 0
        Top = 179
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnFtMes: TPanel
      Left = 395
      Top = 60
      Width = 165
      Height = 215
      BevelOuter = bvNone
      TabOrder = 2
      object imgFtMes: TImage
        Left = 0
        Top = 0
        Width = 165
        Height = 215
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000A50000
          00D708060000007BC19110000000097048597300000B1300000B1301009A9C18
          000003F54944415478DAEDDD316BDC051C87F18B58AA75505C9CA43A8B83D40E
          B55011F51D3838380942C54570707173736B07414514DC5CDC15AAD822A84141
          7C01A5A38B8A825A87FABB8683181ADDFA7FC87D3EF085DC5D865FE021979021
          3B376EDC5841C9CEFF447976F6DCECCCECC1D9DD4B1F7C449C981D5FFA88DBEC
          B7D9D5D957B38F67970EFBC4C3A27C7C7661F6C4D25F0947D637B35766BB075F
          B85594E7671767C796BE9A23EFEFD55E98EFED7FF260942FCFDE5EFA52B6CA3A
          C09766EF6F9ED81FE5E9D5DEFBFD9D4B5FC9D6B9BEDAEBEF87F583FD515E59ED
          FD62034BF862F6D4FA834D94CFCC3E5BFA2AB6DEFABBE5EE26CA77577BEFEBB0
          A4B766AF6FA2FC71F6C8D217B1F52ECFCE6DA2FC7D76CFD217B1F5AECE1EDE44
          E96F8D145C9B9D142525A2244794E488921C5192234A7244498E28C91125393F
          CFEE172525BFCEEE132525A2244794E488921C5192234A7244498E28C9112539
          A2244794E488921C5192234A7244498E28C9112539A2244794E488921C519223
          4A7244498E28C9112539A2244794E488921C5192234A7244498E28C9112539A2
          244794E488921C5192234A7244498E28C9112539A2244794E488921C5192234A
          7244498E28C9112539A2244794E488921C5192234A724449CEBFA2FC6576EFD2
          17B1F544498E28C9112539A2244794E488921C5192234A7244498E28C9112539
          A2244794E488921C5192234A7244498E28C9112539A2244794E488921C519223
          4A7244498E28C9112539A2244794E488921C5192234A7244498E28C9112539A2
          244794E488921C5192234A7244498E28C9112539A2244794E488921C5192234A
          7244498E28C9112539A2244794E488921C5192234A7244498E28C9112539A224
          4794E488921C5192234A7244498E28C9112539A2244794E488921C5192234A72
          44498E28C9112539A2244794E488921C5192234A7244498E28C9112539A22447
          94E488929CBF667789929A1D5152234A7244498E28C9112539A2244794E48892
          1C5192234A7244498E28C9112539A2244794E488921C5192234A7244498E28C9
          112539A2244794E488921C5192234A7244498E28C9112539A2244794E488921C
          5192234A7244498E28C9112539A2244794A4AC63BC6313E5D5D9C9A52F62EBFD
          347B6013E595D9D9A52F62EB7D373BB589F2CDD91B4B5FC4D6BB307B7513E5A9
          D9EED217B1F59E9C7DB98972EDD3D9B34B5FC5D6BA3C3BB7FE607F948FCEBE9D
          1D5FFA3AB6CEF5D5DEEF3437DFADF747B9F6C2ECA3A52F64EBBC38FB60F3E060
          946BE7671767C796BE94236FFDFFBDD7BD7DB8FFC95B45B9767AF6CEECB1A5AF
          E6C8FA7CF6DAECFB832F1C16E5CDD7664FCF9E9F9D993D343BB1F4577244FC39
          FB63E9236EB3F5CF8DD76697669FCCBE3EEC13FF2B4A58C43FF31A158FBCC3BE
          910000000049454E44AE426082}
        ExplicitTop = 2
      end
      object Label24: TLabel
        Left = 0
        Top = 10
        Width = 165
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'NESTE M'#202'S'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape5: TShape
        Left = 13
        Top = 35
        Width = 140
        Height = 1
        Pen.Color = 11762436
      end
      object Label25: TLabel
        Left = 0
        Top = 43
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Subtotal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtSubtotalMes: TLabel
        Left = 0
        Top = 62
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 0
        Top = 80
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtTotalMes: TLabel
        Left = 0
        Top = 99
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 0
        Top = 120
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtPedidosMes: TLabel
        Left = 0
        Top = 139
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 0
        Top = 160
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ticket M'#233'dio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtTckMedioMes: TLabel
        Left = 0
        Top = 179
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnFtTodo: TPanel
      Left = 580
      Top = 60
      Width = 165
      Height = 215
      BevelOuter = bvNone
      TabOrder = 3
      object imgFtTodo: TImage
        Left = 0
        Top = 0
        Width = 165
        Height = 215
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000A50000
          00D708060000007BC19110000000097048597300000B1300000B1301009A9C18
          000003F54944415478DAEDDD316BDC051C87F18B58AA75505C9CA43A8B83D40E
          B55011F51D3838380942C54570707173736B07414514DC5CDC15AAD822A84141
          7C01A5A38B8A825A87FABB8683181ADDFA7FC87D3EF085DC5D865FE021979021
          3B376EDC5841C9CEFF447976F6DCECCCECC1D9DD4B1F7C449C981D5FFA88DBEC
          B7D9D5D957B38F67970EFBC4C3A27C7C7661F6C4D25F0947D637B35766BB075F
          B85594E7671767C796BE9A23EFEFD55E98EFED7FF260942FCFDE5EFA52B6CA3A
          C09766EF6F9ED81FE5E9D5DEFBFD9D4B5FC9D6B9BEDAEBEF87F583FD515E59ED
          FD62034BF862F6D4FA834D94CFCC3E5BFA2AB6DEFABBE5EE26CA77577BEFEBB0
          A4B766AF6FA2FC71F6C8D217B1F52ECFCE6DA2FC7D76CFD217B1F5AECE1EDE44
          E96F8D145C9B9D142525A2244794E488921C5192234A7244498E28C91125393F
          CFEE172525BFCEEE132525A2244794E488921C5192234A7244498E28C9112539
          A2244794E488921C5192234A7244498E28C9112539A2244794E488921C519223
          4A7244498E28C9112539A2244794E488921C5192234A7244498E28C9112539A2
          244794E488921C5192234A7244498E28C9112539A2244794E488921C5192234A
          7244498E28C9112539A2244794E488921C5192234A724449CEBFA2FC6576EFD2
          17B1F544498E28C9112539A2244794E488921C5192234A7244498E28C9112539
          A2244794E488921C5192234A7244498E28C9112539A2244794E488921C519223
          4A7244498E28C9112539A2244794E488921C5192234A7244498E28C9112539A2
          244794E488921C5192234A7244498E28C9112539A2244794E488921C5192234A
          7244498E28C9112539A2244794E488921C5192234A7244498E28C9112539A224
          4794E488921C5192234A7244498E28C9112539A2244794E488921C5192234A72
          44498E28C9112539A2244794E488921C5192234A7244498E28C9112539A22447
          94E488929CBF667789929A1D5152234A7244498E28C9112539A2244794E48892
          1C5192234A7244498E28C9112539A2244794E488921C5192234A7244498E28C9
          112539A2244794E488921C5192234A7244498E28C9112539A2244794E488921C
          5192234A7244498E28C9112539A2244794A4AC63BC6313E5D5D9C9A52F62EBFD
          347B6013E595D9D9A52F62EB7D373BB589F2CDD91B4B5FC4D6BB307B7513E5A9
          D9EED217B1F59E9C7DB98972EDD3D9B34B5FC5D6BA3C3BB7FE607F948FCEBE9D
          1D5FFA3AB6CEF5D5DEEF3437DFADF747B9F6C2ECA3A52F64EBBC38FB60F3E060
          946BE7671767C796BE94236FFDFFBDD7BD7DB8FFC95B45B9767AF6CEECB1A5AF
          E6C8FA7CF6DAECFB832F1C16E5CDD7664FCF9E9F9D993D343BB1F4577244FC39
          FB63E9236EB3F5CF8DD76697669FCCBE3EEC13FF2B4A58C43FF31A158FBCC3BE
          910000000049454E44AE426082}
        ExplicitTop = 2
      end
      object Label33: TLabel
        Left = 0
        Top = 10
        Width = 165
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'EM TODO PER'#205'ODO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape6: TShape
        Left = 13
        Top = 35
        Width = 140
        Height = 1
        Pen.Color = 11762436
      end
      object Label34: TLabel
        Left = 0
        Top = 43
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Subtotal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtSubtotalTodo: TLabel
        Left = 0
        Top = 62
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label36: TLabel
        Left = 0
        Top = 80
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtTotalTodo: TLabel
        Left = 0
        Top = 99
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 0
        Top = 120
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtPedidosTodo: TLabel
        Left = 0
        Top = 139
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 0
        Top = 160
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ticket M'#233'dio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbFtTckMedioTodo: TLabel
        Left = 0
        Top = 179
        Width = 165
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
