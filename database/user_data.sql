-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 08, 2025 at 06:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blackhole`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_persian_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `data`) VALUES
(1, 'hello'),
(1, 'hello'),
(2, 'my name is farhad ranjbar'),
(1, 'my name is farhad ranjabr2'),
(1, 'hello from amozeshgam'),
(1, 'asjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhgasjd;flkkkkkkkkkkkkkkkkk;alsdfkja;lsdkfja;lskdfj;alskdjf;laskjdfl;kjl;kjlkjlsjglkjsdlgkfjsldkgjsdgfkjhsdgkjshgkjshdgkjsdhdfgkjhskgjhsdkdjghskjghfslkjhgskjhfgksjhdgkjshgkjshgfkjhsgkfjhskjgfhskjghskjhgksjhg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
