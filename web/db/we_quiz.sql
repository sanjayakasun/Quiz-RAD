-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 13, 2023 at 03:12 PM
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
-- Database: `we_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(1500) NOT NULL,
  `send_receive` char(2) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `quiz_id` int(11) NOT NULL,
  `question_no` int(11) NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer_1` varchar(300) NOT NULL,
  `answer_2` varchar(300) NOT NULL,
  `answer_3` varchar(300) NOT NULL,
  `answer_4` varchar(300) NOT NULL,
  `correct_answer` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`quiz_id`, `question_no`, `question`, `answer_1`, `answer_2`, `answer_3`, `answer_4`, `correct_answer`) VALUES
(1, 1, 'Choose either 1, 2, 3 or 4 for the correct answer. She ____ at me.', 'smile', 'smiles', 'is smile', 'is smiles', '2'),
(1, 2, 'Choose either 1, 2, 3 or 4 for the correct answer. Last month, I left Lombok Island. I ____ there with a group from the school.', 'go', 'went', 'going', 'gone', '2'),
(1, 3, 'Complete the sentence! There were ____ students in the class.', 'heavy', 'little', 'some', 'some of the', '3'),
(1, 4, 'Choose the corerct option. There is ____ new kid in class. His name is Rio.', 'an', 'a', 'the', 'same', '2'),
(1, 5, 'Choose the corerct option. My house _____ a small garden.', 'has got', 'have got', 'is', 'was', '1'),
(2, 1, 'Let X={1,2,3,4}, Y={a,b,c,d} and f={f(1,a),(4,b),(2,c),(3,d),(2,d)}. Then f is ____', 'an one-to-one function', 'an onto function', 'a function which is not one-to-one', 'not a function', '4'),
(2, 2, 'The product of r consecutive positive integers is divisible by', 'r!', '(r-1)!', '(r+1)!', 'rr', '1'),
(2, 3, 'In 3 fingers, the number of ways four rings can be worn is ways.', '4^3-1', '3^4', '68', '64', '2'),
(2, 4, 'If a, 8, b are in AP, a, 4, b are in GP, and if a, x, b are in HP then x is ___', '2', '1', '4', '16', '1'),
(2, 5, 'The sum of the digits at the 10th place of all numbers formed with the help of 2, 4, 5, 7 taken all at a time is?', '432', '108', '36', '18', '2'),
(2, 6, 'What is the value of the expression -4 sqrt(25) + 4^3 ?', '32', '44', '84', '112', '2'),
(14, 1, 'Multiply 36/49 and 21/63. What type of number is the result?', 'The numbers cannot be multiplied', '57/112,rational', '12/49,rational', '12/49,irrational', '3'),
(14, 2, 'What is the conjugate of the complex number 7+3i ?', '-7+3i', '-7-3i', '3i', '7-3i', '4'),
(14, 3, 'Subtract these two vectors <&#8722;12,&#8722;23>&#8722;<&#8722;8,&#8722;14>.', '<&#8722;4,&#8722;9>', '<4,9>', '<&#8722;9,&#8722;4>', '<&#8722;20,&#8722;37>', '3'),
(14, 4, 'What is the solution to 6x+5=101?', '19', '13', '16', '17', '3'),
(14, 5, 'How is the graph of f(x) = x + 7 different from g(x) = x + 12?', 'When f(x) is shifted up 5 units', 'g(x) will be obtained g(x) is obtained by shifting f(x) down 5 units', 'When g(x) is shifted up 5 units, f(x) will be obtained', 'f(x) is obtained by shifting g(x) up 5 units', '1'),
(15, 1, 'What is the smallest three digit number whose value does not change on reversing its digits?', '11', '101', '111', '1001', '2'),
(15, 2, 'What is the greatest three digit number which does not change on reversing its digits?', '9999', '999', '99', '99999', '2'),
(15, 3, 'What must be added to 203 to get a number whose digits are reversed of the given number?', '99', '89', '79', '109', '1'),
(15, 4, 'What is the greatest five-digit number using the digits 4, 2 and 0.', '42440', '44402', '44420', '24440', '3'),
(15, 5, 'The capacity of a water tank is 300 litres. Express its capacity in millilitres.', '300 000 ml', '3 000 000 ml', '3000 ml', '300 ml', '1'),
(15, 6, 'What is the place value of 7 in 1743?', '743', '7', '740', '700', '4'),
(15, 7, 'What is the successor of greatest 6-digit number?', '1 000 000', '999 999', '100 000', '9 999 999', '1'),
(16, 1, 'A punctuation mark that is used to indicate extra information in a sentence', 'Hyphen', 'Fullstop', 'Apostrophe', 'Dash', '4'),
(16, 2, '\'My feet ballooned with swelling\' is an example of', 'Assonance', 'Alliteration', 'Personification', 'Metaphor', '4'),
(16, 3, 'An exclamation mark is used in', 'Sentences that ask questions', 'Sentences to show emotion', 'Sentences that are simple', 'When a full stop has been overused', '2'),
(16, 4, 'The apostrophe has the function of:', 'Possession', 'Contraction', 'None of the above', 'Possession and contraction', '4'),
(16, 5, 'Choose the correct spelling.', 'Recieve', 'Reiceive', 'Receive', 'Recieive', '3');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `quiz_title` varchar(128) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `code` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `teacher_id`, `subject_id`, `quiz_title`, `is_public`, `code`) VALUES
(1, 1, 4, 'Grammar Lesson', 1, ''),
(2, 3, 2, 'Functions Knowledge', 1, ''),
(14, 3, 2, 'Numbers and Quantity', 1, ''),
(15, 3, 5, 'Knowing Our Numbers', 1, ''),
(16, 2, 6, 'Knowledge Test', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`quiz_id`, `student_id`, `mark`) VALUES
(1, 1, 40),
(1, 2, 30),
(2, 3, 20),
(2, 2, 30),
(2, 1, 20),
(14, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(64) NOT NULL,
  `profile_pic_url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `first_name`, `last_name`, `email`, `username`, `password`, `profile_pic_url`) VALUES
(1, 'Cameron', 'Chan', 'cameronchan@gmail.com', 'cam01', '81dc9bdb52d04dc20036dbd8313ed055', NULL),
(2, 'Tory', 'Martin', 'tori2003@gmail.com', 'toriM', '81dc9bdb52d04dc20036dbd8313ed055', NULL),
(3, 'Shane', 'Samuels', 'shanesamuels@gmail.com', 'shane_99', '81dc9bdb52d04dc20036dbd8313ed055', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_answer`
--

CREATE TABLE `student_answer` (
  `quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `question_no` int(11) NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_answer`
--

INSERT INTO `student_answer` (`quiz_id`, `student_id`, `question_no`, `answer`) VALUES
(1, 1, 1, 3),
(1, 1, 2, 2),
(1, 1, 3, 3),
(1, 1, 4, 2),
(1, 1, 5, 1),
(1, 2, 1, 2),
(1, 2, 2, 2),
(1, 2, 3, 3),
(1, 2, 4, 1),
(1, 2, 5, 2),
(2, 3, 1, 4),
(2, 3, 2, 1),
(2, 3, 3, 3),
(2, 3, 4, 3),
(2, 3, 5, 4),
(2, 1, 1, 1),
(2, 1, 2, 4),
(2, 1, 3, 2),
(2, 1, 4, 3),
(2, 1, 5, 2),
(2, 2, 1, 4),
(2, 2, 2, 1),
(2, 2, 3, 2),
(2, 2, 4, 3),
(2, 2, 5, 1),
(2, 1, 1, 1),
(2, 1, 2, 2),
(2, 1, 3, 2),
(2, 1, 4, 3),
(2, 1, 5, 3),
(2, 1, 6, 3),
(2, 1, 1, 4),
(2, 1, 2, 1),
(2, 1, 3, 2),
(2, 1, 4, 2),
(2, 1, 5, 2),
(2, 1, 6, 2),
(2, 1, 1, 1),
(2, 1, 2, 1),
(2, 1, 3, 3),
(2, 1, 4, 3),
(2, 1, 5, 2),
(2, 1, 6, 3),
(14, 2, 1, 2),
(14, 2, 2, 2),
(14, 2, 3, 2),
(14, 2, 4, 2),
(14, 2, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_category` varchar(50) NOT NULL,
  `subject_level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_category`, `subject_level`) VALUES
(1, 'Maths', 'Grade 12'),
(2, 'Maths', 'Grade 11'),
(3, 'Fine Arts', '1st Year'),
(4, 'English', 'Grade 8'),
(5, 'Maths', 'Grade 6'),
(6, 'English', 'Grade 6');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(64) NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `education` varchar(50) NOT NULL,
  `school` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `first_name`, `last_name`, `email`, `username`, `password`, `profile_pic`, `education`, `school`) VALUES
(1, 'Senzo', 'Macmillan', 'senzmacmillan@edu.org', 'senz_mac', '81dc9bdb52d04dc20036dbd8313ed055', './assets/profile-pics/1.jpg', 'Graduate', 'Western University of Australia'),
(2, 'Finn', 'Nash', 'finnnash01@abc.org', 'finn_nash', '81dc9bdb52d04dc20036dbd8313ed055', './assets/profile-pics/2.png', 'Undergraduate', 'Griffidshire University'),
(3, 'Supun', 'Mahanama', 'supunmahanama@gmail.org', 'supun01', '81dc9bdb52d04dc20036dbd8313ed055', './assets/profile-pics/3.jpeg', 'Graduate', 'Sri Lanka Institute of Information Technology'),
(4, 'Kumar', 'Anandan', 'kumaranandan@gmail.com', 'kumar_anandan', '81dc9bdb52d04dc20036dbd8313ed055', './assets/profile-pics/4.jpg', 'Masters', 'IIT Kaghpur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`quiz_id`,`question_no`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD KEY `student_id` (`student_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `student_answer`
--
ALTER TABLE `student_answer`
  ADD KEY `student_id` (`student_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `question` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `score_ibfk_3` FOREIGN KEY (`quiz_id`) REFERENCES `question` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_answer`
--
ALTER TABLE `student_answer`
  ADD CONSTRAINT `student_answer_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_answer_ibfk_3` FOREIGN KEY (`quiz_id`) REFERENCES `question` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
