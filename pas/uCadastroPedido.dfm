object frmCadastroPedido: TfrmCadastroPedido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pedido'
  ClientHeight = 597
  ClientWidth = 925
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 19
  object pnTopo: TPanel
    Left = 0
    Top = 0
    Width = 929
    Height = 48
    BevelOuter = bvNone
    Color = 11762436
    ParentBackground = False
    TabOrder = 0
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
    object lbTitulo: TLabel
      Left = 54
      Top = 6
      Width = 860
      Height = 35
      Alignment = taCenter
      AutoSize = False
      Caption = 'Novo Pedido'
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
  object gbCarrinho: TGroupBox
    Left = 8
    Top = 54
    Width = 601
    Height = 150
    Caption = ' Carrinho '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object imgRemoveItem: TImage
      Left = 568
      Top = 116
      Width = 17
      Height = 24
      Cursor = crHandPoint
      Hint = 'Remover item'
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
        00180806000000F3A07D0C0000000473424954080808087C0864880000000970
        48597300000B1300000B1301009A9C18000000F64944415478DA6364A010300E
        4A03C481783B101BA2899F05624F207E4DC8800E202E04E24E20FE07156306E2
        7220EE06E26A7C06B001F16320DE07C4916872AB80D80E886581F837B201200E
        0B9941F00B64402510FB02B11E10F710A9B10C88CF01F1169817401A63805882
        4803DE00F11C20AEC066800A107301F12520D604E2FF407C0388F581F83310DF
        2364C01220D601620320DE03C47F80D80388AF00F119204E1835602818A0044D
        07200D1AD074709301925241E9E03E2E03E280588CC894F80E8867027125CC80
        6C209EC200C9AEDF0868E605E222204E06E2793003404EDE0CC44E44BA600710
        0700F1CFC159269204005F24658A93E7BF250000000049454E44AE426082}
      ShowHint = True
      OnClick = imgRemoveItemClick
    end
    object imgAddItem: TImage
      Left = 538
      Top = 116
      Width = 24
      Height = 24
      Cursor = crHandPoint
      Hint = 'Adicionar item'
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000000473424954080808087C0864880000000970
        48597300000B1300000B1301009A9C18000000C44944415478DA6364A0316024
        521D1310DB03313794FF05880F01F13F6A595004C4BD686279403C995A164C01
        E26C34B189405C306AC1D0B2009414A38058048BBA1020B646130325D3F558D4
        BE02E2150CD0248C6C410C102F26D24784400410AF44B700E4DD7E2A5990CB00
        0956FA5A9005C453A964413A10CF42B7401088FB8058148B061D209647137B00
        C457B1A87D09C4C540FC01DD027C6068E483510B28B2A00388CBD1C45A80B896
        5A160833406A355895F9990192A4DF53CB02B2C1D0B70000916D3019DF73660F
        0000000049454E44AE426082}
      ShowHint = True
      OnClick = imgAddItemClick
    end
    object grdCart: TDBGrid
      Left = 11
      Top = 22
      Width = 574
      Height = 88
      DataSource = DScdsCarrinho
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grdCartDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'item'
          Title.Caption = 'Item'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'product_name'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 296
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtd'
          Title.Alignment = taRightJustify
          Title.Caption = 'Qtd'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_unit'
          Title.Alignment = taRightJustify
          Title.Caption = 'Vlr Unit.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 63
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
          Visible = True
        end>
    end
  end
  object gbCliente: TGroupBox
    Left = 8
    Top = 203
    Width = 601
    Height = 243
    Caption = ' Detalhes para sa'#237'da '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object lbResultClient: TLabel
      Left = 1000
      Top = 104
      Width = 346
      Height = 35
      Caption = 'Cliente n'#227'o identificado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object rbRetirada: TRadioButton
      Left = 104
      Top = 25
      Width = 81
      Height = 24
      Cursor = crHandPoint
      Caption = 'Retirada'
      TabOrder = 0
      OnClick = rbRetiradaClick
    end
    object rbEntrega: TRadioButton
      Left = 16
      Top = 25
      Width = 73
      Height = 24
      Cursor = crHandPoint
      Caption = 'Entrega'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbEntregaClick
    end
    object rbMesa: TRadioButton
      Left = 200
      Top = 25
      Width = 57
      Height = 24
      Cursor = crHandPoint
      Caption = 'Mesa'
      TabOrder = 3
      OnClick = rbMesaClick
    end
    object pnInfoCliente: TPanel
      Left = 3
      Top = 55
      Width = 595
      Height = 177
      BevelOuter = bvNone
      TabOrder = 1
      object Label17: TLabel
        Left = 13
        Top = 134
        Width = 34
        Height = 16
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 13
        Top = 31
        Width = 93
        Height = 16
        Caption = 'Nome no pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 354
        Top = 31
        Width = 50
        Height = 16
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 13
        Top = 75
        Width = 53
        Height = 16
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 13
        Top = 4
        Width = 44
        Height = 16
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbClienteSelecionado: TLabel
        Left = 63
        Top = 4
        Width = 66
        Height = 16
        Caption = '<Cliente>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object imgAddCliente: TImage
        Left = 565
        Top = 153
        Width = 24
        Height = 24
        Cursor = crHandPoint
        Hint = 'Buscar clientes'
        ParentShowHint = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000130000
          001808060000001897C60F0000000473424954080808087C0864880000000970
          48597300000B1300000B1301009A9C18000001B74944415478DAD595CB2BC451
          14C7EF78B361212131DE8924CACE8611C54E796563C1C223C56EFE010A65332C
          C846366A12F6F25A288F852CD8683C3612451A2C18DFE3F7FDE59A47BF5FCD6C
          9CFA34F7FC7E77BEF7DC73CF3D3F878AA139FE95581518062EE00471E01A6C83
          057062472C194C83118B8897C128F047124B029BA0C5E68E0E38D71F4E6C064C
          68CF37C02CB7F4096AC018E8D1E62C82C160B15270C1DC88B9C1140884896808
          7834BF0E9CEA6212C138FD75D0114148CF593FC74B6040173B0795F4EBC19145
          BECAC025C737A04017FBE001C86F1AF8B271000F2093E314FEF747CCDCD233C8
          B02124E6D3224A072FA6D83DC8E20B59EDD14228950B278277EE26608A6D8176
          4E9482F55888F581158EA5DE1AF49CF58255FA4FA05619D7279C652BA3F672E9
          CBB59BD7C512C019A8D0F2D1A9424FB51AAC8172FAB71CBFE96262527CFBCC87
          693BE098F9901BD0A47E0B5B315F6DCA68007FC414277B793A764DEE662B0309
          E90EF960127481F8A07712A134833965547E319FBF82667018A9D548A9348222
          2E2879DC0577DAA2E23BE94BA9B8A2E9B485600FE4D1F745DBB64B289803AE62
          F10D90AD76036F4C3F28DFA18B542E79E5ADEF0000000049454E44AE426082}
        ShowHint = True
        OnClick = imgAddClienteClick
      end
      object edtCliente: TEdit
        Left = 13
        Top = 48
        Width = 333
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edtClienteKeyPress
      end
      object cbMesa: TComboBox
        Left = 352
        Top = 48
        Width = 228
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TextHint = 'N'#186' da mesa'
        Visible = False
        OnKeyPress = cbMesaKeyPress
        Items.Strings = (
          '001'
          '002'
          '003'
          '004'
          '005'
          '006'
          '007'
          '008'
          '009'
          '010')
      end
      object mmEndereco: TMemo
        Left = 13
        Top = 92
        Width = 567
        Height = 41
        TabOrder = 2
      end
      object edtTelefone: TEdit
        Left = 352
        Top = 48
        Width = 228
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnChange = edtTelefoneChange
        OnKeyPress = edtClienteKeyPress
      end
      object cbBairro: TDBLookupComboBox
        Left = 13
        Top = 152
        Width = 333
        Height = 24
        KeyField = 'id'
        ListField = 'name'
        ListSource = Tabelas.DSmt_district
        TabOrder = 4
        OnCloseUp = cbBairroCloseUp
        OnKeyUp = cbBairroKeyUp
      end
    end
  end
  object gbPagamento: TGroupBox
    Left = 615
    Top = 54
    Width = 302
    Height = 392
    Caption = ' Forma de Pagamento '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 25
      Width = 56
      Height = 16
      Caption = 'Qtd. Itens'
    end
    object lbQtdProdutos: TLabel
      Left = 16
      Top = 40
      Width = 11
      Height = 21
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 65
      Width = 56
      Height = 16
      Caption = 'Sub-Total'
    end
    object lbSubTotal: TLabel
      Left = 16
      Top = 80
      Width = 66
      Height = 21
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 105
      Width = 52
      Height = 16
      Caption = 'Desconto'
    end
    object lbDesconto: TLabel
      Left = 16
      Top = 120
      Width = 66
      Height = 21
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 225
      Width = 63
      Height = 16
      Caption = 'Valor Total'
    end
    object lbValorTotal: TLabel
      Left = 16
      Top = 240
      Width = 66
      Height = 21
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 265
      Width = 123
      Height = 16
      Caption = 'Forma de pagamento'
    end
    object lbDescPagamento: TLabel
      Left = 16
      Top = 280
      Width = 73
      Height = 21
      Caption = 'Dinheiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 16
      Top = 305
      Width = 62
      Height = 16
      Caption = 'Valor Pago'
    end
    object lbValorPago: TLabel
      Left = 16
      Top = 320
      Width = 66
      Height = 21
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 16
      Top = 345
      Width = 33
      Height = 16
      Caption = 'Troco'
    end
    object lbTroco: TLabel
      Left = 16
      Top = 360
      Width = 66
      Height = 21
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object imgAddPagamento: TImage
      Left = 271
      Top = 361
      Width = 24
      Height = 24
      Cursor = crHandPoint
      Hint = 'Editar'
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000000473424954080808087C0864880000000970
        48597300000B1300000B1301009A9C180000015B4944415478DADDD43F284651
        18C7F17365A3B018109362D1BB482883646191502F29FB5B8A92C56640926255
        4A8A18C4C264B1F89B24DEC1E05F4C42AF41497CAF73DE3A9D1EF7AD5B5738F5
        A9F7DEFB3CF7F79ED3B9C753110FEF5F04CC461DF0F1D301DDD80BF9BE7ACC07
        053CA3042F4273035A4DFD0676849A3CDC22570A78431CABC22C2731E0DC1FC7
        B010D2894564A79B1F31851524BF6958C6197A50884DF3AC0D6B424F253A30E8
        99975604ACEB315ED18207537B6E9E1DA03AA0F7225340192E718884F99D6F05
        F8A3187761039AB1655D979BB5B5031AB1FD6B034A719521A008F76103FC71A4
        F4BE5FC0B515DC8726D404F47E053C6146E9AD782A14B5A31F27CEFD1826B02E
        F454A10B09FB437B577A9F2F39C57ECD18869CFBA318115E1E37B3CD4A37DB47
        454AE96D97121A6B95FE169459B25DA1A60037C8B1FF9D7BD8F5625F851B7598
        73A71FF9713D1D7540A4E3EF077C025873533F72C70BFC0000000049454E44AE
        426082}
      ShowHint = True
      OnClick = imgAddPagamentoClick
    end
    object Label11: TLabel
      Left = 16
      Top = 145
      Width = 59
      Height = 16
      Caption = 'Acr'#233'scimo'
    end
    object lbAcrescimo: TLabel
      Left = 16
      Top = 160
      Width = 66
      Height = 21
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 16
      Top = 185
      Width = 94
      Height = 16
      Caption = 'Taxa de entrega'
    end
    object lbTaxaEntrega: TLabel
      Left = 16
      Top = 200
      Width = 66
      Height = 21
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnBottom: TPanel
    Left = 0
    Top = 546
    Width = 925
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    Color = 11762436
    ParentBackground = False
    TabOrder = 4
    object Label14: TLabel
      Left = 11
      Top = 7
      Width = 135
      Height = 16
      Caption = 'F5 - Consultar produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 11
      Top = 28
      Width = 123
      Height = 16
      Caption = 'F6 - Procurar clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 167
      Top = 7
      Width = 155
      Height = 16
      Caption = 'F7 - Selecionar pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 167
      Top = 28
      Width = 117
      Height = 16
      Caption = 'F8 - Modificar status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 343
      Top = 7
      Width = 63
      Height = 16
      Caption = 'F9 - Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 343
      Top = 28
      Width = 133
      Height = 16
      Caption = 'F10 - Salvar e imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object pnSalvarImprimir: TPanel
      Left = 770
      Top = 8
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 0
      object imgSalvarImprimir: TImage
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
        OnClick = btSalvarImprimirClick
      end
      object lbSalvarImprimir: TLabel
        Left = 0
        Top = 7
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = ' Salvar e Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btSalvarImprimirClick
      end
      object btSalvarImprimir: TBitBtn
        Left = -5000
        Top = 2
        Width = 81
        Height = 33
        Caption = ' Salvar e Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          360A0000424D360A00000000000036000000280000001A000000200000000100
          180000000000000A0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0080FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF7171710202020000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000030303757575FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0D0D000000
          000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
          00000000000F0F0FFFFF000000000000000000000000000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000000000000000000000000000FFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000FFFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000FFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000FFFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000FFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000C7C7C7C4
          C4C400000000000000000B0B0B00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000CACACAC7C7C70000000D0D0DFFFF676767000000
          000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
          00000000006B6B6BFFFFF7F7F76767670B0B0B000000000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000B0B0B6A6A6AF8F8F8FFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF7272720202020000000000000000000F0F0FFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF020202000000
          000000000000000000616161FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0000000000000000000000001F1F1FE6E6E6FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
          0000001F1F1FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0101010000000000000000000000000000000000000000000000
          000000000000000000000000000000001F1F1FDFDFDFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF6F6F6F01010100000000
          00000000000000000000000000000000000000000000000000000C0C0C5E5E5E
          E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnClick = btSalvarImprimirClick
      end
    end
    object pnSalvar: TPanel
      Left = 610
      Top = 8
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 1
      object imgSalvar: TImage
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
        OnClick = btSalvarClick
      end
      object lbSalvar: TLabel
        Left = 0
        Top = 7
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btSalvarClick
      end
      object btSalvar: TBitBtn
        Left = -5000
        Top = 2
        Width = 95
        Height = 33
        Caption = ' Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000200000000100
          18000000000000090000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171020202
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000003030375
          7575020202000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000030303000000000000FFFFFFFFFFFF000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000000000FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFF0000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000000000
          FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF00000000
          0000000000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFF
          FFFFFFFF000000000000000000000000FFFFFFFFFFFF000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000000000FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFF0000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000000000
          FFFFFFFFFFFF0101010000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000020202FFFFFFFFFFFF00000000
          0000000000000000FFFFFFFFFFFF6E6E6E010101000000000000000000000000
          000000000000000000000000000000000000000000000000020202717171FFFF
          FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
          0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000000000000000000000000FFFFFFFFFFFF71717102020200000000
          0000000000000000000000000000000000000000030303757575FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFF0202
          0200000000000000000000000000000000000000000000000000000000000003
          0303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
          FFFFFFFFFFFF000000000000000000000000000000000000F0F0F0FFFFFFFFFF
          FFEEEEEE000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDB0000000F
          0F0F000000000000FFFFFFFFFFFF000000000000000000000000000000000000
          FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFF1F1
          F1383838000000616161000000000000FFFFFFFFFFFF00000000000000000000
          0000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF
          FFFFFFF1F1F13838380000001F1F1FE6E6E6000000000000FFFFFFFFFFFF0000
          00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
          0000FFFFFFFFFFFFF1F1F13838380000001F1F1FDFDFDFFFFFFF000000000000
          FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFF
          FFFFFFFF000000000000FFFFFFF1F1F13838380000001F1F1FDFDFDFFFFFFFFF
          FFFF000000000000FFFFFFFFFFFF000000000000000000000000000000000000
          F3F3F3FFFFFFFFFFFFF0F0F0000000000000DEDEDE3838380000001F1F1FDFDF
          DFFFFFFFFFFFFFFFFFFF01010100000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          1F1F1FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F0101010000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000C0C0C5E5E5EE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnClick = btSalvarClick
      end
    end
  end
  object gbStatusPedido: TGroupBox
    Left = 615
    Top = 445
    Width = 302
    Height = 93
    Caption = ' Status atual '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object imgModificarStatus: TImage
      Left = 275
      Top = 65
      Width = 24
      Height = 24
      Cursor = crHandPoint
      Hint = 'Adicionar item'
      ParentShowHint = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000140000
        001408060000008D891D0D0000000473424954080808087C0864880000000970
        48597300000B1300000B1301009A9C18000001114944415478DAADD44F4B0241
        1880F15D108F89DEC443244107093AA9878E79E816187D86A02F127432BC077E
        020F1A6987F02AD26788BC78D1E814E1C5E765E7856170D99D5D071E5C66F0C7
        FE9B0D83038F30E3FFEAD4A037DAE6059B34A5128DE896FEB38282BDD3913537
        A6AEA23EE089F9FDA06367ED956EE4F2D3826D9AD00BF562D06BB9A76940C536
        E68A867BD05F3AA76512A8D89A9EE9890A0654541E4E871649F7300ED3A16899
        3E7532CC88C9F8A10BFAB627C31CD8957D6671602ECC0515FBA3C72C980DB682
        683B7D518D2A7BCE3E11B3C13EDDD1199D06D1F62AF9622E285BE79EE641F4C2
        2A9A1A73C107732C5B485ED219557DB038704545B3E685D9A07CD32E9DB5812F
        6683071B3BFC784A1526F4739D0000000049454E44AE426082}
      ShowHint = True
      OnClick = imgModificarStatusClick
    end
    object pnFaixaStatus: TPanel
      Left = 16
      Top = 23
      Width = 273
      Height = 33
      BevelOuter = bvNone
      Color = clGray
      ParentBackground = False
      TabOrder = 0
      object lbStatusPedido: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 5
        Width = 267
        Height = 25
        Margins.Top = 5
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pendente'
        Color = 50176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3815994
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 273
      end
    end
  end
  object gbObservacoes: TGroupBox
    Left = 8
    Top = 445
    Width = 601
    Height = 93
    Caption = ' Observa'#231#245'es '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object mmObservacoes: TMemo
      Left = 16
      Top = 24
      Width = 569
      Height = 57
      TabOrder = 0
    end
  end
  object rpEntrega: TRLReport
    Left = -5000
    Top = 0
    Width = 276
    Height = 488
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
    PageSetup.PaperHeight = 129.000000000000000000
    PrintDialog = False
    PrintEmpty = False
    object RLBand1: TRLBand
      Left = 0
      Top = 0
      Width = 276
      Height = 274
      AutoSize = True
      BandType = btTitle
      object rpELbLogradouroEmpresa: TRLLabel
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
      object rpELbNomeEmpresa: TRLLabel
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
      object rpELbBairroEmpresa: TRLLabel
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
      object rpELbWhatsAppEmpresa: TRLLabel
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
      object rpELbTelefoneEmpresa: TRLLabel
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
      object RLDraw1: TRLDraw
        Left = 3
        Top = 84
        Width = 271
        Height = 1
      end
      object RLLabel1: TRLLabel
        Left = 3
        Top = 86
        Width = 65
        Height = 16
        AutoSize = False
        Caption = 'Pedido N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpELbNumPedido: TRLLabel
        Left = 70
        Top = 86
        Width = 204
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
      object RLLabel3: TRLLabel
        Left = 3
        Top = 118
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
      object rpELbClienteNome: TRLLabel
        Left = 52
        Top = 118
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
      object RLLabel5: TRLLabel
        Left = 3
        Top = 102
        Width = 66
        Height = 16
        AutoSize = False
        Caption = 'Atendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpELbAtendente: TRLLabel
        Left = 71
        Top = 102
        Width = 203
        Height = 16
        AutoSize = False
        Caption = 'MOREIRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 3
        Top = 134
        Width = 55
        Height = 16
        AutoSize = False
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpELbClienteTelefone: TRLLabel
        Left = 60
        Top = 134
        Width = 214
        Height = 16
        AutoSize = False
        Caption = '(99) 99999-9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 3
        Top = 172
        Width = 63
        Height = 16
        AutoSize = False
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 3
        Top = 204
        Width = 43
        Height = 16
        AutoSize = False
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpELbClienteBairro: TRLLabel
        Left = 3
        Top = 220
        Width = 271
        Height = 16
        AutoSize = False
        Caption = 'Bairro exemplo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rpEMmEndereco: TRLMemo
        Left = 3
        Top = 188
        Width = 271
        Height = 16
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Teste')
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 3
        Top = 237
        Width = 271
        Height = 1
      end
      object RLLabel17: TRLLabel
        Left = 71
        Top = 239
        Width = 203
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
      object RLLabel18: TRLLabel
        Left = 3
        Top = 239
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
      object RLLabel19: TRLLabel
        Left = 88
        Top = 256
        Width = 85
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
      object RLLabel20: TRLLabel
        Left = 189
        Top = 256
        Width = 85
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
      object RLDraw3: TRLDraw
        Left = 3
        Top = 273
        Width = 271
        Height = 1
      end
      object RLLabel25: TRLLabel
        Left = 57
        Top = 239
        Width = 11
        Height = 16
        Caption = 'X'
      end
      object RLDraw21: TRLDraw
        Left = 3
        Top = 151
        Width = 271
        Height = 1
      end
      object RLLabel8: TRLLabel
        Left = 3
        Top = 153
        Width = 32
        Height = 16
        AutoSize = False
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpELbTipo: TRLLabel
        Left = 37
        Top = 153
        Width = 237
        Height = 16
        AutoSize = False
        Caption = 'ENTREGA / RETIRADA / MESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw22: TRLDraw
        Left = 3
        Top = 170
        Width = 271
        Height = 1
      end
    end
    object RLBand2: TRLBand
      Left = 0
      Top = 274
      Width = 276
      Height = 35
      AutoSize = True
      object RLLabel23: TRLLabel
        Left = 57
        Top = 3
        Width = 11
        Height = 16
        Caption = 'X'
      end
      object RLDBText1: TRLDBText
        Left = 3
        Top = 3
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'qtd'
        DataSource = Tabelas.DSmt_cart
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 71
        Top = 3
        Width = 203
        Height = 16
        AutoSize = False
        DataField = 'descricao_produto'
        DataSource = Tabelas.DSmt_cart
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 88
        Top = 19
        Width = 85
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'valor_unit'
        DataSource = Tabelas.DSmt_cart
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 189
        Top = 19
        Width = 85
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'total'
        DataSource = Tabelas.DSmt_cart
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 0
      Top = 309
      Width = 276
      Height = 173
      AutoSize = True
      BandType = btSummary
      object RLDraw4: TRLDraw
        Left = 3
        Top = 2
        Width = 271
        Height = 1
      end
      object RLLabel22: TRLLabel
        Left = 3
        Top = 3
        Width = 83
        Height = 16
        AutoSize = False
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpELbObs: TRLMemo
        Left = 3
        Top = 19
        Width = 271
        Height = 16
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Testesd')
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 3
        Top = 38
        Width = 70
        Height = 16
        AutoSize = False
        Caption = 'Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw5: TRLDraw
        Left = 3
        Top = 36
        Width = 271
        Height = 1
      end
      object rpELbPagamento: TRLLabel
        Left = 3
        Top = 55
        Width = 126
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
      object RLLabel27: TRLLabel
        Left = 150
        Top = 38
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sub-Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpELbSubTotal: TRLLabel
        Left = 223
        Top = 38
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 147
        Top = 54
        Width = 73
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpELbDesconto: TRLLabel
        Left = 223
        Top = 54
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 150
        Top = 104
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpELbValorTotal: TRLLabel
        Left = 223
        Top = 104
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel33: TRLLabel
        Left = 150
        Top = 120
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpELbValorPago: TRLLabel
        Left = 223
        Top = 120
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel35: TRLLabel
        Left = 150
        Top = 136
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Troco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpELbTroco: TRLLabel
        Left = 223
        Top = 136
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw6: TRLDraw
        Left = 3
        Top = 153
        Width = 271
        Height = 1
      end
      object rpElbMsgCupom: TRLLabel
        Left = 3
        Top = 155
        Width = 272
        Height = 18
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
      object RLLabel4: TRLLabel
        Left = 147
        Top = 70
        Width = 73
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Acr'#233'scimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpElbAcrescimo: TRLLabel
        Left = 223
        Top = 70
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 120
        Top = 88
        Width = 100
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Taxa de entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpElbTaxa: TRLLabel
        Left = 223
        Top = 88
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object rpRetirada: TRLReport
    Left = -5000
    Top = 100
    Width = 276
    Height = 397
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
    PageSetup.PaperHeight = 105.000000000000000000
    PrintDialog = False
    PrintEmpty = False
    object RLBand4: TRLBand
      Left = 0
      Top = 0
      Width = 276
      Height = 207
      AutoSize = True
      BandType = btTitle
      object rpRLbLogradouroEmpresa: TRLLabel
        Left = 3
        Top = 19
        Width = 271
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
      object rpRLbNomeEmpresa: TRLLabel
        Left = 3
        Top = 3
        Width = 271
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
      object rpRLbBairroEmpresa: TRLLabel
        Left = 3
        Top = 35
        Width = 271
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
      object rpRLbWhatsAppEmpresa: TRLLabel
        Left = 3
        Top = 51
        Width = 271
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
      object rpRLbTelefoneEmpresa: TRLLabel
        Left = 3
        Top = 67
        Width = 271
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
      object RLLabel12: TRLLabel
        Left = 3
        Top = 86
        Width = 65
        Height = 16
        AutoSize = False
        Caption = 'Pedido N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpRLbNumPedido: TRLLabel
        Left = 70
        Top = 86
        Width = 204
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
        Top = 118
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
      object rpRLbCliente: TRLLabel
        Left = 52
        Top = 118
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
      object RLLabel42: TRLLabel
        Left = 3
        Top = 102
        Width = 66
        Height = 16
        AutoSize = False
        Caption = 'Atendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpRLbAtendente: TRLLabel
        Left = 71
        Top = 102
        Width = 203
        Height = 16
        AutoSize = False
        Caption = 'MOREIRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel44: TRLLabel
        Left = 3
        Top = 134
        Width = 55
        Height = 16
        AutoSize = False
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpRLbTelefone: TRLLabel
        Left = 60
        Top = 134
        Width = 214
        Height = 16
        AutoSize = False
        Caption = '(99) 99999-9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw8: TRLDraw
        Left = 3
        Top = 170
        Width = 271
        Height = 1
      end
      object RLDraw13: TRLDraw
        Left = 3
        Top = 151
        Width = 271
        Height = 1
      end
      object RLLabel46: TRLLabel
        Left = 3
        Top = 153
        Width = 32
        Height = 16
        AutoSize = False
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpRLbTipo: TRLLabel
        Left = 37
        Top = 153
        Width = 237
        Height = 16
        AutoSize = False
        Caption = 'ENTREGA / RETIRADA / MESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel55: TRLLabel
        Left = 3
        Top = 172
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
      object RLLabel59: TRLLabel
        Left = 57
        Top = 172
        Width = 11
        Height = 16
        Caption = 'X'
      end
      object RLLabel54: TRLLabel
        Left = 71
        Top = 172
        Width = 203
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
        Left = 88
        Top = 189
        Width = 85
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
        Left = 189
        Top = 189
        Width = 85
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
        Top = 206
        Width = 271
        Height = 1
      end
    end
    object RLBand5: TRLBand
      Left = 0
      Top = 207
      Width = 276
      Height = 33
      AutoSize = True
      object RLLabel60: TRLLabel
        Left = 57
        Top = 1
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
        Top = 1
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
        Left = 71
        Top = 1
        Width = 203
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
        Left = 88
        Top = 17
        Width = 85
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
        Left = 189
        Top = 17
        Width = 85
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
    end
    object rpRBandBottom: TRLBand
      Left = 0
      Top = 240
      Width = 276
      Height = 149
      AutoSize = True
      BandType = btSummary
      object RLDraw10: TRLDraw
        Left = 3
        Top = 1
        Width = 271
        Height = 1
      end
      object RLLabel61: TRLLabel
        Left = 3
        Top = 3
        Width = 83
        Height = 16
        AutoSize = False
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpRLbObs: TRLMemo
        Left = 3
        Top = 16
        Width = 271
        Height = 16
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel62: TRLLabel
        Left = 3
        Top = 35
        Width = 136
        Height = 16
        AutoSize = False
        Caption = 'Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw11: TRLDraw
        Left = 3
        Top = 33
        Width = 271
        Height = 1
      end
      object rpRLbPagamento: TRLLabel
        Left = 3
        Top = 51
        Width = 136
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
      object RLLabel64: TRLLabel
        Left = 150
        Top = 35
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sub-Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpRLbSubTotal: TRLLabel
        Left = 223
        Top = 35
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel66: TRLLabel
        Left = 147
        Top = 51
        Width = 73
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpRLbDesconto: TRLLabel
        Left = 223
        Top = 51
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel68: TRLLabel
        Left = 150
        Top = 83
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpRLbValorTotal: TRLLabel
        Left = 223
        Top = 83
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel70: TRLLabel
        Left = 150
        Top = 99
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpRLbValorPago: TRLLabel
        Left = 223
        Top = 99
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel72: TRLLabel
        Left = 150
        Top = 115
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Troco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpRLbTroco: TRLLabel
        Left = 223
        Top = 115
        Width = 51
        Height = 16
        Alignment = taRightJustify
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
        Top = 131
        Width = 271
        Height = 1
      end
      object rpRlbMsgCupom: TRLLabel
        Left = 3
        Top = 133
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
      object RLLabel2: TRLLabel
        Left = 147
        Top = 67
        Width = 73
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Acr'#233'scimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpRlbAcrescimo: TRLLabel
        Left = 223
        Top = 67
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object rpMesa: TRLReport
    Left = -5000
    Top = 100
    Width = 276
    Height = 393
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
    PageSetup.PaperHeight = 104.000000000000000000
    PrintDialog = False
    PrintEmpty = False
    object RLBand6: TRLBand
      Left = 0
      Top = 0
      Width = 276
      Height = 207
      AutoSize = True
      BandType = btTitle
      object rpMlbEmpresaLogradouro: TRLLabel
        Left = 3
        Top = 19
        Width = 271
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
      object rpMlbEmpresaNome: TRLLabel
        Left = 3
        Top = 3
        Width = 271
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
      object rpMlbEmpresaBairro: TRLLabel
        Left = 3
        Top = 35
        Width = 271
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
      object rpMlbEmpresaWhatsapp: TRLLabel
        Left = 3
        Top = 51
        Width = 271
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
      object rpMlbEmpresaTelefone: TRLLabel
        Left = 3
        Top = 67
        Width = 271
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
      object RLDraw14: TRLDraw
        Left = 3
        Top = 84
        Width = 271
        Height = 1
      end
      object RLLabel14: TRLLabel
        Left = 3
        Top = 86
        Width = 65
        Height = 16
        AutoSize = False
        Caption = 'Pedido N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpMlbNumPedido: TRLLabel
        Left = 70
        Top = 86
        Width = 204
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
      object RLLabel43: TRLLabel
        Left = 3
        Top = 118
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
      object rpMlbCliente: TRLLabel
        Left = 52
        Top = 118
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
      object RLLabel47: TRLLabel
        Left = 3
        Top = 102
        Width = 66
        Height = 16
        AutoSize = False
        Caption = 'Atendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpMlbAtendente: TRLLabel
        Left = 71
        Top = 102
        Width = 203
        Height = 16
        AutoSize = False
        Caption = 'MOREIRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel49: TRLLabel
        Left = 3
        Top = 134
        Width = 61
        Height = 16
        AutoSize = False
        Caption = 'N'#186' Mesa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpMlbNumMesa: TRLLabel
        Left = 66
        Top = 134
        Width = 208
        Height = 16
        AutoSize = False
        Caption = '(99) 99999-9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw15: TRLDraw
        Left = 3
        Top = 170
        Width = 271
        Height = 1
      end
      object RLDraw16: TRLDraw
        Left = 3
        Top = 151
        Width = 271
        Height = 1
      end
      object RLLabel51: TRLLabel
        Left = 3
        Top = 153
        Width = 32
        Height = 16
        AutoSize = False
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpMlbTipo: TRLLabel
        Left = 37
        Top = 153
        Width = 237
        Height = 16
        AutoSize = False
        Caption = 'ENTREGA / RETIRADA / MESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel53: TRLLabel
        Left = 3
        Top = 172
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
      object RLLabel58: TRLLabel
        Left = 57
        Top = 172
        Width = 11
        Height = 16
        Caption = 'X'
      end
      object RLLabel63: TRLLabel
        Left = 71
        Top = 172
        Width = 203
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
      object RLLabel65: TRLLabel
        Left = 88
        Top = 189
        Width = 85
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
      object RLLabel67: TRLLabel
        Left = 189
        Top = 188
        Width = 85
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
      object RLDraw17: TRLDraw
        Left = 3
        Top = 206
        Width = 271
        Height = 1
      end
    end
    object RLBand7: TRLBand
      Left = 0
      Top = 207
      Width = 276
      Height = 29
      AutoSize = True
      object RLLabel69: TRLLabel
        Left = 57
        Top = 1
        Width = 11
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 3
        Top = 1
        Width = 51
        Height = 14
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
      object RLDBText11: TRLDBText
        Left = 71
        Top = 1
        Width = 203
        Height = 14
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
      object RLDBText12: TRLDBText
        Left = 88
        Top = 15
        Width = 85
        Height = 14
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
      object RLDBText13: TRLDBText
        Left = 189
        Top = 15
        Width = 85
        Height = 14
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
    end
    object RLBand8: TRLBand
      Left = 0
      Top = 236
      Width = 276
      Height = 150
      AutoSize = True
      BandType = btSummary
      object RLDraw18: TRLDraw
        Left = 3
        Top = 1
        Width = 271
        Height = 1
      end
      object RLLabel71: TRLLabel
        Left = 3
        Top = 3
        Width = 83
        Height = 16
        AutoSize = False
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpMmmObs: TRLMemo
        Left = 3
        Top = 16
        Width = 271
        Height = 16
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel73: TRLLabel
        Left = 3
        Top = 35
        Width = 70
        Height = 16
        AutoSize = False
        Caption = 'Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw19: TRLDraw
        Left = 3
        Top = 33
        Width = 271
        Height = 1
      end
      object rpMlbPagamento: TRLLabel
        Left = 3
        Top = 51
        Width = 136
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
      object RLLabel77: TRLLabel
        Left = 150
        Top = 35
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sub-Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpMlbSubTotal: TRLLabel
        Left = 223
        Top = 35
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel79: TRLLabel
        Left = 147
        Top = 51
        Width = 73
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpMlbDesconto: TRLLabel
        Left = 223
        Top = 51
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel81: TRLLabel
        Left = 150
        Top = 83
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpMlbValorTotal: TRLLabel
        Left = 223
        Top = 83
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel83: TRLLabel
        Left = 150
        Top = 99
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpMlbValorPago: TRLLabel
        Left = 223
        Top = 99
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel85: TRLLabel
        Left = 150
        Top = 115
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Troco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpMlbTroco: TRLLabel
        Left = 223
        Top = 115
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw20: TRLDraw
        Left = 3
        Top = 132
        Width = 271
        Height = 1
      end
      object rpMlbMsgCupom: TRLLabel
        Left = 3
        Top = 134
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
      object RLLabel9: TRLLabel
        Left = 147
        Top = 67
        Width = 73
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Acr'#233'scimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rpMlbAcrescimo: TRLLabel
        Left = 223
        Top = 67
        Width = 51
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object DScdsCarrinho: TDataSource
    DataSet = cdsCarrinho
    Left = 168
    Top = 8
  end
  object cdsCarrinho: TClientDataSet
    PersistDataPacket.Data = {
      910000009619E0BD010000001800000007000000000003000000910002696404
      00010000000000046974656D04000100000000000A70726F647563745F696404
      000100000000000C70726F647563745F6E616D65020049000000010005574944
      544802000200FF0003717464080004000000000008766C725F756E6974080004
      000000000005746F74616C08000400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 8
    object cdsCarrinhoid: TIntegerField
      FieldName = 'id'
    end
    object cdsCarrinhoitem: TIntegerField
      FieldName = 'item'
    end
    object cdsCarrinhoproduct_id: TIntegerField
      FieldName = 'product_id'
    end
    object cdsCarrinhoproduct_name: TStringField
      FieldName = 'product_name'
      Size = 255
    end
    object cdsCarrinhoqtd: TFloatField
      FieldName = 'qtd'
      DisplayFormat = '#,0.000'
    end
    object cdsCarrinhovlr_unit: TFloatField
      FieldName = 'vlr_unit'
      DisplayFormat = '#,0.00'
    end
    object cdsCarrinhototal: TFloatField
      FieldName = 'total'
      DisplayFormat = '#,0.00'
    end
  end
end
