-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Dez-2022 às 20:07
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cotacao`
--

CREATE TABLE `cotacao` (
  `idCot` int(11) NOT NULL,
  `cepOrigem` int(10) NOT NULL,
  `cepDestino` int(10) NOT NULL,
  `valor` float NOT NULL,
  `peso` float NOT NULL,
  `comprimento` double NOT NULL,
  `altura` double NOT NULL,
  `largura` double NOT NULL,
  `tipoFrete` enum('40010','41106') NOT NULL,
  `idUser` int(11) NOT NULL,
  `frete` varchar(20) NOT NULL,
  `prazo` int(20) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cotacao`
--

INSERT INTO `cotacao` (`idCot`, `cepOrigem`, `cepDestino`, `valor`, `peso`, `comprimento`, `altura`, `largura`, `tipoFrete`, `idUser`, `frete`, `prazo`, `nome`) VALUES
(322, 87043585, 86690000, 325, 20, 20, 20, 20, '40010', 290, '131,43', 3, ''),
(323, 87043585, 86690000, 322, 25, 25, 25, 25, '41106', 288, '141,17', 5, ''),
(324, 86690000, 87043585, 384, 55, 20, 20, 20, '41106', 291, '0,00', 0, ''),
(326, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(327, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(328, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(329, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(330, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(331, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(332, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(333, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(334, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(335, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(336, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(338, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(339, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(340, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(341, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(342, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(343, 87043585, 86690000, 350, 20, 20, 20, 20, '40010', 291, '131,93', 3, ''),
(345, 87043585, 86690000, 300, 20, 20, 20, 20, '40010', 287, '130,93', 3, 'Douglas F'),
(346, 87043585, 86690000, 225, 20, 20, 20, 20, '40010', 290, '129,43', 3, 'Frete'),
(347, 87043585, 86690000, 225, 20, 20, 20, 20, '40010', 290, '129,43', 3, 'Frete'),
(348, 87043585, 86690000, 222, 20, 20, 20, 20, '41106', 289, '109,67', 5, 'Expresso'),
(349, 87043585, 86690000, 362, 30, 20, 30, 20, '40010', 289, '202,17', 3, 'Expresso'),
(350, 87043585, 86690000, 100, 20, 20, 20, 20, '40010', 288, '126,93', 3, 'Douglas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `idNFe` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cnpj` varchar(22) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `descricaoProduto` varchar(100) NOT NULL,
  `formaPagamento` enum('M','D','C') NOT NULL,
  `valor` varchar(20) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`idNFe`, `nome`, `cnpj`, `endereco`, `descricaoProduto`, `formaPagamento`, `valor`, `idUser`) VALUES
(2, 'Expresso', '12.123.121/2151-51', 'Rua Rio Içá', 'Pacote Correio', 'M', '222', 289),
(3, 'Expresso', '', '', 'Pacote Correio', 'M', '222', 289),
(4, 'Expresso', '00.000.000/0000-00', 'Rua al', 'Sistema', 'C', '362', 289),
(5, 'Expresso', '00.000.000/0000-00', 'Rua al', 'Sistema', 'D', '362', 289);

-- --------------------------------------------------------

--
-- Estrutura da tabela `etiqueta`
--

CREATE TABLE `etiqueta` (
  `idEt` int(11) NOT NULL,
  `altura` double NOT NULL,
  `cepDestino` int(11) NOT NULL,
  `cepOrigem` int(11) NOT NULL,
  `comprimento` double NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `frete` varchar(20) NOT NULL,
  `idUser` int(11) NOT NULL,
  `largura` double NOT NULL,
  `nome` varchar(50) NOT NULL,
  `nomeDestinatario` varchar(50) NOT NULL,
  `peso` float NOT NULL,
  `prazo` int(11) NOT NULL,
  `tipoFrete` enum('40010','41106') NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `etiqueta`
--

INSERT INTO `etiqueta` (`idEt`, `altura`, `cepDestino`, `cepOrigem`, `comprimento`, `descricao`, `frete`, `idUser`, `largura`, `nome`, `nomeDestinatario`, `peso`, `prazo`, `tipoFrete`, `valor`) VALUES
(1, 20, 86690000, 87043585, 20, 'Porta 22', 'R$ 135,37', 287, 20, '', 'sabs', 20, 3, '40010', 522),
(2, 20, 86690000, 87043585, 20, 'coooc', 'R$ 135,37', 287, 20, 'Douglas', 'sssssss', 20, 3, '40010', 522),
(4, 20, 86690000, 87043585, 20, 'Porta 22', 'R$ 135,37', 288, 20, 'Douglas', 'Douglas', 20, 3, '40010', 522),
(5, 30, 86690000, 87043585, 20, '', '202,17', 289, 20, 'Expresso', '', 30, 3, '40010', 362),
(6, 20, 86690000, 87043585, 20, '', '131,93', 291, 20, 'felipe', '', 20, 3, '40010', 350);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idPed` int(11) NOT NULL,
  `altura` double NOT NULL,
  `cepDestino` int(10) NOT NULL,
  `cepOrigem` int(10) NOT NULL,
  `comprimento` double NOT NULL,
  `frete` varchar(15) NOT NULL,
  `idUser` int(11) NOT NULL,
  `largura` double NOT NULL,
  `peso` float NOT NULL,
  `prazo` int(11) NOT NULL,
  `tipoFrete` enum('40010','41106') NOT NULL,
  `valor` float NOT NULL,
  `nomeDestinatario` varchar(20) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `venda` enum('s','n') NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`idPed`, `altura`, `cepDestino`, `cepOrigem`, `comprimento`, `frete`, `idUser`, `largura`, `peso`, `prazo`, `tipoFrete`, `valor`, `nomeDestinatario`, `descricao`, `venda`, `nome`) VALUES
(10, 20, 86690000, 87043585, 20, 'R$ 135,37', 287, 20, 20, 3, '40010', 522, '', 'c', 's', ''),
(13, 20, 86690000, 87043585, 20, 'R$ 135,37', 288, 20, 20, 3, '40010', 522, '', 's', 's', ''),
(14, 20, 86690000, 87043585, 20, 'R$ 135,37', 288, 20, 20, 3, '40010', 522, '', 's', 's', ''),
(15, 25, 86690000, 87043585, 25, '141,17', 288, 25, 25, 5, '41106', 322, '', 'casa', 's', ''),
(16, 25, 86690000, 87043585, 25, '141,17', 288, 25, 25, 5, '41106', 322, '', 'xxx', 's', ''),
(18, 20, 86690000, 87043585, 20, '131,43', 287, 20, 20, 3, '40010', 325, '', 'Copo', 's', ''),
(19, 20, 86690000, 87043585, 20, '130,93', 287, 20, 20, 3, '40010', 300, '', 'Dou', 's', ''),
(20, 20, 86690000, 87043585, 20, '130,93', 287, 20, 20, 3, '40010', 300, '', 'Porta', 's', 'Douglas F'),
(21, 20, 86690000, 87043585, 20, '129,43', 290, 20, 20, 3, '40010', 225, '', 'Produto', 's', 'Frete'),
(22, 20, 86690000, 87043585, 20, '109,67', 289, 20, 20, 5, '41106', 222, '', 'Pacote Correio', 's', 'Expresso'),
(23, 30, 86690000, 87043585, 20, '202,17', 289, 20, 30, 3, '40010', 362, '', 'Sistema', 's', 'Expresso'),
(24, 20, 86690000, 87043585, 20, '131,93', 291, 20, 20, 3, '40010', 350, '', 'ccc', 's', 'felipe'),
(25, 20, 86690000, 87043585, 20, '131,93', 291, 20, 20, 3, '40010', 350, '', 'Porta 22', 's', 'cc');

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagem`
--

CREATE TABLE `postagem` (
  `idPost` int(11) NOT NULL,
  `altura` double NOT NULL,
  `cepDestino` int(11) NOT NULL,
  `cepOrigem` int(11) NOT NULL,
  `comprimento` double NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `frete` varchar(20) NOT NULL,
  `largura` double NOT NULL,
  `peso` float NOT NULL,
  `prazo` int(11) NOT NULL,
  `tipoFrete` enum('40010','41106') NOT NULL,
  `idUser` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `nomeDestinatario` varchar(50) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `postagem`
--

INSERT INTO `postagem` (`idPost`, `altura`, `cepDestino`, `cepOrigem`, `comprimento`, `descricao`, `frete`, `largura`, `peso`, `prazo`, `tipoFrete`, `idUser`, `nome`, `nomeDestinatario`, `valor`) VALUES
(3, 20, 86690000, 87043585, 20, 'ddd', '131,93', 20, 20, 3, '40010', 291, 'cc', 'Douglas', 350);

-- --------------------------------------------------------

--
-- Estrutura da tabela `transportadora`
--

CREATE TABLE `transportadora` (
  `idCTe` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cnpj` varchar(20) NOT NULL,
  `enderecoDestino` varchar(50) NOT NULL,
  `idUser` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `transportadora`
--

INSERT INTO `transportadora` (`idCTe`, `nome`, `cnpj`, `enderecoDestino`, `idUser`, `valor`, `descricao`) VALUES
(2, 'felipe', '99.999.999/9999-99', 'Rua do centro ', 287, 522, 'Sistema');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `tipo` enum('A','T','E','C') NOT NULL,
  `senha` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `dataNascimento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `telefone`, `cpf`, `cep`, `tipo`, `senha`, `endereco`, `dataNascimento`) VALUES
(287, 'DF', 'souza@gmail.com', '(44) 44444-4444', '000.000.000-00', '44444-444', 'A', 'aaa', 'Rua 2', '10/05/1995'),
(288, 'D', 'a@a.com', '(44) 99720-0505', '444.444.444-44', '87043-585', 'T', 'aaa', 'Rua Rio Içá', '99/99/9999'),
(289, 'Expresso', 'dd@gmail.com', '(44) 44444-4444', '444.444.444-44', '44444-444', 'E', 'aaa', 'Rua', '10/05/1995'),
(290, 'Teste', 'teste@gmail.com', '(44) 44444-4444', '444.444.444-44', '44444-444', 'A', 'teste', 'Rua', '10/05/1995'),
(291, 'Ybat', 'd@d.com', '(66) 66666-6666', '222.222.222-22', '66666-666', 'C', 'aaa', '66', '55/55/5555');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `idSell` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `valor` varchar(25) NOT NULL,
  `stats` enum('P','C','E') NOT NULL,
  `nome` varchar(45) NOT NULL,
  `valorDeclarado` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `prazo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`idSell`, `idUser`, `valor`, `stats`, `nome`, `valorDeclarado`, `descricao`, `prazo`) VALUES
(2, 287, '300', 'C', 'Douglas Felipe', 0, 'Porta', 3),
(3, 287, '300', 'C', 'Douglas F', 0, 'Porta 22', 3),
(4, 287, '300', 'E', 'Douglas F', 0, 'Porta 22', 3),
(6, 287, '300', 'P', 'Douglas F', 0, 'Porta', 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cotacao`
--
ALTER TABLE `cotacao`
  ADD PRIMARY KEY (`idCot`);

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idNFe`);

--
-- Índices para tabela `etiqueta`
--
ALTER TABLE `etiqueta`
  ADD PRIMARY KEY (`idEt`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPed`);

--
-- Índices para tabela `postagem`
--
ALTER TABLE `postagem`
  ADD PRIMARY KEY (`idPost`);

--
-- Índices para tabela `transportadora`
--
ALTER TABLE `transportadora`
  ADD PRIMARY KEY (`idCTe`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`idSell`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cotacao`
--
ALTER TABLE `cotacao`
  MODIFY `idCot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idNFe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `etiqueta`
--
ALTER TABLE `etiqueta`
  MODIFY `idEt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `postagem`
--
ALTER TABLE `postagem`
  MODIFY `idPost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `transportadora`
--
ALTER TABLE `transportadora`
  MODIFY `idCTe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `idSell` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
