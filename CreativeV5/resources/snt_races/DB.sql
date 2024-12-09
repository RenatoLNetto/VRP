-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para devnetto
CREATE DATABASE IF NOT EXISTS `nettov5` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `nettov5`;

-- Copiando estrutura para tabela devnetto.snt_races_data
CREATE TABLE IF NOT EXISTS `snt_races_data` (
  `user_id` int(11) NOT NULL,
  `race_name` varchar(255) NOT NULL,
  `data_type` int(11) NOT NULL DEFAULT 0,
  `data_value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`,`race_name`,`data_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela devnetto.snt_races_data: ~37 rows (aproximadamente)
INSERT INTO `snt_races_data` (`user_id`, `race_name`, `data_type`, `data_value`) VALUES
	(20, 'Quanto Mais Facil Melhor!!', 0, 1),
	(21, 'Piloto de Reta', 0, 1),
	(22, 'Quanto Mais Facil Melhor!!', 0, 2),
	(25, 'Avião sem Asas', 0, 1),
	(25, 'Descendo a Madeireira', 0, 1),
	(25, 'Menino de Cidade', 0, 1),
	(25, 'Menino de Copacabana!', 0, 1),
	(25, 'Piloto de Reta', 1, 1),
	(25, 'Piloto de Reta', 2, 10),
	(25, 'Quanto Mais Facil Melhor!!', 0, 4),
	(25, 'Quanto Mais Facil Melhor!!', 1, 3),
	(25, 'Quanto Mais Facil Melhor!!', 2, 247),
	(25, 'Quanto Mais Facil Melhor1!!', 1, 1),
	(25, 'Quanto Mais Facil Melhor1!!', 2, 248),
	(25, 'Volta ao Mundo', 0, 2),
	(549, 'Menino de Copacabana!', 0, 1),
	(549, 'Piloto de Reta', 0, 1),
	(558, 'Menino de Cidade', 0, 1),
	(558, 'Menino de Copacabana!', 0, 1),
	(558, 'Piloto de Reta', 0, 1),
	(558, 'Quanto Mais Facil Melhor!!', 0, 13),
	(558, 'Quanto Mais Facil Melhor!!', 1, 2),
	(558, 'Quanto Mais Facil Melhor!!', 2, 11),
	(558, 'Volta ao Mundo', 0, 2),
	(736, 'Quanto Mais Facil Melhor!!', 0, 10),
	(736, 'Quanto Mais Facil Melhor!!', 1, 2),
	(736, 'Quanto Mais Facil Melhor!!', 2, 17),
	(736, 'Volta ao Mundo', 0, 1),
	(787, 'Quanto Mais Facil Melhor!!', 0, 3),
	(789, 'Quanto Mais Facil Melhor!!', 0, 4),
	(891, 'Menino de Cidade', 0, 1),
	(891, 'Menino de Copacabana!', 0, 1),
	(891, 'Quanto Mais Facil Melhor!!', 0, 9),
	(891, 'Quanto Mais Facil Melhor!!', 1, 3),
	(891, 'Quanto Mais Facil Melhor!!', 2, 6),
	(917, 'Quanto Mais Facil Melhor!!', 0, 6),
	(917, 'Volta ao Mundo', 0, 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
