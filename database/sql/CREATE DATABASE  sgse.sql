CREATE DATABASE  IF NOT EXISTS `sgse` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `sgse`;
-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: sgse
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bairro` (
  `codigoBairro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valorFrete` double(8,2) NOT NULL,
  `codigoCidade` int(11) NOT NULL,
  PRIMARY KEY (`codigoBairro`),
  KEY `FK_Bairro_1` (`codigoCidade`),
  CONSTRAINT `FK_Bairro_1` FOREIGN KEY (`codigoCidade`) REFERENCES `cidade` (`codigoCidade`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `codigoCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`codigoCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `codigoCidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valorFrete` double(8,2) NOT NULL,
  PRIMARY KEY (`codigoCidade`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `codigoCliente` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`codigoCliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clienteTelefone`
--

DROP TABLE IF EXISTS `clienteTelefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clienteTelefone` (
  `clienteTelefone` bigint(20) NOT NULL,
  `codigoCliente` int(11) NOT NULL,
  KEY `FK_clienteTelefone_1` (`codigoCliente`),
  CONSTRAINT `FK_clienteTelefone_1` FOREIGN KEY (`codigoCliente`) REFERENCES `cliente` (`codigoCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `codigoEndereco` int(11) NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complemento` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `codigoBairro` int(11) NOT NULL,
  PRIMARY KEY (`codigoEndereco`),
  KEY `FK_Endereco_1` (`codigoBairro`),
  CONSTRAINT `FK_Endereco_1` FOREIGN KEY (`codigoBairro`) REFERENCES `bairro` (`codigoBairro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entrega`
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrega` (
  `codigoEntrega` int(11) NOT NULL AUTO_INCREMENT,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigoPedido` int(11) NOT NULL,
  `codigoEndereco` int(11) NOT NULL,
  `codigoEntregador` int(11) NOT NULL,
  PRIMARY KEY (`codigoEntrega`),
  KEY `FK_Entrega_1` (`codigoPedido`),
  KEY `FK_Entrega_2` (`codigoEndereco`),
  KEY `FK_Entrega_3` (`codigoEntregador`),
  CONSTRAINT `FK_Entrega_1` FOREIGN KEY (`codigoPedido`) REFERENCES `pedido` (`codigoPedido`),
  CONSTRAINT `FK_Entrega_2` FOREIGN KEY (`codigoEndereco`) REFERENCES `endereco` (`codigoEndereco`),
  CONSTRAINT `FK_Entrega_3` FOREIGN KEY (`codigoEntregador`) REFERENCES `entregador` (`codigoEntregador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entregador`
--

DROP TABLE IF EXISTS `entregador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entregador` (
  `codigoEntregador` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inicioJornadaTrabalho` int(11) NOT NULL,
  `fimJornadaTrabalho` int(11) NOT NULL,
  `codigoEstabelecimento` int(11) NOT NULL,
  PRIMARY KEY (`codigoEntregador`),
  KEY `FK_Entregador_1` (`codigoEstabelecimento`),
  CONSTRAINT `FK_Entregador_1` FOREIGN KEY (`codigoEstabelecimento`) REFERENCES `estabelecimento` (`codigoEstabelecimento`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estabelecimento`
--

DROP TABLE IF EXISTS `estabelecimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estabelecimento` (
  `codigoEstabelecimento` int(11) NOT NULL AUTO_INCREMENT,
  `razaoSocial` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomeFantasia` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnpj` bigint(20) NOT NULL,
  `inicioJornadaFuncionamento` int(11) NOT NULL,
  `fimJornadaFuncionamento` int(11) NOT NULL,
  `diasFuncionamento` int(11) NOT NULL,
  `identidadeVisual` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`codigoEstabelecimento`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `codigoFuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `administrador` tinyint(1) NOT NULL,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigoEstabelecimento` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`codigoFuncionario`),
  UNIQUE KEY `email` (`email`),
  KEY `FK_Funcionario_1` (`codigoEstabelecimento`),
  CONSTRAINT `FK_Funcionario_1` FOREIGN KEY (`codigoEstabelecimento`) REFERENCES `estabelecimento` (`codigoEstabelecimento`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagamento` (
  `codigoPagamento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` double(8,2) NOT NULL,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigoPedido` int(11) NOT NULL,
  PRIMARY KEY (`codigoPagamento`),
  KEY `FK_Pagamento_1` (`codigoPedido`),
  CONSTRAINT `FK_Pagamento_1` FOREIGN KEY (`codigoPedido`) REFERENCES `pedido` (`codigoPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `codigoPedido` int(11) NOT NULL AUTO_INCREMENT,
  `valorTotal` double(8,2) NOT NULL,
  `formaPagamento` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacoes` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `situacao` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigoCliente` int(11) NOT NULL,
  `codigoFuncionario` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`codigoPedido`),
  KEY `FK_Pedido_1` (`codigoCliente`),
  KEY `FK_Pedido_2` (`codigoFuncionario`),
  CONSTRAINT `FK_Pedido_1` FOREIGN KEY (`codigoCliente`) REFERENCES `cliente` (`codigoCliente`),
  CONSTRAINT `FK_Pedido_2` FOREIGN KEY (`codigoFuncionario`) REFERENCES `funcionario` (`codigoFuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedidoProduto`
--

DROP TABLE IF EXISTS `pedidoProduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidoProduto` (
  `codigoPedidoProduto` int(11) NOT NULL AUTO_INCREMENT,
  `codigoPedido` int(11) NOT NULL,
  `codigoProduto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`codigoPedidoProduto`),
  KEY `FK_PedidoProduto_1` (`codigoPedido`),
  KEY `FK_PedidoProduto_2` (`codigoProduto`),
  CONSTRAINT `FK_PedidoProduto_1` FOREIGN KEY (`codigoPedido`) REFERENCES `pedido` (`codigoPedido`),
  CONSTRAINT `FK_PedidoProduto_2` FOREIGN KEY (`codigoProduto`) REFERENCES `produto` (`codigoProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedidoProdutoAdicional`
--

DROP TABLE IF EXISTS `pedidoProdutoAdicional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidoProdutoAdicional` (
  `codigoProdutoAdicional` int(11) NOT NULL,
  `codigoPedidoProduto` int(11) NOT NULL,
  `codigoPedidoProdutoTamanho` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  KEY `FK_PedidoProdutoAdicional_1` (`codigoProdutoAdicional`),
  KEY `FK_PedidoProdutoAdicional_2` (`codigoPedidoProduto`),
  KEY `FK_PedidoProdutoAdicional_3` (`codigoPedidoProdutoTamanho`),
  CONSTRAINT `FK_PedidoProdutoAdicional_1` FOREIGN KEY (`codigoProdutoAdicional`) REFERENCES `produtoAdicional` (`codigoProdutoAdicional`),
  CONSTRAINT `FK_PedidoProdutoAdicional_2` FOREIGN KEY (`codigoPedidoProduto`) REFERENCES `pedidoProduto` (`codigoPedidoProduto`),
  CONSTRAINT `FK_PedidoProdutoAdicional_3` FOREIGN KEY (`codigoPedidoProdutoTamanho`) REFERENCES `pedidoProdutoTamanho` (`codigoPedidoProdutoTamanho`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedidoProdutoTamanho`
--

DROP TABLE IF EXISTS `pedidoProdutoTamanho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidoProdutoTamanho` (
  `codigoPedidoProdutoTamanho` int(11) NOT NULL AUTO_INCREMENT,
  `codigoPedido` int(11) NOT NULL,
  `codigoProdutoTamanho` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`codigoPedidoProdutoTamanho`),
  KEY `FK_PedidoProdutoTamanho_1` (`codigoPedido`),
  KEY `FK_PedidoProdutoTamanho_2` (`codigoProdutoTamanho`),
  CONSTRAINT `FK_PedidoProdutoTamanho_1` FOREIGN KEY (`codigoPedido`) REFERENCES `pedido` (`codigoPedido`),
  CONSTRAINT `FK_PedidoProdutoTamanho_2` FOREIGN KEY (`codigoProdutoTamanho`) REFERENCES `produtoTamanho` (`codigoProdutoTamanho`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `codigoProduto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valorUnitario` double(8,2) NOT NULL,
  `quantidadeEstoque` int(11) NOT NULL,
  `descricao` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigoCategoria` int(11) NOT NULL,
  PRIMARY KEY (`codigoProduto`),
  KEY `FK_Produto_1` (`codigoCategoria`),
  CONSTRAINT `FK_Produto_1` FOREIGN KEY (`codigoCategoria`) REFERENCES `categoria` (`codigoCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `produtoAdicional`
--

DROP TABLE IF EXISTS `produtoAdicional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtoAdicional` (
  `codigoProdutoAdicional` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valorUnitario` double(8,2) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `codigoProduto` int(11) NOT NULL,
  PRIMARY KEY (`codigoProdutoAdicional`),
  KEY `FK_ProdutoAdicional_1` (`codigoProduto`),
  CONSTRAINT `FK_ProdutoAdicional_1` FOREIGN KEY (`codigoProduto`) REFERENCES `produto` (`codigoProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `produtoTamanho`
--

DROP TABLE IF EXISTS `produtoTamanho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtoTamanho` (
  `codigoProdutoTamanho` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valorUnitario` double(8,2) NOT NULL,
  `quantidadeEstoque` int(11) NOT NULL,
  `codigoProduto` int(11) NOT NULL,
  PRIMARY KEY (`codigoProdutoTamanho`),
  KEY `FK_ProdutoTamanho_1` (`codigoProduto`),
  CONSTRAINT `FK_ProdutoTamanho_1` FOREIGN KEY (`codigoProduto`) REFERENCES `produto` (`codigoProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-22 15:34:27
