-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/07/2024 às 04:59
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `crudcharp`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `Id` int(11) NOT NULL,
  `Nome` longtext DEFAULT NULL,
  `Idade` int(11) NOT NULL,
  `Serie` int(11) NOT NULL,
  `NotaMedia` double NOT NULL,
  `Endereco` longtext DEFAULT NULL,
  `NomePai` longtext DEFAULT NULL,
  `NomeMae` longtext DEFAULT NULL,
  `DataNascimento` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`Id`, `Nome`, `Idade`, `Serie`, `NotaMedia`, `Endereco`, `NomePai`, `NomeMae`, `DataNascimento`) VALUES
(1, 'Alice', 10, 5, 8.5, '123 Main St', 'John Doe', 'Jane Doe', '2013-05-15 00:00:00.000000'),
(2, 'Bob', 11, 6, 7.2, '456 Oak St', 'Bob Smith', 'Alice Smith', '2012-08-21 00:00:00.000000'),
(3, 'Charlie', 9, 4, 9, '789 Pine St', 'Charlie Brown', 'Lucy Brown', '2014-02-10 00:00:00.000000'),
(4, 'David Dois', 10, 5, 8.8, '101 Cedar St', 'David Johnson', 'Emily Johnson', '2013-07-18 00:00:00.000000'),
(5, 'Emma', 11, 6, 7.5, '202 Elm St', 'Michael White', 'Sophia White', '2012-10-05 00:00:00.000000'),
(6, 'Frank', 9, 4, 9.2, '303 Maple St', 'Frank Williams', 'Grace Williams', '2014-01-22 00:00:00.000000'),
(7, 'Grace', 10, 5, 8, '404 Birch St', 'George Taylor', 'Olivia Taylor', '2013-04-30 00:00:00.000000'),
(8, 'Henry', 11, 6, 7.8, '505 Spruce St', 'Henry Moore', 'Lily Moore', '2012-09-14 00:00:00.000000'),
(9, 'Isabel', 9, 4, 9.5, '606 Walnut St', 'Isaac Davis', 'Ava Davis', '2014-03-07 00:00:00.000000'),
(10, 'Jack', 10, 5, 7.9, '707 Sycamore St', 'Jack Smith', 'Emma Smith', '2013-06-19 00:00:00.000000'),
(11, 'Katherine', 11, 6, 8.3, '808 Cedar St', 'James Martin', 'Sophia Martin', '2012-11-28 00:00:00.000000'),
(12, 'Liam', 9, 4, 9.1, '909 Oak St', 'Liam Turner', 'Ella Turner', '2014-02-01 00:00:00.000000'),
(13, 'Mia', 10, 5, 8.7, '1010 Maple St', 'Ryan Brown', 'Mia Brown', '2013-05-12 00:00:00.000000'),
(14, 'Nathan', 11, 6, 7.4, '1111 Birch St', 'Nathan Harris', 'Eva Harris', '2012-08-03 00:00:00.000000'),
(15, 'Olivia', 9, 4, 9.3, '1212 Pine St', 'Daniel Green', 'Olivia Green', '2014-01-09 00:00:00.000000'),
(16, 'Peter', 10, 5, 8.4, '1313 Elm St', 'Peter Clark', 'Ava Clark', '2013-04-18 00:00:00.000000'),
(17, 'Quinn', 11, 6, 7.1, '1414 Cedar St', 'Quinn Davis', 'Grace Davis', '2012-09-27 00:00:00.000000'),
(18, 'Rachel', 9, 4, 9.4, '1515 Walnut St', 'Richard White', 'Rachel White', '2014-02-14 00:00:00.000000'),
(19, 'Sam', 10, 5, 8.6, '1616 Sycamore St', 'Sam Turner', 'Emily Turner', '2013-06-06 00:00:00.000000'),
(20, 'Tristan', 11, 6, 7.7, '1717 Spruce St', 'Tristan Harris', 'Lily Harris', '2012-11-23 00:00:00.000000'),
(21, 'Uma', 9, 4, 9.6, '1818 Maple St', 'Uma Smith', 'Sophia Smith', '2014-03-30 00:00:00.000000'),
(22, 'Victor', 10, 5, 8.2, '1919 Oak St', 'Victor Martin', 'Ella Martin', '2013-05-24 00:00:00.000000'),
(23, 'Wendy', 11, 6, 7, '2020 Pine St', 'Wendy Brown', 'Michael Brown', '2012-10-10 00:00:00.000000'),
(24, 'Xander', 9, 4, 9.7, '2121 Birch St', 'Xander Turner', 'Sophia Turner', '2014-01-17 00:00:00.000000'),
(25, 'Yara', 10, 5, 8.1, '2222 Elm St', 'Yara Davis', 'John Davis', '2013-04-04 00:00:00.000000'),
(26, 'Zane', 11, 6, 7.3, '2323 Cedar St', 'Zane Harris', 'Lily Harris', '2012-09-08 00:00:00.000000'),
(27, 'Aaron', 9, 4, 9.8, '2424 Walnut St', 'Aaron Smith', 'Sophia Smith', '2014-02-21 00:00:00.000000'),
(28, 'Bella', 10, 5, 8.9, '2525 Sycamore St', 'Bella Martin', 'Ella Martin', '2013-06-14 00:00:00.000000'),
(29, 'Carlos', 11, 6, 7.6, '2626 Spruce St', 'Carlos Turner', 'Emily Turner', '2012-11-05 00:00:00.000000'),
(30, 'Diana', 9, 4, 9.9, '2727 Maple St', 'Diana White', 'Michael White', '2014-03-18 00:00:00.000000'),
(31, 'Ethan', 10, 5, 8.8, '2828 Oak St', 'Ethan Brown', 'Sophia Brown', '2013-04-23 00:00:00.000000'),
(32, 'Fiona', 11, 6, 7.5, '2929 Pine St', 'Fiona Harris', 'John Harris', '2012-10-16 00:00:00.000000'),
(33, 'Gavin', 9, 4, 9.2, '3030 Birch St', 'Gavin Smith', 'Olivia Smith', '2014-01-03 00:00:00.000000'),
(34, 'Holly', 10, 5, 8, '3131 Cedar St', 'Holly Davis', 'Daniel Davis', '2013-05-29 00:00:00.000000'),
(35, 'Ian', 11, 6, 7.8, '3232 Elm St', 'Ian Turner', 'Sophia Turner', '2012-09-20 00:00:00.000000'),
(36, 'Jenna', 9, 4, 9.5, '3333 Sycamore St', 'Jenna Martin', 'Ella Martin', '2014-02-26 00:00:00.000000'),
(37, 'Kevin', 10, 5, 8.4, '3434 Spruce St', 'Kevin Harris', 'Lily Harris', '2013-06-09 00:00:00.000000'),
(38, 'Lila', 11, 6, 7.2, '3535 Maple St', 'Lila White', 'Michael White', '2012-08-14 00:00:00.000000'),
(39, 'Mark', 9, 4, 9.3, '3636 Oak St', 'Mark Brown', 'Sophia Brown', '2014-01-12 00:00:00.000000'),
(40, 'Nina', 10, 5, 8.7, '3737 Pine St', 'Nina Smith', 'Olivia Smith', '2013-05-17 00:00:00.000000'),
(41, 'Oscar', 11, 6, 7.9, '3838 Birch St', 'Oscar Turner', 'Emily Turner', '2012-09-30 00:00:00.000000'),
(42, 'Paula', 9, 4, 9.4, '3939 Elm St', 'Paula Harris', 'John Harris', '2014-03-11 00:00:00.000000'),
(43, 'Quincy', 10, 5, 8.1, '4040 Cedar St', 'Quincy Davis', 'Daniel Davis', '2013-04-01 00:00:00.000000'),
(44, 'Ruby', 11, 6, 7.7, '4141 Sycamore St', 'Ruby Martin', 'Ella Martin', '2012-11-30 00:00:00.000000'),
(45, 'Steve', 9, 4, 9.6, '4242 Spruce St', 'Steve White', 'Michael White', '2014-02-04 00:00:00.000000'),
(46, 'Tina', 10, 5, 8.3, '4343 Maple St', 'Tina Brown', 'Sophia Brown', '2013-05-08 00:00:00.000000'),
(47, 'Ursula', 11, 6, 7.1, '4444 Oak St', 'Ursula Smith', 'Olivia Smith', '2012-08-27 00:00:00.000000'),
(48, 'Vince', 9, 4, 9.1, '4545 Pine St', 'Vince Turner', 'Emily Turner', '2014-01-20 00:00:00.000000'),
(49, 'Wes', 10, 5, 8.9, '4646 Birch St', 'Wes Harris', 'Lily Harris', '2013-04-27 00:00:00.000000'),
(50, 'Xena', 11, 6, 7.4, '4747 Elm St', 'Xena Davis', 'John Davis', '2012-09-13 00:00:00.000000'),
(51, 'Yvonne', 9, 4, 9.7, '4848 Sycamore St', 'Yvonne Martin', 'Ella Martin', '2014-03-24 00:00:00.000000'),
(52, 'Zach', 10, 5, 8.2, '4949 Spruce St', 'Zach White', 'Michael White', '2013-05-03 00:00:00.000000'),
(53, 'Eduardo Vieira Germano', 42, 3, 8.2, 'Rua Abc', 'Gilson', 'Maria Souza', '1985-02-10 00:00:00.000000'),
(55, 'Paula Bruna', 10, 2, 6.6, 'Rua da Bruna ', 'Cleber Viera', 'Veronica ', '2005-02-10 00:00:00.000000');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
