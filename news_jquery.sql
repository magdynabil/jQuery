-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2022 at 01:06 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_jquery`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `news_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_name`, `comment`, `news_id`) VALUES
(2, 'magdy', 'its ok its okits ok its ok its ok its okits ok its ok', 30),
(3, 'rewrwerewrwer', 'werwerwerwerewr', 30),
(4, 'gedfgdfgdfgdfgdfgdfg', 'dfgdfgfdgdfgdf', 29),
(5, 'gedfgdfgdfgdfgdfgdfg', 'dfgdfgfdgdfgdf', 29),
(6, 'gedfgdfgdfgdfgdfgdfg', 'dfgdfgfdgdfgdf', 29),
(7, 'asfasfsdf', 'fdsfdsfdsfdsf', 29),
(8, 'ggggg', 'ggggfggfggg', 29),
(9, 'fdgfdsfd', 'dsffdfdsfsd', 29),
(10, 'ggfgfgfg', 'gffffffffffffff', 29),
(11, 'fdfdddfd', 'dfdfdfddddddddddddddd', 29),
(12, 'fdfvfvfdv', 'vfdvfdvvcvvvvvvvvvvv', 29),
(13, 'fewfsdfdsdsd', 'fdsssssssssssssssssss', 29),
(14, 'fsdfffffffffffffffff', 'fdssssssssssssss', 29);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` char(255) NOT NULL,
  `body` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `body`) VALUES
(15, '444444444477777777777444444444444', '99999999999999999999999999999999999999999999999999999999999999999'),
(16, '11111111111111111111111111111111111111111111111111111', '11111111111111111111111111111111111111111111111111111111111111111111'),
(17, '111111111111dqdsasdasd11111111111111111111111111111111111111111', '11111111111111111111111111111111111111111111111111111111111111111111saddasdasdsads'),
(18, 'Ù…Ø¨Ø«Ø§ØªØ¨Ø§ÙŠØ³Ù„ØªÙ†ÙŠØ³Ù†Ù„Ø§Ù‰Ø³ÙŠÙ„Ø©ÙŠØ³Ù„Ø§ÙŠØ³ÙŠØ³ÙŠ', 'ÙŠØ³Ø¨Ø¨Ø³ÙŠØ±Ø§Ù„Ø§ÙŠØ³Ù„ÙŠØ³Ù„Ø§Ø¨Ù„ÙŠØ³Ø§Ø³ÙŠØ§Ø³ÙŠØ¨Ù„Ø§Ø³ÙŠØ¨ÙŠØ³Ù„Ø§ Ø¨ÙŠØ³Ù„Ø§Ù‰Ø¨Ù„Ø§ ÙŠØ³Ø¨Ù‰Ù„Ø§Ø³ÙŠÙ‰Ø¨Ù„Ø§ÙŠØ³Ù‰Ø¨ÙŠØ³Ø¨Ù„Ø§ÙŠØ³Ù‰Ø³ÙŠÙ„Ø§Ø¨Ø³ÙŠÙŠØ³ÙŠØ³Ø±Ù†Ù‰Ø³ÙŠÙŠØ³Ù„Ø§ÙˆÙ‰ÙŠØ³'),
(19, 'Ø«ØµØ«Ø¶ØµØ«ØµØ¶Ø«Ø¶ØµØ«Ø¶ØµØ«ØµØ¶', 'Ø«ØµØ¶Ø«ØµØ¶Ø«Ø¶ØµØ«Ø¶ØµØ«Ø¶ØµØ«ØµØ¶Ø«ØµØ¶Ø«Ø¶ØµØ«Ø«Ø¶ØµØ«Ø«ØµØ¶Ø«Ø¶ØµØµØ«ØµØ¶Ø«Ø¶ØµØ«Ø¶ØµØ«ØµØ¶Ø«ÙŠØµØ«'),
(23, 'Ø«ØµØ«Ø¶ØµØ«ØµØ¶Ø«Ø¶ØµØ«Ø¶ØµØ«ØµØ¶', 'Ø«ØµØ¶Ø«ØµØ¶Ø«Ø¶ØµØ«Ø¶ØµØ«Ø¶ØµØ«ØµØ¶Ø«ØµØ¶Ø«Ø¶ØµØ«Ø«Ø¶ØµØ«Ø«ØµØ¶Ø«Ø¶ØµØµØ«ØµØ¶Ø«Ø¶ØµØ«Ø¶ØµØ«ØµØ¶Ø«ÙŠØµØ«'),
(24, 'Ø«ØµØ«Ø¶ØµØ«ØµØ¶Ø«Ø¶ØµØ«Ø¶ØµØ«ØµØ¶', 'Ø«ØµØ¶Ø«ØµØ¶Ø«Ø¶ØµØ«Ø¶ØµØ«Ø¶ØµØ«ØµØ¶Ø«ØµØ¶Ø«Ø¶ØµØ«Ø«Ø¶ØµØ«Ø«ØµØ¶Ø«Ø¶ØµØµØ«ØµØ¶Ø«Ø¶ØµØ«Ø¶ØµØ«ØµØ¶Ø«ÙŠØµØ«'),
(29, 'cxzcxcnzxbncxbncbxnxcbxbxcxbnxbzczxccbnzxcbnxzxcxzzxc zxbc zzx czx c', 'cxzjkchjzxchxzhjcxzncjxzhjcxzcgxzhzxgcgcxzcczxgczxhcghzxcgzxhczxhcczxhxzhchzxcgxzhcgzxjcslc;lzxxmnzx,..c ,zx xzzx'),
(30, 'cxzcxcnzxbncxbncbxnxcbxbxcxbnxbzczxccbnzxcbnxzxcxzzxc zxbc zzx czx c', 'cxzjkchjzxchxzhjcxzncjxzhjcxzcgxzhzxgcgcxzcczxgczxhcghzxcgzxhczxhcczxhxzhchzxcgxzhcgzxjcslc;lzxxmnzx,..c ,zx xzzx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
