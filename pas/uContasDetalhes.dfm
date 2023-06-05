object frmContasDetalhes: TfrmContasDetalhes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Conta detalhada'
  ClientHeight = 441
  ClientWidth = 728
  Color = 16242628
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnTopo: TPanel
    Left = 0
    Top = 0
    Width = 728
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
      Width = 722
      Height = 39
      Margins.Top = 6
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Detalhes da conta'
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
  object pnBottom: TPanel
    Left = 0
    Top = 390
    Width = 728
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    Color = 11762436
    ParentBackground = False
    TabOrder = 1
    object pnVerCarrinho: TPanel
      Left = 202
      Top = 8
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 0
      object imgVerCarrinho: TImage
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
        OnClick = btVerCarrinhoClick
      end
      object lbVerCarrinho: TLabel
        Left = 0
        Top = 7
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ver carrinho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btVerCarrinhoClick
      end
      object btVerCarrinho: TBitBtn
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
        OnClick = btVerCarrinhoClick
      end
    end
    object pnImprimir: TPanel
      Left = 380
      Top = 8
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 1
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
        OnClick = btImprimirClick
      end
    end
  end
  object pnCarrinho: TPanel
    Left = -5000
    Top = 48
    Width = 728
    Height = 342
    BevelOuter = bvNone
    TabOrder = 2
    object grdCarrinho: TDBGrid
      Left = 9
      Top = 7
      Width = 711
      Height = 327
      DataSource = Tabelas.DSmt_cart
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
      Columns = <
        item
          Expanded = False
          FieldName = 'descricao_produto'
          Title.Caption = 'Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 372
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_unit'
          Title.Alignment = taRightJustify
          Title.Caption = 'Vlr. Unit.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtd'
          Title.Alignment = taRightJustify
          Title.Caption = 'Qtd.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Alignment = taRightJustify
          Title.Caption = 'Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end>
    end
  end
  object pnPrincipal: TPanel
    Left = 0
    Top = 48
    Width = 728
    Height = 342
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object grdListaPedidos: TDBGrid
      Left = 16
      Top = 6
      Width = 697
      Height = 327
      DataSource = Tabelas.DSmt_list_order_bill
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
      Columns = <
        item
          Expanded = False
          FieldName = 'order_id'
          Title.Caption = 'Pedido N'#186
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'date_created'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
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
          FieldName = 'tipo_saida'
          Title.Caption = 'Tipo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 109
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'qty_items'
          Title.Alignment = taCenter
          Title.Caption = 'Itens'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 56
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
          Width = 112
          Visible = True
        end>
    end
  end
  object rpCarrinho: TRLReport
    Left = -5000
    Top = 130
    Width = 276
    Height = 129
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
    PageSetup.PaperHeight = 34.000000000000000000
    PrintDialog = False
    PrintEmpty = False
    object RLBand4: TRLBand
      Left = 0
      Top = 0
      Width = 276
      Height = 71
      AutoSize = True
      BandType = btTitle
      object RLLabel12: TRLLabel
        Left = 3
        Top = 1
        Width = 62
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
        Left = 67
        Top = 1
        Width = 207
        Height = 16
        AutoSize = False
        Caption = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel40: TRLLabel
        Left = 3
        Top = 17
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
        Top = 17
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
      object RLDraw8: TRLDraw
        Left = 3
        Top = 34
        Width = 271
        Height = 1
      end
      object RLLabel55: TRLLabel
        Left = 3
        Top = 36
        Width = 51
        Height = 16
        AutoSize = False
        Caption = 'N'#186' Ped.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel59: TRLLabel
        Left = 57
        Top = 53
        Width = 11
        Height = 16
        Caption = 'X'
      end
      object RLLabel54: TRLLabel
        Left = 58
        Top = 36
        Width = 216
        Height = 16
        AutoSize = False
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel56: TRLLabel
        Left = 71
        Top = 53
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vlr. Unit.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel57: TRLLabel
        Left = 134
        Top = 53
        Width = 68
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
      object RLDraw9: TRLDraw
        Left = 3
        Top = 70
        Width = 271
        Height = 1
      end
      object RLLabel1: TRLLabel
        Left = 3
        Top = 53
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Qtd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 204
        Top = 53
        Width = 70
        Height = 16
        AutoSize = False
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 0
      Top = 71
      Width = 276
      Height = 33
      AutoSize = True
      object RLLabel60: TRLLabel
        Left = 57
        Top = 17
        Width = 11
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 3
        Top = 17
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'qtd'
        DataSource = Tabelas.DSmt_cart
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 58
        Top = 1
        Width = 216
        Height = 16
        AutoSize = False
        DataField = 'descricao_produto'
        DataSource = Tabelas.DSmt_cart
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 71
        Top = 17
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'valor_unit'
        DataSource = Tabelas.DSmt_cart
        DisplayMask = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 134
        Top = 17
        Width = 68
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'total'
        DataSource = Tabelas.DSmt_cart
        DisplayMask = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 3
        Top = 1
        Width = 51
        Height = 16
        AutoSize = False
        DataField = 'order_id'
        DataSource = Tabelas.DSmt_cart
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 204
        Top = 17
        Width = 70
        Height = 16
        AutoSize = False
        DataField = 'date_created'
        DataSource = Tabelas.DSmt_cart
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object rpRBandBottom: TRLBand
      Left = 0
      Top = 104
      Width = 276
      Height = 19
      AutoSize = True
      BandType = btSummary
      object RLDraw10: TRLDraw
        Left = 3
        Top = 1
        Width = 271
        Height = 1
      end
      object RLLabel64: TRLLabel
        Left = 3
        Top = 3
        Width = 75
        Height = 16
        AutoSize = False
        Caption = 'Qtde. Itens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rLbQtdItens: TRLLabel
        Left = 81
        Top = 3
        Width = 102
        Height = 16
        AutoSize = False
        Caption = '0'
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
