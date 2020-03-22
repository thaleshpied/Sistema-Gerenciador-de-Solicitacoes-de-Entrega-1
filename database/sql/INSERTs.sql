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
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,'Centro',0.00,1);
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'categoria 1',1);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Belo Horizonte','MG',0.00);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clienteTelefone`
--

LOCK TABLES `clienteTelefone` WRITE;
/*!40000 ALTER TABLE `clienteTelefone` DISABLE KEYS */;
/*!40000 ALTER TABLE `clienteTelefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `entregador`
--

LOCK TABLES `entregador` WRITE;
/*!40000 ALTER TABLE `entregador` DISABLE KEYS */;
INSERT INTO `entregador` VALUES (1,'entregador 1',0,1440,1);
/*!40000 ALTER TABLE `entregador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estabelecimento`
--

LOCK TABLES `estabelecimento` WRITE;
/*!40000 ALTER TABLE `estabelecimento` DISABLE KEYS */;
INSERT INTO `estabelecimento` VALUES (1,'SGSE','SGSE',12345678901234,0,1440,127,'G');
/*!40000 ALTER TABLE `estabelecimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'SGSE','sgse@email.com','$2y$10$qd23WR/7POpFJ7kXsc0wi.OqBw9Pdfe8hyD8283nH90bkYf6GEJGi',1,'A',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2019_09_15_200203_create_bairro_table',1),(4,'2019_09_15_200203_create_categoria_table',1),(5,'2019_09_15_200203_create_cidade_table',1),(6,'2019_09_15_200203_create_clienteTelefone_table',1),(7,'2019_09_15_200203_create_cliente_table',1),(8,'2019_09_15_200203_create_endereco_table',1),(9,'2019_09_15_200203_create_entrega_table',1),(10,'2019_09_15_200203_create_entregador_table',1),(11,'2019_09_15_200203_create_estabelecimento_table',1),(12,'2019_09_15_200203_create_funcionario_table',1),(13,'2019_09_15_200203_create_pagamento_table',1),(14,'2019_09_15_200203_create_pedidoProdutoAdicional_table',1),(15,'2019_09_15_200203_create_pedidoProdutoTamanho_table',1),(16,'2019_09_15_200203_create_pedidoProduto_table',1),(17,'2019_09_15_200203_create_pedido_table',1),(18,'2019_09_15_200203_create_produtoAdicional_table',1),(19,'2019_09_15_200203_create_produtoTamanho_table',1),(20,'2019_09_15_200203_create_produto_table',1),(21,'2019_09_15_200204_add_foreign_keys_to_bairro_table',1),(22,'2019_09_15_200204_add_foreign_keys_to_clienteTelefone_table',1),(23,'2019_09_15_200204_add_foreign_keys_to_endereco_table',1),(24,'2019_09_15_200204_add_foreign_keys_to_entrega_table',1),(25,'2019_09_15_200204_add_foreign_keys_to_entregador_table',1),(26,'2019_09_15_200204_add_foreign_keys_to_funcionario_table',1),(27,'2019_09_15_200204_add_foreign_keys_to_pagamento_table',1),(28,'2019_09_15_200204_add_foreign_keys_to_pedidoProdutoAdicional_table',1),(29,'2019_09_15_200204_add_foreign_keys_to_pedidoProdutoTamanho_table',1),(30,'2019_09_15_200204_add_foreign_keys_to_pedidoProduto_table',1),(31,'2019_09_15_200204_add_foreign_keys_to_pedido_table',1),(32,'2019_09_15_200204_add_foreign_keys_to_produtoAdicional_table',1),(33,'2019_09_15_200204_add_foreign_keys_to_produtoTamanho_table',1),(34,'2019_09_15_200204_add_foreign_keys_to_produto_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidoProduto`
--

LOCK TABLES `pedidoProduto` WRITE;
/*!40000 ALTER TABLE `pedidoProduto` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidoProduto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidoProdutoAdicional`
--

LOCK TABLES `pedidoProdutoAdicional` WRITE;
/*!40000 ALTER TABLE `pedidoProdutoAdicional` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidoProdutoAdicional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidoProdutoTamanho`
--

LOCK TABLES `pedidoProdutoTamanho` WRITE;
/*!40000 ALTER TABLE `pedidoProdutoTamanho` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidoProdutoTamanho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `produtoAdicional`
--

LOCK TABLES `produtoAdicional` WRITE;
/*!40000 ALTER TABLE `produtoAdicional` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtoAdicional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `produtoTamanho`
--

LOCK TABLES `produtoTamanho` WRITE;
/*!40000 ALTER TABLE `produtoTamanho` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtoTamanho` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-22 15:35:08
