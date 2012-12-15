-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 15 Ara 2012, 13:51:11
-- Sunucu sürümü: 5.5.28
-- PHP Sürümü: 5.3.10-1ubuntu3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `sahte`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilan`
--

CREATE TABLE IF NOT EXISTS `ilan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(128) NOT NULL,
  `kayit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `baslik` varchar(128) NOT NULL,
  `icerik` text NOT NULL,
  `kullaniciKimlik` int(11) NOT NULL,
  `goruntuleme` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilan_kategori`
--

CREATE TABLE IF NOT EXISTS `ilan_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ustKat` int(11) NOT NULL,
  `adi` varchar(128) NOT NULL,
  `resim` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kimlik`
--

CREATE TABLE IF NOT EXISTS `kimlik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` varchar(64) NOT NULL,
  `soyadi` varchar(64) NOT NULL,
  `gorunecekAd` varchar(64) NOT NULL,
  `eposta` varchar(128) NOT NULL,
  `ip` int(11) NOT NULL,
  `kayit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `medya`
--

CREATE TABLE IF NOT EXISTS `medya` (
  `id` int(11) NOT NULL,
  `ilanId` int(11) NOT NULL,
  `medya` varchar(512) NOT NULL,
  `aciklama` varchar(512) NOT NULL,
  `ip` varchar(128) NOT NULL,
  `kayit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
