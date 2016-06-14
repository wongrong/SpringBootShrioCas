-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1:3306
-- 生成日期: 2016 年 06 月 08 日 05:11
-- 服务器版本: 5.5.20
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `score`
--

CREATE TABLE IF NOT EXISTS `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(32) DEFAULT NULL,
  `subject_name` varchar(32) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `exam_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

--
-- 导出表中的数据 `score`
--


-- --------------------------------------------------------

--
-- 表的结构 `t_permission`
--

CREATE TABLE IF NOT EXISTS `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionname` varchar(32) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 导出表中的数据 `t_permission`
--

INSERT INTO `t_permission` (`id`, `permissionname`, `role_id`) VALUES
(1, 'add', 2),
(2, 'del', 1),
(3, 'update', 2),
(4, 'query', 3),
(5, 'user:query', 1),
(6, 'user:edit', 2);

-- --------------------------------------------------------

--
-- 表的结构 `t_role`
--

CREATE TABLE IF NOT EXISTS `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(32) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 导出表中的数据 `t_role`
--

INSERT INTO `t_role` (`id`, `rolename`) VALUES
(1, 'admin'),
(2, 'manager'),
(3, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 导出表中的数据 `t_user`
--

INSERT INTO `t_user` (`id`, `username`, `password`) VALUES
(1, 'tom', '123456'),
(2, 'jack', '123456'),
(3, 'rose', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `t_user_role`
--

CREATE TABLE IF NOT EXISTS `t_user_role` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `t_user_role`
--

INSERT INTO `t_user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 3),
(3, 3);

-- --------------------------------------------------------