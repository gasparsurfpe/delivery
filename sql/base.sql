DROP DATABASE IF EXISTS `faz_pedido`;
CREATE DATABASE IF NOT EXISTS `faz_pedido`;

USE `faz_pedido`;

ALTER DATABASE `faz_pedido` CHARACTER SET utf8 COLLATE utf8_general_ci;

DELIMITER //
CREATE PROCEDURE UPT_PROD_QTY(p_id INT, p_qty FLOAT, p_signal CHAR)
BEGIN
  IF (p_signal = '+') THEN
    SET @current_qty = (SELECT qtd FROM mt_product WHERE id = p_id);
    UPDATE mt_product SET qtd = (@current_qty + p_qty) WHERE id = p_id;
  ELSE
    SET @current_qty = (SELECT qtd FROM mt_product WHERE id = p_id);
    UPDATE mt_product SET qtd = (@current_qty - p_qty) WHERE id = p_id;
  END IF;
END //
DELIMITER ;

DROP TABLE IF EXISTS `mt_bill_receive`;
CREATE TABLE IF NOT EXISTS `mt_bill_receive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `mt_bot_cart_temp`;
CREATE TABLE IF NOT EXISTS `mt_bot_cart_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type_unit` varchar(10) NOT NULL,
  `qty` float NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_value` float NOT NULL,
  `total` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `mt_bot_interaction`;
CREATE TABLE IF NOT EXISTS `mt_bot_interaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` varchar(255) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `category_select` int(11) NOT NULL,
  `cmd_catg_select` int(11) NOT NULL,
  `product_select` int(11) NOT NULL,
  `cmd_prod_select` int(11) NOT NULL,
  `number_whatsapp` varchar(30) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  `stage` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `mt_bot_message_default`;
