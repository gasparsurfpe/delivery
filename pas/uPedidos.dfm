object frmPedidos: TfrmPedidos
  Left = 0
  Top = 0
  Caption = 'Painel de Pedidos'
  ClientHeight = 481
  ClientWidth = 974
  Color = 16242628
  Constraints.MinHeight = 520
  Constraints.MinWidth = 990
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object lbResult: TLabel
    Left = 161
    Top = 280
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
  object lbNumPedidos: TLabel
    Left = 862
    Top = 459
    Width = 100
    Height = 23
    Alignment = taRightJustify
    Caption = 'Pedidos: 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11762436
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object gbFiltro: TGroupBox
    Left = 255
    Top = 72
    Width = 82
    Height = 118
    TabOrder = 4
    object Label10: TLabel
      Left = 12
      Top = 0
      Width = 58
      Height = 16
      Caption = 'Data/Hora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 31
      Top = 54
      Width = 21
      Height = 16
      Cursor = crHandPoint
      Caption = '12h'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = Label11Click
    end
    object Label12: TLabel
      Left = 31
      Top = 88
      Width = 21
      Height = 16
      Cursor = crHandPoint
      Caption = '24h'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = Label12Click
    end
    object Label13: TLabel
      Left = 31
      Top = 20
      Width = 26
      Height = 16
      Cursor = crHandPoint
      Caption = 'Hoje'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = Label13Click
    end
    object rb12h: TRadioButton
      Left = 13
      Top = 54
      Width = 15
      Height = 17
      Cursor = crHandPoint
      TabOrder = 0
      OnClick = cbEmPreparoClick
    end
    object rb24h: TRadioButton
      Left = 13
      Top = 88
      Width = 15
      Height = 17
      Cursor = crHandPoint
      TabOrder = 1
      OnClick = cbEmPreparoClick
    end
    object rbHoje: TRadioButton
      Left = 13
      Top = 20
      Width = 15
      Height = 17
      Cursor = crHandPoint
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = cbEmPreparoClick
    end
  end
  object pnTopo: TPanel
    Left = 0
    Top = 0
    Width = 974
    Height = 66
    Align = alTop
    BevelOuter = bvNone
    Color = 11762436
    ParentBackground = False
    TabOrder = 0
    object lbBuscaPedidos: TLabel
      Tag = 15
      Left = 862
      Top = 43
      Width = 105
      Height = 16
      Alignment = taRightJustify
      Caption = 'Nova busca em 15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object pnVer: TPanel
      Left = 170
      Top = 16
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 0
      object imgVer: TImage
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
        OnClick = btVerClick
      end
      object lbVer: TLabel
        Left = 0
        Top = 7
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'F3 - Ver'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btVerClick
      end
      object btVer: TBitBtn
        Left = -5000
        Top = 10
        Width = 75
        Height = 25
        Caption = 'btVer'
        TabOrder = 0
        Visible = False
        OnClick = btVerClick
      end
    end
    object pnNovo: TPanel
      Left = 15
      Top = 16
      Width = 145
      Height = 35
      BevelOuter = bvNone
      TabOrder = 1
      object imgNovo: TImage
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
        OnClick = btNovoClick
      end
      object lbNovo: TLabel
        Left = 0
        Top = 7
        Width = 145
        Height = 20
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'F2 - Novo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11762436
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btNovoClick
      end
      object btNovo: TBitBtn
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
        OnClick = btNovoClick
      end
    end
  end
  object gbExibir: TGroupBox
    Left = 8
    Top = 71
    Width = 241
    Height = 119
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 0
      Width = 36
      Height = 16
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 33
      Top = 24
      Width = 67
      Height = 16
      Cursor = crHandPoint
      Caption = 'Em preparo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = Label3Click
    end
    object Label4: TLabel
      Left = 174
      Top = 24
      Width = 37
      Height = 16
      Cursor = crHandPoint
      Caption = 'Pronto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = Label4Click
    end
    object Label5: TLabel
      Left = 33
      Top = 57
      Width = 103
      Height = 16
      Cursor = crHandPoint
      Caption = 'Saiu para entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = Label5Click
    end
    object Label6: TLabel
      Left = 174
      Top = 57
      Width = 51
      Height = 16
      Cursor = crHandPoint
      Caption = 'Entregue'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = Label6Click
    end
    object Label7: TLabel
      Left = 33
      Top = 90
      Width = 59
      Height = 16
      Cursor = crHandPoint
      Caption = 'Cancelado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = Label7Click
    end
    object cbEmPreparo: TCheckBox
      Left = 16
      Top = 22
      Width = 13
      Height = 20
      Cursor = crHandPoint
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = cbEmPreparoClick
    end
    object cbPronto: TCheckBox
      Left = 157
      Top = 22
      Width = 13
      Height = 20
      Cursor = crHandPoint
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cbEmPreparoClick
    end
    object cbSaiuEntrega: TCheckBox
      Left = 16
      Top = 55
      Width = 13
      Height = 20
      Cursor = crHandPoint
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = cbEmPreparoClick
    end
    object cbEntregue: TCheckBox
      Left = 157
      Top = 55
      Width = 13
      Height = 20
      Cursor = crHandPoint
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = cbEmPreparoClick
    end
    object cbCancelado: TCheckBox
      Left = 16
      Top = 88
      Width = 13
      Height = 20
      Cursor = crHandPoint
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = cbEmPreparoClick
    end
  end
  object grdPedidos: TDBGrid
    AlignWithMargins = True
    Left = 8
    Top = 196
    Width = 958
    Height = 250
    Margins.Left = 8
    Margins.Top = 130
    Margins.Right = 8
    Margins.Bottom = 35
    Align = alClient
    DataSource = Tabelas.DSmt_order
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = grdPedidosDrawColumnCell
    OnDblClick = grdPedidosDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'Pedido N'#186
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
        FieldName = 'imp_cliente'
        Title.Caption = 'Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 244
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imp_bairro'
        Title.Caption = 'Bairro'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imp_telefone'
        Title.Caption = 'Telefone'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 124
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
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'input_type'
        Title.Caption = 'Entrada'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_total'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'payment_name'
        Title.Caption = 'Pagamento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 140
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'status'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 130
        Visible = True
      end>
  end
  object gbOrganizar: TGroupBox
    Left = 343
    Top = 72
    Width = 98
    Height = 118
    TabOrder = 3
    object Label2: TLabel
      Left = 12
      Top = 0
      Width = 59
      Height = 16
      Caption = 'Tipo sa'#237'da'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 31
      Top = 42
      Width = 44
      Height = 16
      Cursor = crHandPoint
      Caption = 'Entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = Label8Click
    end
    object Label9: TLabel
      Left = 31
      Top = 65
      Width = 48
      Height = 16
      Cursor = crHandPoint
      Caption = 'Retirada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = Label9Click
    end
    object Label14: TLabel
      Left = 31
      Top = 88
      Width = 30
      Height = 16
      Cursor = crHandPoint
      Caption = 'Mesa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = Label14Click
    end
    object Label16: TLabel
      Left = 31
      Top = 20
      Width = 35
      Height = 16
      Cursor = crHandPoint
      Caption = 'Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = Label16Click
    end
    object rbEntrega: TRadioButton
      Left = 13
      Top = 42
      Width = 15
      Height = 17
      Cursor = crHandPoint
      TabOrder = 0
      OnClick = cbEmPreparoClick
    end
    object rbRetirada: TRadioButton
      Left = 13
      Top = 65
      Width = 15
      Height = 17
      Cursor = crHandPoint
      TabOrder = 1
      OnClick = cbEmPreparoClick
    end
    object rbMesa: TRadioButton
      Left = 13
      Top = 88
      Width = 15
      Height = 17
      Cursor = crHandPoint
      TabOrder = 2
      OnClick = cbEmPreparoClick
    end
    object rbSaidaTodos: TRadioButton
      Left = 13
      Top = 20
      Width = 15
      Height = 17
      Cursor = crHandPoint
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = cbEmPreparoClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 447
    Top = 72
    Width = 274
    Height = 118
    TabOrder = 5
    object Label15: TLabel
      Left = 12
      Top = 0
      Width = 182
      Height = 16
      Caption = 'Bairro / Pagamento / Atendente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11762436
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbBairros: TComboBox
      Left = 12
      Top = 22
      Width = 250
      Height = 24
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbBairrosChange
    end
    object cbPagamento: TComboBox
      Left = 12
      Top = 52
      Width = 250
      Height = 24
      Style = csDropDownList
      TabOrder = 1
      OnChange = cbPagamentoChange
    end
    object cbAtendente: TComboBox
      Left = 12
      Top = 82
      Width = 250
      Height = 24
      Style = csDropDownList
      TabOrder = 2
      OnChange = cbAtendenteChange
    end
  end
  object tmAutoBuscaPedido: TTimer
    Enabled = False
    OnTimer = tmAutoBuscaPedidoTimer
    Left = 920
    Top = 80
  end
  object PopupMenu1: TPopupMenu
    Left = 728
    Top = 80
    object Mudarstatus1: TMenuItem
      Caption = 'Mudar status'
      object Pendente1: TMenuItem
        Caption = 'Pendente'
        OnClick = Pendente1Click
      end
      object Empreparo1: TMenuItem
        Caption = 'Em preparo'
        OnClick = Empreparo1Click
      end
      object Pronto1: TMenuItem
        Caption = 'Pronto'
        OnClick = Pronto1Click
      end
      object Saiuparaentrega1: TMenuItem
        Caption = 'Saiu para entrega'
        OnClick = Saiuparaentrega1Click
      end
      object Entregue1: TMenuItem
        Caption = 'Entregue'
        OnClick = Entregue1Click
      end
      object Cancelado1: TMenuItem
        Caption = 'Cancelado'
        OnClick = Cancelado1Click
      end
      object Canceladopelocliente1: TMenuItem
        Caption = 'Cancelado pelo cliente'
        OnClick = Canceladopelocliente1Click
      end
    end
    object Mudarstatusenotificar1: TMenuItem
      Caption = 'Mudar status e notificar'
      object Empreparo2: TMenuItem
        Caption = 'Em preparo'
        OnClick = Empreparo2Click
      end
      object Pronto2: TMenuItem
        Caption = 'Pronto'
        OnClick = Pronto2Click
      end
      object Saiuparaentrega2: TMenuItem
        Caption = 'Saiu para entrega'
        OnClick = Saiuparaentrega2Click
      end
      object Entregue2: TMenuItem
        Caption = 'Entregue'
        OnClick = Entregue2Click
      end
      object Cancelado2: TMenuItem
        Caption = 'Cancelado'
        OnClick = Cancelado2Click
      end
    end
  end
end
