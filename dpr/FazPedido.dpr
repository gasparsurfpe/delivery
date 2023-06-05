program FazPedido;

uses
  Vcl.Forms,
  Midas,
  uTInject.ConfigCEF,
  uPrincipal in '..\pas\uPrincipal.pas' {frmPrincipal},
  uClientes in '..\pas\uClientes.pas' {frmClientes},
  uTabelas in '..\pas\uTabelas.pas' {Tabelas: TDataModule},
  Requisicao in '..\pas\Requisicao.pas',
  uCadastroCliente in '..\pas\uCadastroCliente.pas' {frmCadastroCliente},
  uLoading in '..\pas\uLoading.pas' {frmLoading},
  uPedidos in '..\pas\uPedidos.pas' {frmPedidos},
  uCadastroPedido in '..\pas\uCadastroPedido.pas' {frmCadastroPedido},
  uLIstaProdutos in '..\pas\uLIstaProdutos.pas' {frmListaProdutos},
  uPerguntaQtd in '..\pas\uPerguntaQtd.pas' {frmPerguntaQtd},
  uListaClientes in '..\pas\uListaClientes.pas' {frmConsultaCliente},
  uConsultaPagamento in '..\pas\uConsultaPagamento.pas' {frmConsultaPagamento},
  uValidacaoRegistro in '..\pas\uValidacaoRegistro.pas' {frmValidacaoRegistro},
  uProdutos in '..\pas\uProdutos.pas' {frmProdutos},
  uCadastroProduto in '..\pas\uCadastroProduto.pas' {frmCadastroProduto},
  uCadastroClienteTelefone in '..\pas\uCadastroClienteTelefone.pas' {frmCadastroClienteTelefone},
  uCadastroEndereco in '..\pas\uCadastroEndereco.pas' {frmCadastroEndereco},
  uFormat in '..\pas\uFormat.pas',
  uCategorias in '..\pas\uCategorias.pas' {frmCategorias},
  uCadastroCategoria in '..\pas\uCadastroCategoria.pas' {frmCadastroCategoria},
  uBairros in '..\pas\uBairros.pas' {frmBairros},
  uCadastroBairro in '..\pas\uCadastroBairro.pas' {frmCadastroBairro},
  uPagamentos in '..\pas\uPagamentos.pas' {frmPagamentos},
  uCadastroPagamento in '..\pas\uCadastroPagamento.pas' {frmCadastroPagamento},
  uFunctions in '..\pas\uFunctions.pas',
  uRelatorios in '..\pas\uRelatorios.pas' {frmRelatorios},
  uConfirmaModificacaoCliente in '..\pas\uConfirmaModificacaoCliente.pas' {frmConfirmaModifacaoCliente},
  uMD5 in '..\pas\uMD5.pas',
  uPermissaoAcesso in '..\pas\uPermissaoAcesso.pas' {frmPermissaoAcesso},
  uGeral in '..\pas\uGeral.pas' {frmGeral},
  uContas in '..\pas\uContas.pas' {frmContas},
  uContasDetalhes in '..\pas\uContasDetalhes.pas' {frmContasDetalhes},
  uPerguntaQtdPrint in '..\pas\uPerguntaQtdPrint.pas' {frmPerguntaQtdPrint},
  uModificarStatus in '..\pas\uModificarStatus.pas' {frmModificaStatus},
  uNotificacaoPedido in '..\pas\uNotificacaoPedido.pas' {frmNotificacaoPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  If not GlobalCEFApp.StartMainProcess then
   Exit;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TTabelas, Tabelas);
  Application.CreateForm(TfrmLoading, frmLoading);
  Application.CreateForm(TfrmPermissaoAcesso, frmPermissaoAcesso);
  Application.Run;
end.
