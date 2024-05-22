-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 11:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aqpg_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `choice_list`
--

CREATE TABLE `choice_list` (
  `question_id` int(30) NOT NULL,
  `choice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `choice_list`
--

INSERT INTO `choice_list` (`question_id`, `choice`) VALUES
(49, 'The function always terminates with mys(n) = factorial of n'),
(49, 'The function always terminates with mys(n) = 1+2+...+n\r\n'),
(49, ' The function terminates for positive n with mys(n) = factorial of n'),
(49, 'The function terminates for positive n with mys(n) = 1+2+...+n'),
(50, '2'),
(50, '3'),
(50, '4'),
(50, 'None of these'),
(51, 'Complete graph'),
(51, 'Regular Graph'),
(51, 'Multi Graph'),
(51, 'Simple Graph'),
(52, 'Root vertex'),
(52, 'Isolated Vertex'),
(52, 'Sink'),
(52, 'Articulation point'),
(53, 'Queue\r\n'),
(53, 'Stack\r\n'),
(53, 'Tree\r\n'),
(53, 'Array');

-- --------------------------------------------------------

--
-- Table structure for table `class_list`
--

CREATE TABLE `class_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `course_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_list`
--

INSERT INTO `class_list` (`id`, `user_id`, `course_id`, `name`, `description`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(4, 1, 5, '1st Year', 'BCA / MCA / BTECH', 0, 1, '2023-10-01 00:02:25', '2023-10-01 11:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `course_list`
--

CREATE TABLE `course_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_list`
--

INSERT INTO `course_list` (`id`, `user_id`, `name`, `description`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(5, 1, 'Data Structure', 'Data structures are fundamental concepts in computer science and programming that allow you to efficiently organize, store, and manipulate data. They are essential for solving a wide range of computational problems and optimizing algorithms', 0, 1, '2023-10-01 00:01:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_list`
--

CREATE TABLE `question_list` (
  `id` int(30) NOT NULL,
  `question_paper_id` int(30) NOT NULL,
  `question` text NOT NULL,
  `mark` double NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = single answer, \r\n2= multi-answer,\r\n3 = text answer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_list`
--

INSERT INTO `question_list` (`id`, `question_paper_id`, `question`, `mark`, `type`) VALUES
(11, 4, 'What is a Data Structure?', 2, 3),
(12, 4, 'Describe the types of Data Structures?', 2, 3),
(13, 4, 'What is a Linear Data Structure? Name a few examples.', 2, 3),
(14, 4, 'What are some applications of Data Structures??', 2, 3),
(15, 4, 'What is the difference between file structure and storage structure?', 2, 3),
(17, 4, 'How are the elements of a 2D array stored in the memory?', 2, 3),
(18, 4, 'What is a linked list Data Structure?', 2, 3),
(19, 4, 'Are linked lists considered linear or non-linear Data Structures?', 2, 3),
(20, 4, 'What are the advantages of a linked list over an array? In which scenarios do we use Linked List and when Array?', 2, 3),
(21, 4, 'What is a doubly-linked list? Give some examples.', 2, 3),
(22, 4, 'How do you reference all of the elements in a one-dimension array?', 2, 3),
(23, 4, 'What are dynamic Data Structures? Name a few.', 2, 3),
(24, 4, 'What is an algorithm?', 2, 3),
(25, 4, 'Why do we need to do an algorithm analysis?', 2, 3),
(26, 4, 'What is a stack?', 2, 3),
(27, 4, 'Where are stacks used?', 2, 3),
(28, 4, 'How do you reverse a linked list??', 2, 3),
(29, 4, 'How are duplicate nodes removed in an unsorted linked list?', 2, 3),
(30, 4, 'How do you find the sum of two linked lists using Stack?', 2, 3),
(31, 4, 'How do you print duplicate characters from a string?', 2, 3),
(32, 4, 'How can a given string be reversed using recursion?', 2, 3),
(33, 4, 'How are duplicate characters found in a string?', 2, 3),
(34, 4, 'How do you count the occurrence of a given character in a string?', 2, 3),
(35, 4, 'How do you check if a given string is a palindrome??', 2, 3),
(36, 4, 'How do you check if two strings are a rotation of each other?', 2, 3),
(37, 4, 'Define Queue. Write are different applications of queue? Explain queue operations with example.', 2, 3),
(38, 4, 'Explain circular linked list with example. How do you implement linked list operation in singly linked list? Explain.', 2, 3),
(39, 4, 'What is binary search tree? Write a program to implement insertion and deletion algorithms in binary search tree.', 2, 3),
(40, 4, 'How do you find complexity of algorithms? Explain', 2, 3),
(41, 4, 'Evaluate the expression ABCD-x+ using stack where A=5, B=4, C=3 and D=7', 2, 3),
(42, 4, 'What is priority queue? Why do you need this type of queue?', 2, 3),
(43, 4, 'Write a recursive program to find nth fibonacci number.', 2, 3),
(44, 4, 'Explain array implementation of list.', 2, 3),
(45, 4, 'Hand test selection sort with array of numbers 4, 71, 32, 19, 61, 2, -5 in descending order.', 2, 3),
(46, 4, 'Write a program to implement sequential search algorithm.', 2, 3),
(47, 4, 'What is graph traversal? Explain.', 2, 3),
(49, 4, 'Which of the following is correct?', 1, 1),
(50, 4, 'Minimum number of fields in each node of a doubly linked list is ________', 1, 1),
(51, 4, 'A graph in which all vertices have equal degree is known as ________', 1, 1),
(52, 4, 'A vertex of in-degree zero in a directed graph is called a/an', 1, 1),
(53, 4, 'The data structure required to check whether an expression contains a balanced parenthesis is?', 1, 1),
(54, 4, '<p><div class=\"translate\" style=\"box-sizing: inherit; margin: 5px 0px 0px; padding: 0px; vertical-align: baseline; outline: 0px; font-size: 15px; background: 0px 0px rgb(255, 255, 255); border: none; text-decoration: none; -webkit-box-flex: 0; flex: 0 0 27px; max-width: 27px; display: block; color: rgb(93, 103, 105); font-family: &quot;Source Sans Pro&quot;, Lato, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;\"></div></p><div class=\"entry_title\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; font-size: 15px; background: 0px 0px rgb(255, 255, 255); border: none; text-decoration: none; -webkit-box-flex: 0; flex: 0 0 90%; max-width: 90%; color: rgb(93, 103, 105); font-family: &quot;Source Sans Pro&quot;, Lato, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;\"><h1 class=\"entry-title\" style=\"box-sizing: inherit; margin: 0px 0px 20px; padding: 0px; vertical-align: baseline; outline: 0px; font-size: 25px; background: 0px 0px; border: none; text-decoration: none; font-style: normal; font-weight: 600; line-height: 1.2em; font-family: &quot;Source Sans Pro&quot;, Lato, &quot;Trebuchet MS&quot;, sans-serif; color: rgb(26, 44, 71); letter-spacing: 0.12rem;\">Chess Knight Problem | Find the shortest path from source to destination<img src=\"data:image/png;base64,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\" style=\"width: 361px;\" data-filename=\"Chess-Board.png\"></h1></div>', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `question_paper_list`
--

CREATE TABLE `question_paper_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `class_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_paper_list`
--

INSERT INTO `question_paper_list` (`id`, `user_id`, `class_id`, `title`, `description`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(4, 1, 4, 'DSA Term I', 'Read the Questions carefully and answer them. All the best', 0, 1, '2023-10-01 00:03:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registered_user_list`
--

CREATE TABLE `registered_user_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registered_user_list`
--

INSERT INTO `registered_user_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `dob`, `contact`, `email`, `password`, `avatar`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Anil', '', 'Das', 'Male', '2000-02-29', '21313123', 'anil@gmail.com', 'a591024321c5e2bdbd23ed35f0574dde', '', 1, 0, '2023-09-30 00:08:16', '2023-09-30 23:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Automated Question Paper Generator'),
(6, 'short_name', 'AQPG'),
(11, 'logo', 'uploads/logo_aqgp.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1645577488.jpg'),
(15, 'company_name', 'AQGP'),
(18, 'company_email', 'aritra@gmail.com'),
(19, 'company_address', '120/20,Kolkata'),
(20, 'company_description', 'Welcome to Automatic Question Paper Generator, your trusted source for hassle-free question paper generation. We understand the challenges educators, trainers, and institutions face when creating assessments and question papers. That\'s why we\'ve developed a user-friendly, efficient, and innovative platform to simplify the process. \r\n\r\nOur mission is to empower educators and institutions by providing them with a powerful tool to effortlessly generate question papers tailored to their specific needs. We aim to save educators precious time and effort, allowing them to focus on what truly matters – teaching and nurturing future talents.'),
(21, 'company_name', 'AQGP'),
(24, 'company_email', 'aritra@gmail.com'),
(25, 'company_address', '120/20,Kolkata'),
(26, 'company_description', 'Welcome to Automatic Question Paper Generator, your trusted source for hassle-free question paper generation. We understand the challenges educators, trainers, and institutions face when creating assessments and question papers. That\'s why we\'ve developed a user-friendly, efficient, and innovative platform to simplify the process. \r\n\r\nOur mission is to empower educators and institutions by providing them with a powerful tool to effortlessly generate question papers tailored to their specific needs. We aim to save educators precious time and effort, allowing them to focus on what truly matters – teaching and nurturing future talents.'),
(27, 'company_name', 'AQGP'),
(29, 'company_mobile', '212489424'),
(30, 'company_email', 'aritra@gmail.com'),
(31, 'company_address', '120/20,Kolkata'),
(32, 'company_description', 'Welcome to Automatic Question Paper Generator, your trusted source for hassle-free question paper generation. We understand the challenges educators, trainers, and institutions face when creating assessments and question papers. That\'s why we\'ve developed a user-friendly, efficient, and innovative platform to simplify the process. \r\n\r\nOur mission is to empower educators and institutions by providing them with a powerful tool to effortlessly generate question papers tailored to their specific needs. We aim to save educators precious time and effort, allowing them to focus on what truly matters – teaching and nurturing future talents.'),
(33, 'company_name', 'Honu\'s Project'),
(34, 'company_tel_no', '1312323442452352345'),
(35, 'company_mobile', '35443534'),
(36, 'company_email', 'honu@gmail.com'),
(37, 'company_address', '100/20 , ABC Road'),
(38, 'company_description', 'Works on project to gain more experience and knowledge.'),
(39, 'company_name', 'Aritra\'s Project'),
(40, 'company_tel_no', '2441139'),
(41, 'company_mobile', '1123581321'),
(42, 'company_email', 'aritra@gmail.com'),
(43, 'company_address', '100/20 , ABC Road'),
(44, 'company_description', 'Works on project to gain more experience and knowledge.'),
(45, 'company_name', 'Aritra\'s Project'),
(46, 'company_tel_no', '2441139'),
(47, 'company_mobile', '1123581321'),
(48, 'company_email', 'aritra@gmail.com'),
(49, 'company_address', '100/20 , ABC Road'),
(50, 'company_description', 'Works on project to gain more experience and knowledge.'),
(51, 'company_name', 'Aritra\'s Project'),
(52, 'company_tel_no', '2441139'),
(53, 'company_mobile', '1123581321'),
(54, 'company_email', 'aritra@gmail.com'),
(55, 'company_address', '100/20 , ABC Road'),
(56, 'company_description', 'Works on project to gain more experience and knowledge.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Aritra', 'Chakraborty', 'aritra', 'a591024321c5e2bdbd23ed35f0574dde', 'uploads/avatars/1.png', NULL, 1, '2021-01-20 14:02:37', '2023-10-01 14:07:14'),
(10, 'Shubheccha', 'Pal', 'Shubheccha', '4ba29b9f9e5732ed33761840f4ba6c53', NULL, NULL, 2, '2023-10-01 14:05:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choice_list`
--
ALTER TABLE `choice_list`
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `class_list`
--
ALTER TABLE `class_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `question_list`
--
ALTER TABLE `question_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_paper_id` (`question_paper_id`);

--
-- Indexes for table `question_paper_list`
--
ALTER TABLE `question_paper_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`class_id`);

--
-- Indexes for table `registered_user_list`
--
ALTER TABLE `registered_user_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_list`
--
ALTER TABLE `class_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_list`
--
ALTER TABLE `course_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `question_list`
--
ALTER TABLE `question_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `question_paper_list`
--
ALTER TABLE `question_paper_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registered_user_list`
--
ALTER TABLE `registered_user_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `choice_list`
--
ALTER TABLE `choice_list`
  ADD CONSTRAINT `choice_question_id_FK` FOREIGN KEY (`question_id`) REFERENCES `question_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `class_list`
--
ALTER TABLE `class_list`
  ADD CONSTRAINT `class_course_id_FK` FOREIGN KEY (`course_id`) REFERENCES `course_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `class_user_id_FK` FOREIGN KEY (`user_id`) REFERENCES `registered_user_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `course_list`
--
ALTER TABLE `course_list`
  ADD CONSTRAINT `course_user_id_FK` FOREIGN KEY (`user_id`) REFERENCES `registered_user_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `question_paper_list`
--
ALTER TABLE `question_paper_list`
  ADD CONSTRAINT `qp_class_id_FK` FOREIGN KEY (`class_id`) REFERENCES `class_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `qp_user_id FK` FOREIGN KEY (`user_id`) REFERENCES `registered_user_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
