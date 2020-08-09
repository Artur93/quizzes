-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for quiz
CREATE DATABASE IF NOT EXISTS `quiz` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `quiz`;

-- Dumping structure for table quiz.answers
CREATE TABLE IF NOT EXISTS `answers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `answer` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int(11) NOT NULL,
  `mode_id` int(11) NOT NULL,
  `is_correct` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table quiz.answers: ~48 rows (approximately)
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` (`id`, `answer`, `question_id`, `mode_id`, `is_correct`) VALUES
	(1, 'Answer 1 for question 1 in Quiz 1', 1, 2, 0),
	(2, 'Answer 2 for question 1 in Quiz 1', 1, 2, 1),
	(3, 'Answer 3 for question 1 in Quiz 1', 1, 2, 0),
	(4, 'Answer 1 for question 2 in Quiz 1', 2, 2, 1),
	(5, 'Answer 2 for question 2 in Quiz 1', 2, 2, 0),
	(6, 'Answer 3 for question 2 in Quiz 1', 2, 2, 0),
	(7, 'Answer 1 for question 3 in Quiz 1', 3, 2, 1),
	(8, 'Answer 2 for question 3 in Quiz 1', 3, 2, 0),
	(9, 'Answer 3 for question 3 in Quiz 1', 3, 2, 0),
	(10, 'Answer 1 for question 4 in Quiz 1', 4, 2, 0),
	(11, 'Answer 2 for question 4 in Quiz 1', 4, 2, 1),
	(12, 'Answer 3 for question 4 in Quiz 1', 4, 2, 0),
	(13, 'Answer 1 for question 5 in Quiz 1', 5, 2, 0),
	(14, 'Answer 2 for question 5 in Quiz 1', 5, 2, 0),
	(15, 'Answer 3 for question 5 in Quiz 1', 5, 2, 1),
	(16, 'Answer 1 for question 6 in Quiz 1', 6, 2, 0),
	(17, 'Answer 2 for question 6 in Quiz 1', 6, 2, 0),
	(18, 'Answer 3 for question 6 in Quiz 1', 6, 2, 1),
	(19, 'Answer 1 for question 7 in Quiz 1', 7, 2, 1),
	(20, 'Answer 2 for question 7 in Quiz 1', 7, 2, 0),
	(21, 'Answer 3 for question 7 in Quiz 1', 7, 2, 0),
	(22, 'Answer 1 for question 8 in Quiz 1', 8, 2, 0),
	(23, 'Answer 2 for question 8 in Quiz 1', 8, 2, 1),
	(24, 'Answer 3 for question 8 in Quiz 1', 8, 2, 0),
	(25, 'Answer 1 for question 9 in Quiz 1', 9, 2, 0),
	(26, 'Answer 2 for question 9 in Quiz 1', 9, 2, 0),
	(27, 'Answer 3 for question 9 in Quiz 1', 9, 2, 1),
	(28, 'Answer 1 for question 10 in Quiz 1', 10, 2, 0),
	(29, 'Answer 2 for question 10 in Quiz 1', 10, 2, 0),
	(30, 'Answer 3 for question 10 in Quiz 1', 10, 2, 1),
	(40, 'Yes', 1, 1, 1),
	(41, 'No', 1, 1, 0),
	(42, 'Yes', 2, 1, 1),
	(43, 'No', 2, 1, 0),
	(44, 'Yes', 3, 1, 0),
	(45, 'No', 3, 1, 1),
	(46, 'Yes', 4, 1, 1),
	(47, 'No', 4, 1, 0),
	(48, 'Yes', 5, 1, 1),
	(49, 'No', 5, 1, 0),
	(50, 'Yes', 6, 1, 0),
	(51, 'No', 6, 1, 1),
	(52, 'Yes', 7, 1, 0),
	(53, 'No', 7, 1, 1),
	(54, 'Yes', 8, 1, 0),
	(55, 'No', 8, 1, 1),
	(56, 'Yes', 9, 1, 0),
	(57, 'No', 9, 1, 1),
	(58, 'Yes', 10, 1, 0),
	(59, 'No', 10, 1, 1),
	(70, 'Yes', 11, 1, 0),
	(71, 'No', 11, 1, 1),
	(72, 'Yes', 12, 1, 0),
	(73, 'No', 12, 1, 1),
	(74, 'Yes', 13, 1, 0),
	(75, 'No', 13, 1, 1),
	(76, 'Yes', 14, 1, 0),
	(77, 'No', 14, 1, 1),
	(78, 'Yes', 15, 1, 0),
	(79, 'No', 15, 1, 1),
	(80, 'Yes', 16, 1, 0),
	(81, 'No', 16, 1, 1),
	(82, 'Yes', 17, 1, 0),
	(83, 'No', 17, 1, 1),
	(84, 'Yes', 18, 1, 0),
	(85, 'No', 18, 1, 1),
	(86, 'Yes', 19, 1, 0),
	(87, 'No', 19, 1, 1),
	(88, 'Yes', 20, 1, 0),
	(89, 'No', 20, 1, 1),
	(90, 'Answer 1 for question 1 in Quiz 2', 11, 2, 0),
	(91, 'Answer 2 for question 1 in Quiz 2', 11, 2, 1),
	(92, 'Answer 3 for question 1 in Quiz 2', 11, 2, 0),
	(93, 'Answer 1 for question 2 in Quiz 2', 12, 2, 1),
	(94, 'Answer 2 for question 2 in Quiz 2', 12, 2, 0),
	(95, 'Answer 3 for question 2 in Quiz 2', 12, 2, 0),
	(96, 'Answer 1 for question 3 in Quiz 2', 13, 2, 0),
	(97, 'Answer 2 for question 3 in Quiz 2', 13, 2, 0),
	(98, 'Answer 3 for question 3 in Quiz 2', 13, 2, 1),
	(99, 'Answer 1 for question 4 in Quiz 2', 14, 2, 0),
	(100, 'Answer 2 for question 4 in Quiz 2', 14, 2, 1),
	(101, 'Answer 3 for question 4 in Quiz 2', 14, 2, 0),
	(102, 'Answer 1 for question 5 in Quiz 2', 15, 2, 0),
	(103, 'Answer 2 for question 5 in Quiz 2', 15, 2, 0),
	(104, 'Answer 3 for question 5 in Quiz 2', 15, 2, 1),
	(105, 'Answer 1 for question 6 in Quiz 2', 16, 2, 0),
	(106, 'Answer 2 for question 6 in Quiz 2', 16, 2, 1),
	(107, 'Answer 3 for question 6 in Quiz 2', 16, 2, 0),
	(108, 'Answer 1 for question 7 in Quiz 2', 17, 2, 0),
	(109, 'Answer 2 for question 7 in Quiz 2', 17, 2, 1),
	(110, 'Answer 3 for question 7 in Quiz 2', 17, 2, 0),
	(111, 'Answer 1 for question 8 in Quiz 2', 18, 2, 0),
	(112, 'Answer 2 for question 8 in Quiz 2', 18, 2, 0),
	(113, 'Answer 3 for question 8 in Quiz 2', 18, 2, 1),
	(114, 'Answer 1 for question 9 in Quiz 2', 19, 2, 0),
	(115, 'Answer 2 for question 9 in Quiz 2', 19, 2, 1),
	(116, 'Answer 3 for question 9 in Quiz 2', 19, 2, 0),
	(117, 'Answer 1 for question 10 in Quiz 2', 20, 2, 1),
	(118, 'Answer 2 for question 10 in Quiz 2', 20, 2, 0),
	(119, 'Answer 3 for question 10 in Quiz 2', 20, 2, 0);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;

