-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Gazda: localhost
-- Timp de generare: 09 Feb 2014 la 18:51
-- Versiune server: 5.6.14
-- Versiune PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Bază de date: `cms`
--
CREATE DATABASE IF NOT EXISTS `cms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cms`;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `post_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Salvarea datelor din tabel `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `post_date`) VALUES
(2, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla commodo aliquam bibendum. Cras in ante in nulla congue sodales at vitae nunc. In consectetur auctor ipsum hendrerit commodo. Praesent sagittis justo velit, a fermentum velit accumsan vel. In ante lorem, fermentum ut neque eu, faucibus ornare velit. Nullam condimentum condimentum libero quis aliquet. Suspendisse vitae augue sed dolor cursus ultricies quis id libero. Aliquam a pellentesque turpis. Nam semper luctus velit, et venenatis lacus posuere sed. Curabitur nibh turpis, euismod eget quam vitae, faucibus tristique purus. Donec dictum quis sem in gravida.', '2014-02-08 23:29:23'),
(3, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu lorem bibendum, convallis dui eget, ornare sem. Proin quam justo, fermentum vel vestibulum eget, ultricies ut erat. Maecenas gravida ultricies accumsan. Nulla nec sem posuere, tempus velit eu, mollis augue. Integer at tristique turpis. Nullam eu ornare velit. Nulla facilisi. Curabitur in velit quis nisl bibendum sodales sit amet sed dui. Aliquam venenatis fermentum sem, eget porta libero adipiscing quis. Vivamus eget hendrerit lacus. Curabitur eleifend elementum scelerisque. Sed eget enim eleifend, adipiscing enim vitae, consequat dui. Maecenas rhoncus libero ut dignissim luctus. Aliquam sit amet elit libero.\r\n\r\nSed eget erat convallis, tincidunt orci ac, pharetra sem. Maecenas egestas in odio at facilisis. Ut et nisl nibh. Mauris nec suscipit massa. Cras justo tortor, bibendum ac congue a, vestibulum a orci. Morbi feugiat orci pharetra bibendum elementum. Mauris consectetur metus non nisi posuere, sed sollicitudin lectus luctus. Sed posuere leo quis purus aliquam, id lobortis tortor viverra. Nunc mollis massa at turpis fringilla, nec ultrices ipsum sagittis. In ornare consectetur ligula, consequat tincidunt diam porta ac. Donec quis felis leo. Morbi tincidunt mauris lacus, in pretium libero dapibus ut. Curabitur pulvinar egestas bibendum. Ut accumsan eros in elit rhoncus egestas.', '2014-02-08 23:31:39');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Salvarea datelor din tabel `config`
--

INSERT INTO `config` (`id`, `name`, `value`) VALUES
(1, 'title', 'Simple CMS'),
(2, 'description', 'This is a simple CMS written in PHP');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
