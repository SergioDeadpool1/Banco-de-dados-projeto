-- MySQL dump 10.16  Distrib 10.1.40-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: supermercado
-- ------------------------------------------------------
-- Server version	10.1.40-MariaDB

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `cod_cliente` int(11) NOT NULL,
  `nome` varchar(10) DEFAULT NULL,
  `endereço` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Aeda','Caruaru'),(2,'Roberto','Palmares'),(3,'sergio','gyg'),(5,'Wolney','Caruaru');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `numero_dep` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`numero_dep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (5,'finanças'),(6,'associados');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pagamento`
--

DROP TABLE IF EXISTS `forma_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forma_pagamento` (
  `numero_venda` int(11) NOT NULL,
  `descrição` varchar(200) DEFAULT NULL,
  `n_cartão` varchar(12) DEFAULT NULL,
  `valid_cartão` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`numero_venda`),
  CONSTRAINT `forma_pagamento_numero_venda` FOREIGN KEY (`numero_venda`) REFERENCES `venda` (`numero_venda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pagamento`
--

LOCK TABLES `forma_pagamento` WRITE;
/*!40000 ALTER TABLE `forma_pagamento` DISABLE KEYS */;
INSERT INTO `forma_pagamento` VALUES (8,' frango ','1205014522','09-06'),(58,' frango_grelhado ','1211114522','08-07');
/*!40000 ALTER TABLE `forma_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `cod_fornecedor` int(11) NOT NULL,
  `nome` varchar(10) DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `endereço` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`cod_fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,' Roberto','Compare','55180666','ninguem_sabe'),(2,' Gabriela','Kibom','55185566','n_sabe');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerente`
--

DROP TABLE IF EXISTS `gerente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerente` (
  `cod_gerente` int(11) NOT NULL,
  `nome` varchar(10) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `endereço` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`cod_gerente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerente`
--

LOCK TABLES `gerente` WRITE;
/*!40000 ALTER TABLE `gerente` DISABLE KEYS */;
INSERT INTO `gerente` VALUES (1,'Everaldo','88445566','lugarnenhum'),(2,'Luíz','44445566','Van_nãoseioq');
/*!40000 ALTER TABLE `gerente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_vendas`
--

DROP TABLE IF EXISTS `itens_vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itens_vendas` (
  `codigo_venda` int(11) NOT NULL,
  `codigo_produto` int(11) NOT NULL,
  `quantidade` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo_venda`,`codigo_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_vendas`
--

LOCK TABLES `itens_vendas` WRITE;
/*!40000 ALTER TABLE `itens_vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `itens_vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `cod_produto` int(11) NOT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `preço_unitário` float DEFAULT NULL,
  `cod_fornecedor` int(11) NOT NULL,
  PRIMARY KEY (`cod_produto`,`cod_fornecedor`),
  KEY `produto_cod_fornecedor` (`cod_fornecedor`),
  CONSTRAINT `produto_cod_fornecedor` FOREIGN KEY (`cod_fornecedor`) REFERENCES `fornecedor` (`cod_fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (4,'1',4.85,2),(6,'5',3.75,1);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_cliente`
--

DROP TABLE IF EXISTS `telefone_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone_cliente` (
  `cod_cliente` int(11) NOT NULL,
  `telefone` int(11) NOT NULL,
  PRIMARY KEY (`cod_cliente`,`telefone`),
  CONSTRAINT `cliente_telefone_cliente` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_cliente`
--

LOCK TABLES `telefone_cliente` WRITE;
/*!40000 ALTER TABLE `telefone_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefone_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_fornecedor`
--

DROP TABLE IF EXISTS `telefone_fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone_fornecedor` (
  `cod_fornecedor` int(11) NOT NULL,
  `telefone` int(11) NOT NULL,
  PRIMARY KEY (`cod_fornecedor`,`telefone`),
  CONSTRAINT `telefone_fornecedor_telefone` FOREIGN KEY (`cod_fornecedor`) REFERENCES `fornecedor` (`cod_fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_fornecedor`
--

LOCK TABLES `telefone_fornecedor` WRITE;
/*!40000 ALTER TABLE `telefone_fornecedor` DISABLE KEYS */;
INSERT INTO `telefone_fornecedor` VALUES (1,98457584),(2,98222584);
/*!40000 ALTER TABLE `telefone_fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_gerente`
--

DROP TABLE IF EXISTS `telefone_gerente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone_gerente` (
  `cod_gerente` int(11) NOT NULL,
  `telefone` int(11) NOT NULL,
  PRIMARY KEY (`cod_gerente`,`telefone`),
  CONSTRAINT `telefone_gerente_telefone` FOREIGN KEY (`cod_gerente`) REFERENCES `gerente` (`cod_gerente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_gerente`
--

LOCK TABLES `telefone_gerente` WRITE;
/*!40000 ALTER TABLE `telefone_gerente` DISABLE KEYS */;
INSERT INTO `telefone_gerente` VALUES (1,789985544),(2,789933344);
/*!40000 ALTER TABLE `telefone_gerente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_cliente`
--

DROP TABLE IF EXISTS `v_cliente`;
/*!50001 DROP VIEW IF EXISTS `v_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_cliente` (
  `cod_cliente` tinyint NOT NULL,
  `nome` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venda` (
  `numero_venda` int(11) NOT NULL,
  `data_venda` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `cod_cliente` int(11) DEFAULT NULL,
  `preço_total` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`numero_venda`),
  KEY `venda_cod_cliente` (`cod_cliente`),
  CONSTRAINT `venda_cod_cliente` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (8,'2011-11-10','2010-10-10',1,38.40),(58,'2011-11-10','2010-10-10',2,88.60);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `v_cliente`
--

/*!50001 DROP TABLE IF EXISTS `v_cliente`*/;
/*!50001 DROP VIEW IF EXISTS `v_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_cliente` AS select `cliente`.`cod_cliente` AS `cod_cliente`,`cliente`.`nome` AS `nome` from `cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-14 17:54:42