-- Dumping structure for table quiz.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table quiz.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table quiz.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table quiz.migrations: ~8 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_08_07_115856_create_modes_table', 2),
	(5, '2020_08_07_120714_create_questions_table', 2),
	(6, '2020_08_07_121019_create_answers_table', 2),
	(8, '2020_08_07_123400_create_quizzes_table', 2),
	(9, '2020_08_07_121735_create_users_answers_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table quiz.modes
CREATE TABLE IF NOT EXISTS `modes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mode_name` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table quiz.modes: ~2 rows (approximately)
/*!40000 ALTER TABLE `modes` DISABLE KEYS */;
INSERT INTO `modes` (`id`, `mode_name`) VALUES
	(1, 'Binary'),
	(2, 'Multiple choice questions');
/*!40000 ALTER TABLE `modes` ENABLE KEYS */;

-- Dumping structure for table quiz.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table quiz.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table quiz.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table quiz.questions: ~8 rows (approximately)
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`id`, `question`, `quiz_id`) VALUES
	(1, 'Question 1 of first quiz', 1),
	(2, 'Question 2 of first quiz', 1),
	(3, 'Question 3 of first quiz', 1),
	(4, 'Question 4 of first quiz', 1),
	(5, 'Question 5 of first quiz', 1),
	(6, 'Question 6 of first quiz', 1),
	(7, 'Question 7 of first quiz', 1),
	(8, 'Question 8 of first quiz', 1),
	(9, 'Question 9 of first quiz', 1),
	(10, 'Question 10 of first quiz', 1),
	(11, 'Question 1 of first quiz 2', 2),
	(12, 'Question 2 of first quiz 2', 2),
	(13, 'Question 3 of first quiz 2', 2),
	(14, 'Question 4 of first quiz 2', 2),
	(15, 'Question 5 of first quiz 2', 2),
	(16, 'Question 6 of first quiz 2', 2),
	(17, 'Question 7 of first quiz 2', 2),
	(18, 'Question 8 of first quiz 2', 2),
	(19, 'Question 9 of first quiz 2', 2),
	(20, 'Question 10 of first quiz 2', 2);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;

-- Dumping structure for table quiz.quizzes
CREATE TABLE IF NOT EXISTS `quizzes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quiz` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table quiz.quizzes: ~2 rows (approximately)
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` (`id`, `quiz`) VALUES
	(1, 'Quiz 1'),
	(2, 'Quiz 2');
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;

-- Dumping structure for table quiz.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table quiz.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Test', 'test@com', NULL, '$2y$10$rmgPsntqTYZMJ.mA85IREuy8oR57AIbMnCWcmoDxaJsgeB351BJOe', NULL, '2020-08-07 11:56:01', '2020-08-07 11:56:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table quiz.users_answers
CREATE TABLE IF NOT EXISTS `users_answers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table quiz.users_answers: ~1 rows (approximately)
/*!40000 ALTER TABLE `users_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_answers` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
