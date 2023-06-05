object frmContas: TfrmContas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contas'
  ClientHeight = 558
  ClientWidth = 730
  Color = 16242628
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object lbResult: TLabel
    Left = 161
    Top = 273
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
  object gbSituacao: TGroupBox
    Left = 7
    Top = 54
    Width = 153
    Height = 59
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 0
      Width = 49
      Height = 16
      Caption = 'Situa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbSituacao: TComboBox
      Left = 13
      Top = 23
      Width = 132
      Height = 24
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 0
      Text = 'Em aberto'
      OnChange = cbSituacaoChange
      Items.Strings = (
        'Todas'
        'Em aberto'
        'Recebida')
    end
  end
  object gbPesquisar: TGroupBox
    Left = 166
    Top = 54
    Width = 555
    Height = 59
    TabOrder = 1
    object Label2: TLabel
      Left = 12
      Top = 0
      Width = 55
      Height = 16
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtBuscar: TEdit
      Left = 11
      Top = 23
      Width = 450
      Height = 24
      TabOrder = 0
      TextHint = 'Digite o nome do cliente'
      OnKeyPress = edtBuscarKeyPress
    end
    object pnBuscar: TPanel
      Left = 470
      Top = 23
      Width = 75
      Height = 25
      BevelOuter = bvNone
      TabOrder = 1
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
  end
  object grdContas: TDBGrid
    Left = 8
    Top = 119
    Width = 713
    Height = 380
    DataSource = Tabelas.DSmt_bill_receive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = grdContasDrawColumnCell
    OnDblClick = grdContasDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'bill_id'
        Title.Caption = 'Conta N'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'client_name'
        Title.Caption = 'Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 329
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'date_created'
        Title.Alignment = taCenter
        Title.Caption = 'Abertura'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 105
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
        Width = 92
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'status'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
  object pnBottom: TPanel
    Left = 0
    Top = 507
    Width = 730
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    Color = 11762436
    ParentBackground = False
    TabOrder = 3
    object pnReceber: TPanel
      Left = 15
      Top = 8
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 0
      object imgReceber: TImage
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
        OnClick = btReceberClick
      end
      object lbReceber: TLabel
        Left = 0
        Top = 7
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btReceberClick
      end
      object btReceber: TBitBtn
        Left = -5000
        Top = -13
        Width = 100
        Height = 48
        Cursor = crHandPoint
        Caption = ' Novo'
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE9E9E9BCBCBCB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
          B7B7B7B7B7B7B7B7B7B7B7B7D1D1D1FDFDFDFFFFFFCACACAB7B7B7B7B7B7E1E1
          E1FFFFFFFFFFFFFFFFFF03030300000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000474747FFFFFF232323
          0000000000006F6F6FFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000027
          2727FFFFFF2323230000000000006F6F6FFFFFFFFFFFFFFFFFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000272727FFFFFF2323230000000000006F6F6FFFFFFFFFFFFFFF
          FFFF000000000000000000000000000000000000000000000000000000000000
          0000002525256868686B6B6B6B6B6B828282FFFFFF2323230000000000006F6F
          6FFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
          00000000000000001B1B1BF1F1F1E2E2E2DBDBDBDBDBDBDBDBDBDBDBDB1D1D1D
          0000000000005F5F5FDBDBDBDBDBDBDBDBDB0000000000000000000000000000
          000000000000000000000000000000004A4A4AFFFFFF01010100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000004B4B4BFFFFFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          4B4B4BFFFFFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000262626FBFBFBBCBCBCB3B3B3B3B3B3B3B3B3B3B3B3181818
          0000000000004D4D4DB3B3B3B3B3B3B3B3B31414140000000000000000001D1D
          1D939393DEDEDEFBFBFBEFEFEFB8B8B84C4C4C444444919191939393939393E9
          E9E9FFFFFF2323230000000000006F6F6FFFFFFFFFFFFFFFFFFFDEDEDE616161
          2929296A6A6AEAEAEA808080252525030303111111535353D0D0D0B2B2B22C2C
          2C424242ACACACFFFFFFFFFFFF2323230000000000006F6F6FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFECECEC2F2F2F000000000000000000000000000000
          050505ABABABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2323230000000000006F6F
          6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4C00000000000000000000
          0000000000000000000000080808DBDBDBFFFFFFFFFFFFFFFFFFFFFFFF232323
          0000000000006F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D40000000000
          000000000000000000000000000000000000000000006C6C6CFFFFFFFFFFFFFF
          FFFFFFFFFFA8A8A88F8F8F8F8F8FCACACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9B9B9B0000000000000000000000000000000000000000000000000000003333
          33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF949494000000000000000000000000000000000000000000
          0000000000002C2C2CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBC00000000000000000000000000
          0000000000000000000000000000555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB2323230000
          00000000000000000000000000000000000000000000B8B8B8FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC7C7C70A0A0A000000000000000000000000000000000000696969FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC3131310000000000000000000D0D0D
          888888FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED7D7D7B6
          B6B6C4C4C4F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 0
        Visible = False
        OnClick = btReceberClick
      end
    end
    object pnVerDet: TPanel
      Left = 170
      Top = 8
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 1
      object imgVerDet: TImage
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
        OnClick = btVerDetClick
      end
      object lbVerDet: TLabel
        Left = 0
        Top = 7
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ver detalhes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btVerDetClick
      end
      object btVerDet: TBitBtn
        Left = -5000
        Top = -13
        Width = 100
        Height = 48
        Cursor = crHandPoint
        Caption = 'Alterar'
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCADADAD7575756F6F
          6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F7A
          7A7ABEBEBEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4414141
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000626262FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF717171000000555555CACACAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
          D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C1C1C13A3A3A0000009A9A9AFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF151515212121FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEFEFEFDBDBDBDBDBDBDBDBDBEDEDEDFFFFFFFFFFFFFFFFFFEBEBEB060606
          3E3E3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000004A4A4AFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF8F8F8F000000000000000000171717D6D6D6FFFFFFFF
          FFFFFFFFFF222222272727FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000004B4B4B
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F000000000000B7B7B74444
          44171717D6D6D6FFFFFFFFFFFF232323272727FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0000004B4B4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F151515
          8F8F8FEFEFEFF5F5F52D2D2D171717D6D6D6FFFFFF7C7C7C272727FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0000004B4B4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF999999090909C7C7C7FFFFFFA0A0A0010101000000171717D6D6D6FEFEFE
          D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000004B4B4BFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFBFBFB5A5A5A0D0D0D79797901010100000000000000
          0000171717D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000004B4B4B
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB5A5A5A0000002C2C
          2C151515000000000000000000171717D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0000004B4B4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FBFBFB5A5A5A171717ABABAB151515000000000000000000171717D6D6D6FFFF
          FFFFFFFFFFFFFFFFFFFF0000004B4B4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFBFBFB5A5A5A171717ABABAB151515000000000000
          000000171717D6D6D6FFFFFFFFFFFFFFFFFF0000004B4B4BFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB5A5A5A171717AB
          ABAB151515000000000000000000171717DBDBDBFFFFFFFFFFFF0000004B4B4B
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBFBFB5A5A5A171717ABABAB151515000000000000414141F4F4F4EAEAEAFF
          FFFF0000004B4B4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFBFBFB5A5A5A1717178C8C8C000000414141F4F4
          F47F7F7F171717D6D6D6000000474747FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB5A5A5A000000
          414141F4F4F47F7F7F000000000000323232262626101010E9E9E9FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFBFBFB888888F4F4F47F7F7F0000000000000000005151519B9B9B000000
          2323238787879393939393939393939393939393939393939393939393939393
          93939393939393878787E8E8E8FFFFFFACACAC0000000000000000003F3F3FF4
          F4F4FEFEFE858585050505000000000000000000000000000000000000000000
          0000000000000000000000000000000000004F4F4FFFFFFFFBFBFB5A5A5A0000
          00414141F4F4F4FFFFFFFFFFFFFFFFFFEBEBEBB9B9B9B3B3B3B3B3B3B3B3B3B3
          B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3BCBCBCF4F4F4FFFFFF
          FFFFFFFDFDFDD6D6D6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 0
        Visible = False
        OnClick = btVerDetClick
      end
    end
    object pnImprimir: TPanel
      Left = 325
      Top = 8
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 2
      object imgImprimir: TImage
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
        OnClick = btImprimirClick
      end
      object lbImprimir: TLabel
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
        OnClick = btImprimirClick
      end
      object btImprimir: TBitBtn
        Left = -5000
        Top = -13
        Width = 100
        Height = 48
        Cursor = crHandPoint
        Caption = ' Excluir'
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE9E9E9BCBCBCB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
          B7B7B7B7B7B7B7B7B7B9B9B9FBFBFBF8F8F8F3F3F3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFECECEC03030300000000000000000000000000000000000000
          0000000000000000000000000000000000949494F5F5F54444442C2C2CE9E9E9
          FFFFFFFFFFFFFFFFFFFFFFFF8181810C0C0C0000000000000000000000000000
          00000000000000000000000000000000000000000000545454F7F7F744444400
          00000000002C2C2CE9E9E9FFFFFFFFFFFF808080000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006262
          62F0F0F02727270000000000000000002C2C2CE9E9E97F7F7F00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000060606B9B9B9E6E6E62727270000000000000000001515150000
          0000000000000001010100000000000000000000000000000000000000000000
          0000000000000000000000000000000000070707B8B8B8E6E6E6272727000000
          000000000000000000000000020202A2A2A20000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000070707CB
          CBCBE6E6E6131313000000000000000000000000929292FFFFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000555555FAFAFA7F7F7F0000000000000000000000000000002C2C2CE9
          E9E9000000000000000000000000000000000000000000000000000000000000
          000000000000000000565656FBFBFB8080800000000000000000000000000000
          000000000000002C2C2C00000000000000000000000000000000000000000000
          0000000000000000000000000000363636FBFBFB818181000000000000000000
          0101019090902727270000000000000000001414140000000000000000001D1D
          1D8F8F8FDBDBDBFAFAFAEDEDEDB4B4B44B4B4B0000006D6D6DE9E9E90A0A0A00
          0000000000010101A2A2A2FFFFFFE6E6E6272727000000000000DEDEDE616161
          2929296A6A6AEAEAEA808080252525030303111111535353D0D0D0B3B3B34545
          45F4F4F4BEBEBE090909010101A1A1A1FFFFFFFFFFFFFFFFFFE6E6E627272700
          0000FFFFFFFFFFFFFFFFFFECECEC2F2F2F000000000000000000000000000000
          050505ABABABFFFFFFFFFFFFFFFFFFBFBFBFAAAAAAFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFE6E6E6878787FFFFFFFFFFFFFFFFFF4C4C4C00000000000000000000
          0000000000000000000000080808DBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D40000000000
          000000000000000000000000000000000000000000006C6C6CFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9B9B9B0000000000000000000000000000000000000000000000000000003333
          33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF949494000000000000000000000000000000000000000000
          0000000000002C2C2CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBC00000000000000000000000000
          0000000000000000000000000000555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB2323230000
          00000000000000000000000000000000000000000000B8B8B8FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC7C7C70A0A0A000000000000000000000000000000000000696969FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC3131310000000000000000000D0D0D
          888888FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED7D7D7B6
          B6B6C4C4C4F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 0
        Visible = False
        OnClick = btImprimirClick
      end
    end
  end
  object pnTopo: TPanel
    Left = 0
    Top = 0
    Width = 730
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Color = 11762436
    ParentBackground = False
    TabOrder = 4
    object lbTitulo: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 724
      Height = 39
      Margins.Top = 6
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Contas a receber'
      Color = 1380795
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 54
      ExplicitWidth = 869
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
  object rpConta: TRLReport
    Left = -5000
    Top = 188
    Width = 276
    Height = 193
    Margins.LeftMargin = 0.000000000000000000
    Margins.TopMargin = 0.000000000000000000
    Margins.RightMargin = 0.000000000000000000
    Margins.BottomMargin = 0.000000000000000000
    DataSource = Tabelas.DSmt_cart
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 73.000000000000000000
    PageSetup.PaperHeight = 51.000000000000000000
    PrintDialog = False
    PrintEmpty = False
    object RLBand4: TRLBand
      Left = 0
      Top = 0
      Width = 276
      Height = 150
      AutoSize = True
      BandType = btTitle
      object rLbLogradouroEmpresa: TRLLabel
        Left = 3
        Top = 19
        Width = 272
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Logradouro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rLbNomeEmpresa: TRLLabel
        Left = 3
        Top = 3
        Width = 272
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Nome empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rLbBairroEmpresa: TRLLabel
        Left = 3
        Top = 35
        Width = 272
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rLbWhatsAppEmpresa: TRLLabel
        Left = 3
        Top = 51
        Width = 272
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'WhatsApp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rLbTelefoneEmpresa: TRLLabel
        Left = 3
        Top = 67
        Width = 272
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw7: TRLDraw
        Left = 3
        Top = 84
        Width = 271
        Height = 1
      end
      object RLLabel40: TRLLabel
        Left = 3
        Top = 102
        Width = 47
        Height = 16
        AutoSize = False
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rLbNomeCliente: TRLLabel
        Left = 52
        Top = 102
        Width = 222
        Height = 16
        AutoSize = False
        Caption = 'Nome do cliente aqui'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel44: TRLLabel
        Left = 3
        Top = 118
        Width = 55
        Height = 16
        AutoSize = False
        Caption = 'Abertura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rLbDataAbertura: TRLLabel
        Left = 60
        Top = 118
        Width = 214
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
        Top = 134
        Width = 58
        Height = 16
        AutoSize = False
        Caption = 'Situa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rLbSituacao: TRLLabel
        Left = 63
        Top = 134
        Width = 211
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
      object RLLabel4: TRLLabel
        Left = 3
        Top = 86
        Width = 60
        Height = 16
        AutoSize = False
        Caption = 'N'#186' Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rLbNumConta: TRLLabel
        Left = 65
        Top = 86
        Width = 209
        Height = 16
        AutoSize = False
        Caption = 'Num conta'
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
      Top = 150
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
        Width = 70
        Height = 16
        AutoSize = False
        Caption = 'Valor Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rLbValorTotal: TRLLabel
        Left = 79
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
      object rLbMsgCupom: TRLLabel
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
  end
end