CREATE TABLE IF NOT EXISTS `mt_bot_message_default` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_apresentacao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_inicial` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_categoria` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_produto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_quantidade` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_final` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_produto_add` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_pos_compra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_solicita_nome_cliente` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_confirma_nome_cliente` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_tipo_retirada` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_confirma_endereco` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_bairro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_cadastro_endereco` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_pagamento` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_confirma_pedido` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_pedido_confirmado` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_pedido_cancelado` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_confirma_troco` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_cadastra_troco` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_menu_observacao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_falar_atendente` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_forma_pagamento` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `msg_status_em_preparo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_status_pronto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_status_saiu_entrega` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_status_entregue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_status_cancelado` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `mt_bot_message_default` (`id`, `msg_apresentacao`, `msg_menu_inicial`, `msg_menu_categoria`, `msg_menu_produto`, `msg_menu_quantidade`, `msg_final`, `msg_produto_add`, `msg_menu_pos_compra`, `msg_solicita_nome_cliente`, `msg_confirma_nome_cliente`, `msg_menu_tipo_retirada`, `msg_menu_confirma_endereco`, `msg_menu_bairro`, `msg_menu_cadastro_endereco`, `msg_menu_pagamento`, `msg_menu_confirma_pedido`, `msg_pedido_confirmado`, `msg_pedido_cancelado`, `msg_menu_confirma_troco`, `msg_menu_cadastra_troco`, `msg_menu_observacao`, `msg_falar_atendente`, `msg_forma_pagamento`, `merchant_id`, `msg_status_em_preparo`, `msg_status_pronto`, `msg_status_saiu_entrega`, `msg_status_entregue`, `msg_status_cancelado`) VALUES
(1, '*[nome_estabelecimento]*\r\n\r\n🙋🏻 Olá [nome_cliente] Sou sua assistente virtual e estarei lhe ajudando no seu atendimento.\r\n\r\nPara fazer seu pedido basta ler, escolher uma opção e enviar sua resposta. É muito fácil!\r\n\r\n*Vamos lá?* 🤳🏻\r\n\r\n*Obs:* caso queira cancelar este atendimento, é só digitar *cancelar*.', '👩🏻 Escolha uma opção abaixo 👇🏻\r\n\r\n*[1] Fazer pedido*\r\n*[2]* Nossos telefones\r\n*[3]* Horário de funcionamento\r\n*[4]* Formas de pagamento', '👩🏻 Escolha uma das categorias abaixo 👇🏻\r\n\r\n[categorias]\r\n[div]\r\n[voltar]', '👩🏻 Escolha um dos produtos de *[nome_categoria]* listados abaixo 👇🏻\r\n\r\n[produtos]\r\n[div]\r\n[voltar]', '👩🏻 Quantos produtos iguais a *[nome_produto]* você deseja?\r\n[div]\r\n[voltar]', '👩🏻 Agradecemos o seu contato! Qualquer coisa, é só mandar uma mensagem que estaremos aqui para lhe atender com o maior prazer.', 'Produto adicionado ao seu carrinho! 👏🏻', '👩🏻 O que deseja fazer agora?\r\n\r\n*[V]* Visualizar meu carrinho\r\n*[C]* Continuar comprando\r\n*[F]* Finalizar pedido', '👩🏻 Digite seu *nome* e *sobrenome* para que possamos identificar seu pedido.\r\n[div]\r\n[voltar]', '👩🏻 Este é o seu nome?\r\n\r\n[nome_cliente]\r\n\r\n*1.* Sim\r\n*2.* Não', '👩🏻 Como deseja receber seu pedido?\r\n\r\n[opcoes]\r\n[div]\r\n[voltar]', '👩🏻 Indique o endereço o qual você deseja que seja realizada a entrega.\r\n\r\n[enderecos]\r\n[div]\r\n[voltar]', '👩🏻 Selecione o bairro para entrega\r\n\r\n[bairros]\r\n[div]\r\n[voltar]', '👩🏻 Digite seu *endereço* completo com rua, número e ponto de referência.\r\n[div]\r\n[voltar]', '👩🏻 Como você deseja realizar o pagamento?\r\nTotal: [total]\r\n\r\n[pagamentos]\r\n[div]\r\n[voltar]', '*[nome_estabelecimento]*\r\n[div]\r\nCliente:\r\n*[nome_cliente]*\r\n[tipo_retirada]\r\n[div]\r\nCarrinho:\r\n[carrinho]\r\n[div]\r\n*[observacoes]*\r\n[div]\r\nForma de pagamento:\r\n*[pagamento]*\r\n[valores]\r\n[div]\r\n*[1]* Confirmar pedido\r\n*[2]* Excluir pedido\r\n[div]\r\n[voltar]', 'Seu pedido foi realizado com sucesso!✅\r\n\r\nEm breve entraremos em contato com você para lhe atualizar sobre o *status*.❗\r\n\r\nObrigada! 👩🏻', 'Seu pedido foi cancelado.🚫\r\n\r\nPara realizar um novo pedido basta enviar uma mensagem que te respondo na hora, ok❓\r\n\r\nAgradecemos seu contato❗👩🏻', '👩🏻 Você vai precisar de troco?\r\n\r\n*[1]* Sim\r\n*[2]* Não\r\n[div]\r\n[voltar]', '👩🏻 Digite o valor que vai *pagar em dinheiro* para que possamos lhe enviar o troco.\r\n[div]\r\n[voltar]', '👩🏻 Digite aqui as observações que você deseja no seu pedido. Caso não tenha digite *N*.\r\n\r\n*[N]* Nenhuma observação\r\n[div]\r\n[voltar]', '👩🏻 Para falar com um de nossos atendentes você pode ligar para os números disponíveis abaixo 👇🏻\r\n\r\n[telefones]', '👩🏻 Nosso estabelecimento aceita as seguintes formas de pagamento 👇🏻\r\n\r\n[pagamentos]', 1, 'Seu pedido foi recebido com sucesso! Já estamos providenciando. Por favor, aguarde por novas atualizações do status.[mensagem_operador]', 'Já finalizamos o seu pedido! Daqui a pouquinho ele será entregue no seu endereço![mensagem_operador]', 'Seu pedido já saiu para entrega! Aguarde que logo o entregador chegará no seu endereço. Obrigada![mensagem_operador]', 'Pedido entregue com sucesso! Agradecemos a sua preferência![mensagem_operador]', 'Infelizmente seu pedido foi cancelado![mensagem_operador]');

DROP TABLE IF EXISTS `mt_bot_order_temp`;
CREATE TABLE IF NOT EXISTS `mt_bot_order_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number_whatsapp` varchar(30) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `type_out` varchar(50) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `delivery_fee` float NOT NULL,
  `subtotal` float NOT NULL,
  `total` float NOT NULL,
  `paid_out` float NOT NULL,
  `change_money` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `mt_cart`;
CREATE TABLE IF NOT EXISTS `mt_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `descricao_produto` varchar(255) NOT NULL,
  `valor_unit` float NOT NULL,
  `qtd` float NOT NULL,
  `total` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `mt_category`;
