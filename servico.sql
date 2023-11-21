-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/11/2023 às 01:50
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tiao`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `id_servico` int(11) NOT NULL,
  `nome_servico` varchar(20) NOT NULL,
  `descricao` text NOT NULL,
  `foto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`id_servico`, `nome_servico`, `descricao`, `foto`) VALUES
(1, 'Perolizada', 'As vantagens da pintura perolada são numerosas. Primeiramente, ela confere ao veículo uma aparência luxuosa e exclusiva, tornando-o mais atraente e chamativo. Além disso, o efeito perolado pode ajudar a disfarçar pequenas imperfeições na carroceria, tornando-as menos visíveis. A pintura perolada também é conhecida por manter sua aparência por mais tempo do que outras pinturas, pois o revestimento transparente protege a camada perolada e ajuda a evitar danos causados pela exposição ao sol e aos elementos.\r\n\r\nPara informações de valores favor solicitar orçamento', 'serv1.jpg'),
(2, 'TRADICIONAL', 'Imagine-se voltando no tempo, para uma época em que os carros eram verdadeiras obras de arte sobre rodas, uma expressão do requinte e do bom gosto. Agora, imagine trazer de volta todo esse esplendor com a restauração de pintura clássica de carros da \"Tião Pinturas Veiculares\". Na era moderna, onde a estética muitas vezes supera a substância, os carros clássicos permanecem como ícones intemporais. Com sua elegância e charme inigualáveis, eles merecem um cuidado especial para manter sua beleza original. É aí que entramos. Na \"Tião Pinturas Veiculares\", somos apaixonados por preservar a história automotiva. Nossa equipe de artesãos altamente qualificados e experientes é especializada em restaurar a pintura de carros clássicos com um compromisso inabalável com a autenticidade. Usamos técnicas tradicionais de pintura e materiais de alta qualidade para garantir que o seu carro clássico brilhe novamente. Cada detalhe é tratado com cuidado meticuloso, desde a escolha das cores originais até os acabamentos perfeitos.\r\n\r\nPara informações de valores favor solicitar orçamento', 'serv2.jpg'),
(3, 'Cromada', 'A pintura cromada é uma técnica de acabamento automotivo que cria um efeito espelhado semelhante ao do cromo metálico, mas sem o uso de materiais de metal real. É uma técnica altamente especializada que envolve o uso de tintas cromadas ou espelhadas para obter um acabamento brilhante e reflexivo, que pode dar a impressão de que a superfície é de metal cromado.\r\n\r\nPara informações de valores favor solicitar orçamento', 'serv3.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`id_servico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `id_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
