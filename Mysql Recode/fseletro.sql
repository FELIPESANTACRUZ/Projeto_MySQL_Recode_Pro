-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Out-2020 às 02:34
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fseletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `preco` float NOT NULL,
  `preco_venda` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitacoes`
--

CREATE TABLE `solicitacoes` (
  `idusuario` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `tel` varchar(110) DEFAULT NULL,
  `endereco` varchar(30) DEFAULT NULL,
  `produto` varchar(260) DEFAULT NULL,
  `precoUnidade` float DEFAULT NULL,
  `totalUnidades` int(11) DEFAULT NULL,
  `valorFinal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `solicitacoes`
--

INSERT INTO `solicitacoes` (`idusuario`, `nome`, `tel`, `endereco`, `produto`, `precoUnidade`, `totalUnidades`, `valorFinal`) VALUES
(1, 'Felipe Santa Cruz Simão', '(11)97738-5647', 'Rua margaridas 1900', 'Geladeira Frost Free Brastemp Side Inverse 540 litros', 5019, 2, 10038),
(2, 'Jaqueline Magalhães Castro', '(11) 9555-5555', 'Estrada principal 780', 'Fogão 4 Bocas Consul Inox com Mesa de Vidro', 1129, 1, 1129),
(3, 'Rosângela Maria santa cruz Simão', '(11) 93333-3333', 'Rua jardim das rosas 110', 'Micro-ondas Consul 32 litros inox 220V', 409.88, 4, 1639.52),
(4, 'Claudio Borges', '(11)9999-9999', 'Rua D 344', 'Lava-louça Eletrolux Inox com 10 serviços,06 programas de lavagem,e painel Blue Touch', 2799, 2, 5598),
(5, 'Terezinha Borges Santa Cruz Simão ', '(11)4400-4939', 'Rua novo mundo 500', 'Lavadoura de roupas Brastemp 11kg com turbo performance Branca', 1214.1, 3, 3642.3),
(6, 'Omar', '(11)9309-3834', 'Rua wanted 212', 'Lavadoura de roupas Brastemp 11kg com turbo performance Branca', 1699, 3, 5097),
(7, 'Leticia', '(11)94838-3627', 'Rua Rosas 3955', 'Micro-ondas 25L espelhado Philco 220V', 508.7, 4, 512.7),
(8, 'Marizete Magalhães', '(11)97392-9299', 'Rua jacundá', 'Fogão de Piso 4 Bocas Atlas Monaco com Acendimento Automático', 600, 1, 600),
(9, 'James', '(11)9829-3328', 'Rua Bittencourt 333', 'Forno de Micro-ondas Eletrolux 20L branco', 459, 3, 1377),
(10, 'Lays ', '(11)9397-3883', 'Rua 12 de outubro', 'Geladeira Frost Free Brastemp branca 375 litros', 2068.6, 4, 8274.4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`);

--
-- Índices para tabela `solicitacoes`
--
ALTER TABLE `solicitacoes`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `solicitacoes`
--
ALTER TABLE `solicitacoes`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