CREATE TABLE IF NOT EXISTS `mt_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `command` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `detail` text NOT NULL,
  `active` varchar(50) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `mt_category` (`id`, `command`, `name`, `detail`, `active`, `merchant_id`) VALUES
(1, 1, 'Tradicionais', '', 'Sim', 1),
(2, 2, 'Especiais', '', 'Sim', 1),
(3, 3, 'Bebidas', '', 'Sim', 1);

DROP TABLE IF EXISTS `mt_client`;
CREATE TABLE IF NOT EXISTS `mt_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `mt_client` (`id`, `name`, `obs`, `merchant_id`) VALUES
(1, 'Consumidor', '', 1);

DROP TABLE IF EXISTS `mt_client_address`;
CREATE TABLE IF NOT EXISTS `mt_client_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `district_id` int(11) NOT NULL,
  `major` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `mt_client_address` (`id`, `client_id`, `address`, `district_id`, `major`) VALUES
(1, 1, 'S/L', 1, 's');

DROP TABLE IF EXISTS `mt_client_phone`;
CREATE TABLE IF NOT EXISTS `mt_client_phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `major` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `mt_client_phone` (`id`, `client_id`, `phone`, `major`) VALUES
(1, 1, 'S/T', 's');

DROP TABLE IF EXISTS `mt_delivery_info`;
CREATE TABLE IF NOT EXISTS `mt_delivery_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `client_address_id` int(11) DEFAULT NULL,
  `client_phone_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `district_name` varchar(255) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `num_mesa` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `mt_district`;
CREATE TABLE IF NOT EXISTS `mt_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `command` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tax` float NOT NULL,
  `active` varchar(10) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `mt_district` (`id`, `command`, `name`, `tax`, `active`, `merchant_id`) VALUES
(1, 0, 'S/B', 0, 'Sim', 1),
(2, 1, 'Centro', 0, 'Sim', 1);

DROP TABLE IF EXISTS `mt_list_bill_receive`;
CREATE TABLE IF NOT EXISTS `mt_list_bill_receive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `bill_receive_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `mt_merchant`;
CREATE TABLE IF NOT EXISTS `mt_merchant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `phone1` varchar(25) DEFAULT NULL,
  `phone2` varchar(25) DEFAULT NULL,
  `msg_cupom` varchar(255) DEFAULT NULL,
  `opening_hours` varchar(255) NOT NULL,
  `services` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `mt_merchant` (`id`, `name`, `street`, `district`, `phone1`, `phone2`, `msg_cupom`, `opening_hours`, `services`) VALUES
(1, 'Comida Caseira', 'Rua Massauary, 416', 'Mirante do Éden', 'Whatsapp 994623507', 'Ligaçoes 995062968', 'by Bird Tecnologia (92) 98438-3676', 'De segunda à sábado das 11h até às 14h30', '[entrega][retirada][consumo]');

DROP TABLE IF EXISTS `mt_operator`;
CREATE TABLE IF NOT EXISTS `mt_operator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `client_view` varchar(1) NOT NULL,
  `client_insert` varchar(1) NOT NULL,
  `client_update` varchar(1) NOT NULL,
  `client_delete` varchar(1) NOT NULL,
  `district_view` varchar(1) NOT NULL,
  `district_insert` varchar(1) NOT NULL,
  `district_update` varchar(1) NOT NULL,
  `district_delete` varchar(1) NOT NULL,
  `category_view` varchar(1) NOT NULL,
  `category_insert` varchar(1) NOT NULL,
  `category_update` varchar(1) NOT NULL,
  `category_delete` varchar(1) NOT NULL,
  `product_view` varchar(1) NOT NULL,
  `product_insert` varchar(1) NOT NULL,
  `product_update` varchar(1) NOT NULL,
  `product_delete` varchar(1) NOT NULL,
  `payment_view` varchar(1) NOT NULL,
  `payment_insert` varchar(1) NOT NULL,
  `payment_update` varchar(1) NOT NULL,
  `payment_delete` varchar(1) NOT NULL,
  `report_sale` varchar(1) NOT NULL,
  `report_best_seller` varchar(1) NOT NULL,
  `report_revenues` varchar(1) NOT NULL,
  `bill_view` varchar(1) NOT NULL,
  `bill_receive` varchar(1) NOT NULL,
  `bill_detail` varchar(1) NOT NULL,
  `bill_print` varchar(1) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `mt_operator` (`id`, `name`, `user`, `password`, `level`, `client_view`, `client_insert`, `client_update`, `client_delete`, `district_view`, `district_insert`, `district_update`, `district_delete`, `category_view`, `category_insert`, `category_update`, `category_delete`, `product_view`, `product_insert`, `product_update`, `product_delete`, `payment_view`, `payment_insert`, `payment_update`, `payment_delete`, `report_sale`, `report_best_seller`, `report_revenues`, `bill_view`, `bill_receive`, `bill_detail`, `bill_print`, `merchant_id`) VALUES
