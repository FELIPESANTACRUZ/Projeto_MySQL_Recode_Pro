-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Out-2020 às 03:01
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
-- Banco de dados: `projeto_recode_mysql`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `finaceiro`
--

CREATE TABLE `finaceiro` (
  `idproduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
 /*TESTANDO GRUPO DE COMANDOS(select,insert,update,delete e DCL) na minha tabela produtos: 
    -- SELECT
    SELECT *
    FROM fseletro.produtos
    WHERE categoria = `geladerira`;
    
    SELECT *
    FROM fseletro.produtos
    WHERE preco < 1000;
    
     SELECT *
    FROM fseletro.produtos
    WHERE preco > 500 and < 900;
    
    SELECT *
    FROM fseletro.produtos
    WHERE descricao LIKE `%lava%`;
    
    SELECT *
    FROM fseletro.produtos
    WHERE descricao LIKE `%lava%`;
    
  
    SELECT *
    FROM fseletro.produtos
    WHERE descricao LIKE `lava_lou%`;
    
    
    -- UPDATE
    UPDATE `fseleto`.`produtos` 
    SET `preco_venda` = `1500` 
    WHERE (`id` = `10`);
    
    select * from produtos;
    
    -- DELETE
    
    select *
    from produtos
    where id= 10;
    
    -- DCL(linguagem de controle de dados)
    
    CREATE USER `user3`@`localhost` IDENTIFIED WITH mysql_native_password BY 'pass123'; -- criei um novo usuario chamado 'user3' e eu posso definir quais são o papéis e perfis 	eu defino para esse usuário. 
    
    */


--
--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `preco_venda` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `categoria`, `imagem`, `descricao`, `preco`, `preco_venda`) VALUES
(1, 'geladeira', 'Image/geladeira4.jpeg', 'Geladeira Frost Free Brastemp Side Inverse 540 litros', 6839, 5019),
(2, 'geladeira', 'Image/geladeira3.jpeg', 'Geladeira Frost Free Brastemp branca 375 litros', 2068.6, 1910.9),
(3, 'geladeira', 'Image/geladeira2.png', 'Geladeira Frost Free Brastemp Consul prata 340 litros', 2169, 2069),
(4, 'fogao', 'Image/fogao2.jpeg', 'Fogão 4 Bocas Consul Inox com Mesa de Vidro', 1200, 1129),
(5, 'fogao', 'Image/fogao1.jpeg', 'Fogão de Piso 4 Bocas Atlas Monaco com Acendimento Automático', 600, 519.7),
(6, 'mircoondas', 'Image/microondas3.jpeg', 'Micro-ondas Consul 32 litros inox 220V', 580, 409.88),
(7, 'microondas', 'Image/microondas2.jpeg', 'Micro-ondas 25L espelhado Philco 220V', 508.7, 463.53),
(8, 'microondas', 'Image/microondas1.jpeg', 'Forno de Micro-ondas Eletrolux 20L branco', 459, 436.05),
(9, 'lavalouca', 'Image/filtro.jpeg', 'Lava-louça Eletrolux Inox com 10 serviços,06 programas de lavagem,e painel Blue Touch', 3500, 2799),
(10, 'lavadoura', 'Image/lavadora3.jpeg', 'Lavadoura de roupas Philco Inverter 12kg', 2399, 2179.9),
(11, 'lavadoura', 'Image/maquinadelavar2.jpeg', 'Lavadoura de roupas Brastemp 11kg com turbo performance Branca', 1699, 1214.1),
(12, 'lavadoura', 'Image/maquinadelavar1.jpeg', 'Lavadoura de roupas Philco Inverter 12kg', 2399, 2179.9);

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
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `finaceiro`
--
ALTER TABLE `finaceiro`
  ADD PRIMARY KEY (`idproduto`);

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
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `solicitacoes`
--
ALTER TABLE `solicitacoes`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