(1, 'Admin', 'admin', '202cb962ac59075b964b07152d234b70', 'Administrador', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 1);

DROP TABLE IF EXISTS `mt_order`;
CREATE TABLE IF NOT EXISTS `mt_order` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL,
  `client_id` int(14) NOT NULL,
  `payment_id` int(14) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tipo_saida` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  `check_bot` varchar(1) NOT NULL,
  `input_type` varchar(50) NOT NULL,
  `acrescimo` float NOT NULL,
  `desconto` float NOT NULL,
  `pago` float NOT NULL,
  `troco` float NOT NULL,
  `subtotal` float NOT NULL,
  `valor_total` float NOT NULL,
  `qty_items` float NOT NULL,
  `delivery_fee` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `mt_payment`;
CREATE TABLE IF NOT EXISTS `mt_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `command` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `taxa` float NOT NULL,
  `active` varchar(10) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `mt_payment` (`id`, `command`, `name`, `taxa`, `active`, `merchant_id`) VALUES
(1, 1, 'Dinheiro', 0, 'Sim', 1),
(2, 10, 'A prazo', 0, 'Sim', 1),
(3, 2, 'Cartão de débito', 0, 'Sim', 1),
(4, 3, 'Cartão de crédito', 0, 'Sim', 1),
(5, 4, 'PIX', 0, 'Sim', 1);

DROP TABLE IF EXISTS `mt_product`;
CREATE TABLE IF NOT EXISTS `mt_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `command` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `value` float NOT NULL,
  `active` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `qtd` float NOT NULL,
  `type_unit` varchar(50) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `mt_product` (`id`, `command`, `name`, `detail`, `value`, `active`, `category_id`, `qtd`, `type_unit`, `merchant_id`) VALUES
(1, 1, 'Bife acebolado com fritas', '', 18, 'Sim', 1, 2000, 'UN', 1),
(2, 1, 'Lasanha', '', 15, 'Sim', 2, 2000, 'UN', 1),
(3, 1, 'Coca cola 2L', '', 9, 'Sim', 3, 2000, 'UN', 1);

DROP TABLE IF EXISTS `mt_settings`;
CREATE TABLE IF NOT EXISTS `mt_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_visualizar_impressao` varchar(50) NOT NULL,
  `version` varchar(50) NOT NULL,
  `bot_power` varchar(1) NOT NULL,
  `bot_list_command` varchar(1) NOT NULL,
  `block_negative_stock` varchar(1) NOT NULL,
  `count_stock` varchar(1) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `mt_settings` (`id`, `pre_visualizar_impressao`, `version`, `bot_power`, `bot_list_command`, `block_negative_stock`, `count_stock`, `merchant_id`) VALUES
(1, 's', '1.3.3', 's', 'n', 's', 's', 1);

DROP TABLE IF EXISTS `mt_registry`;
CREATE TABLE IF NOT EXISTS `mt_registry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `release_code` varchar(100) NOT NULL,
  `expiration_date` date NOT NULL,
  `last_acess` date NOT NULL,
  `origin_code` varchar(100) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;