-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221207.ce5ce76a8d
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 07:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelassignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_24_151339_create_product_models_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_models`
--

CREATE TABLE `product_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_models`
--

INSERT INTO `product_models` (`id`, `title`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'accusantium', 'Nemo hic harum qui molestias minus. Sapiente est consectetur autem quia. Voluptatem consequuntur optio rerum reiciendis.', 'https://via.placeholder.com/640x480.png/006677?text=alias', 756.15, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(2, 'ipsa', 'Id libero tempore qui culpa similique. Ipsum quod neque non facilis aperiam voluptas fugiat. Sit commodi dolore voluptas ratione. Accusamus tenetur sunt ut sit vitae ratione.', 'https://via.placeholder.com/640x480.png/0033ff?text=animi', 936.09, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(3, 'sint', 'Eaque rem neque molestias dicta quia. Impedit minus in nihil tempore in.', 'https://via.placeholder.com/640x480.png/001133?text=explicabo', 529.53, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(4, 'ut', 'Voluptas necessitatibus illo expedita deserunt sint voluptatem. In dolorem fuga nobis eligendi perferendis rerum. Nesciunt eaque est laudantium perferendis harum. Saepe inventore architecto et laboriosam.', 'https://via.placeholder.com/640x480.png/00aacc?text=doloribus', 107.24, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(5, 'fugiat', 'Dignissimos asperiores rerum recusandae quia. Officiis id omnis facilis accusamus. Alias dolores repudiandae fugiat eos cumque. Harum ea et eius aspernatur laudantium commodi est.', 'https://via.placeholder.com/640x480.png/0088dd?text=rerum', 734.89, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(6, 'et', 'Necessitatibus voluptates magnam eius aperiam nisi. Eum recusandae occaecati sequi nisi. Est error iusto distinctio nulla non illo incidunt.', 'https://via.placeholder.com/640x480.png/00ee22?text=aut', 423.61, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(7, 'incidunt', 'Nostrum nostrum id aut et est totam voluptas. Alias velit molestiae similique ut. Aut ut aliquid rerum nam porro molestias. Corporis tempora assumenda quam fugiat totam. Debitis eum quaerat voluptatem velit consequatur nostrum.', 'https://via.placeholder.com/640x480.png/00eebb?text=qui', 608.14, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(8, 'est', 'Recusandae et recusandae sed dolore quas quos. Vitae omnis explicabo soluta explicabo laboriosam. Optio adipisci enim ex quia qui id.', 'https://via.placeholder.com/640x480.png/005599?text=optio', 49.31, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(9, 'rem', 'Nesciunt sit et est non aliquam aut. Dolores est maxime culpa et enim. Enim quisquam modi assumenda ducimus voluptatem et.', 'https://via.placeholder.com/640x480.png/006622?text=cum', 367.58, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(10, 'quaerat', 'Odit voluptas quo nulla exercitationem. Excepturi necessitatibus ex commodi voluptates autem. Ea unde pariatur repellat placeat voluptatem sequi enim.', 'https://via.placeholder.com/640x480.png/00ff22?text=corrupti', 413.83, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(11, 'facilis', 'Iste deserunt placeat et. Corrupti placeat illo ad vitae quia vel. Et reprehenderit quia qui deserunt. Vero veniam aliquam ullam aliquid quas omnis qui eos.', 'https://via.placeholder.com/640x480.png/006677?text=omnis', 470.52, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(12, 'hic', 'Quia voluptatem sunt ut est. Corrupti doloremque qui fugit explicabo qui quas molestias deserunt.', 'https://via.placeholder.com/640x480.png/00bb88?text=et', 546.45, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(13, 'dolorum', 'Esse fugit repudiandae dolorem placeat at illum amet. Incidunt tempore atque est dicta. Dicta facere dolorem odit necessitatibus rerum. Iure distinctio alias illum.', 'https://via.placeholder.com/640x480.png/0044ee?text=unde', 239.14, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(14, 'quisquam', 'Repellat tempora voluptas hic molestiae velit. Quod est a assumenda quam itaque ut sit. Et molestiae nam est iure placeat.', 'https://via.placeholder.com/640x480.png/001133?text=et', 206.62, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(15, 'ullam', 'Ut sint aut saepe itaque. Qui velit cupiditate nam dolor. Accusamus quo doloribus sed eos repellat fuga perferendis earum.', 'https://via.placeholder.com/640x480.png/008800?text=debitis', 430.94, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(16, 'aut', 'Aspernatur in vero aut eum porro. Omnis cum quos provident iure. Velit totam eaque nam dolorum eius at expedita. Recusandae voluptas culpa repellat beatae.', 'https://via.placeholder.com/640x480.png/0033dd?text=alias', 979.21, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(17, 'rerum', 'Ipsum at inventore vel excepturi. Eligendi delectus necessitatibus ratione officiis. Minus odit rerum ea et a ab molestias. Labore optio veniam exercitationem omnis consequatur alias.', 'https://via.placeholder.com/640x480.png/0022bb?text=quasi', 849.53, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(18, 'eaque', 'Repudiandae nesciunt doloremque vel quis est nemo est. Exercitationem consequatur enim corrupti adipisci occaecati aperiam in.', 'https://via.placeholder.com/640x480.png/006633?text=consectetur', 104.17, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(19, 'perspiciatis', 'Ut recusandae aut rem porro sapiente iusto dolorum. Quia recusandae consequatur magnam libero. Delectus qui accusamus molestiae et. Facilis repudiandae mollitia delectus quia animi.', 'https://via.placeholder.com/640x480.png/0011dd?text=ab', 301.38, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(20, 'ducimus', 'Inventore possimus minima commodi deleniti esse atque officia. Iure qui fugit delectus nihil itaque. Maiores sed necessitatibus ut ab ducimus reprehenderit. Cumque voluptatem est dolorum iure aut tempora iusto.', 'https://via.placeholder.com/640x480.png/007711?text=est', 930.37, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(21, 'consequatur', 'Odit provident suscipit unde sit hic eos. Nihil aliquid unde assumenda libero aut at id. Quis facilis consequatur dolorem.', 'https://via.placeholder.com/640x480.png/00eebb?text=dolorem', 928.85, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(22, 'perspiciatis', 'Dolore ex accusantium quos qui assumenda est. Et molestias non velit perspiciatis consequatur. Mollitia consequuntur aut rerum corrupti laborum minus. Qui rerum ea dolorem id assumenda.', 'https://via.placeholder.com/640x480.png/0044aa?text=inventore', 537.99, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(23, 'et', 'Ea laboriosam ipsa nobis consequatur molestias impedit dignissimos. Dolorum placeat deserunt vitae omnis ullam inventore facilis et. Occaecati laudantium est qui eum sit.', 'https://via.placeholder.com/640x480.png/009966?text=facere', 322.10, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(24, 'minus', 'Ad vel officiis optio consequuntur tenetur sequi tempora. Quos delectus numquam aut rerum id eos. Sint natus et voluptate architecto aut fugiat. Id enim reprehenderit explicabo labore officiis.', 'https://via.placeholder.com/640x480.png/00cc11?text=omnis', 667.32, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(25, 'sint', 'Et consequuntur et placeat accusamus. Quo earum sed explicabo rem et. Nesciunt qui quo quam.', 'https://via.placeholder.com/640x480.png/0022ff?text=a', 314.67, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(26, 'possimus', 'Repudiandae in consequatur quas id. Ipsa doloribus voluptatem quia mollitia qui possimus. Possimus asperiores nemo minima incidunt. Veniam officiis autem eum.', 'https://via.placeholder.com/640x480.png/00bb88?text=tempora', 39.33, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(27, 'non', 'Qui doloribus corporis aut quae. Ea consequatur sunt labore dolor possimus fugiat esse labore.', 'https://via.placeholder.com/640x480.png/006622?text=suscipit', 279.13, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(28, 'omnis', 'Praesentium error est in ab velit incidunt quasi. Sunt corporis cupiditate voluptas. Neque qui itaque reiciendis dignissimos cupiditate non.', 'https://via.placeholder.com/640x480.png/008899?text=iure', 286.93, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(29, 'non', 'Non voluptatem dignissimos error fugit dolor architecto nostrum. Commodi necessitatibus voluptatibus nemo veritatis. Iusto ea delectus vero eum. Laudantium quam exercitationem ut commodi doloremque perferendis optio.', 'https://via.placeholder.com/640x480.png/000033?text=eum', 244.72, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(30, 'velit', 'Suscipit repellat quia molestiae in nobis sint. Et repudiandae minima rerum repudiandae et voluptas magni. Inventore voluptatem reiciendis qui aut consequatur sint.', 'https://via.placeholder.com/640x480.png/00bb44?text=ab', 646.96, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(31, 'quia', 'Nulla aspernatur aut ipsum. Qui sit recusandae quas at dolor quaerat. Ut ea vel repudiandae veritatis consequatur voluptatem. Fuga est velit nemo ipsam.', 'https://via.placeholder.com/640x480.png/000066?text=quia', 282.99, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(32, 'adipisci', 'Qui atque libero incidunt dolor deserunt dolor ut. Ut at sapiente voluptate illo doloremque consectetur corporis. Magni qui sed officiis corporis autem rerum dolores. Nostrum veritatis esse minima nam.', 'https://via.placeholder.com/640x480.png/00ffaa?text=fugit', 960.03, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(33, 'dolore', 'Delectus provident ducimus et assumenda. Aut quam ut id modi voluptatibus. Dolores qui aut earum ullam aliquid sequi. Est natus qui et.', 'https://via.placeholder.com/640x480.png/00ddcc?text=sequi', 300.56, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(34, 'qui', 'Ut nobis est aliquid impedit. Minus sequi nemo sed aliquam reiciendis est ducimus. Eaque excepturi eveniet iusto culpa minus. Nulla asperiores culpa soluta iste.', 'https://via.placeholder.com/640x480.png/008877?text=nihil', 383.95, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(35, 'veritatis', 'Tempore dolor ut dignissimos incidunt ipsam omnis. Illum dolor corporis omnis pariatur eaque. Molestias sit reprehenderit nisi consequatur explicabo. Aperiam velit repellendus porro.', 'https://via.placeholder.com/640x480.png/0033dd?text=laborum', 694.18, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(36, 'voluptatum', 'Distinctio necessitatibus illo recusandae officia. Similique consequatur minus voluptatum quis ducimus. Voluptatibus labore error aliquam qui.', 'https://via.placeholder.com/640x480.png/0066bb?text=aut', 804.55, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(37, 'provident', 'Placeat et perferendis distinctio et magnam dolor minus enim. Voluptas amet ipsam quos reiciendis provident. Quasi similique deserunt quas fuga maiores aut ipsam. Sunt aut minus consectetur aut facilis dolorum non.', 'https://via.placeholder.com/640x480.png/006666?text=ab', 853.82, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(38, 'a', 'Voluptatem aspernatur autem id. Corrupti officiis dolores ea nulla consequatur facilis aliquam. Velit sed et cupiditate.', 'https://via.placeholder.com/640x480.png/0011aa?text=laborum', 855.80, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(39, 'repellat', 'Quo voluptatem fugit at ducimus laboriosam. Provident aut labore vitae debitis quia rerum. Dolore placeat maxime unde quaerat et omnis et. Labore veniam ex incidunt excepturi vel ratione.', 'https://via.placeholder.com/640x480.png/009988?text=amet', 68.02, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(40, 'voluptatem', 'Sit omnis enim deserunt sit impedit. Non dolor in amet suscipit et quaerat quisquam. Alias nihil vel laboriosam harum. Veniam earum sint dolores nihil repellat voluptas ab.', 'https://via.placeholder.com/640x480.png/00aa22?text=rem', 727.36, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(41, 'magnam', 'Placeat soluta quidem in nesciunt. Sint dolores voluptatem et similique. Excepturi dolorum dolores est magnam accusamus. Impedit similique ut non quaerat et voluptas. Vel magni id voluptas nam.', 'https://via.placeholder.com/640x480.png/00ee99?text=tenetur', 614.92, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(42, 'aspernatur', 'Ipsa adipisci omnis distinctio deserunt doloremque quis. Impedit inventore voluptates quasi. Enim qui ea perferendis unde quia.', 'https://via.placeholder.com/640x480.png/00ee22?text=occaecati', 683.22, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(43, 'alias', 'Perspiciatis unde iure autem reiciendis praesentium ratione asperiores eum. Amet culpa nulla totam facere corrupti consequuntur quis.', 'https://via.placeholder.com/640x480.png/00ff88?text=quis', 194.89, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(44, 'consectetur', 'Quasi deleniti repellendus perspiciatis ut quis ducimus. Unde explicabo ratione amet aspernatur et. Praesentium sequi non sit ea ex voluptatem.', 'https://via.placeholder.com/640x480.png/001144?text=suscipit', 766.03, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(45, 'nulla', 'Facere libero in quidem sit. Necessitatibus odio et ut quos alias est ut cum. Veritatis doloremque quod dolorem ad rerum ipsum vel. Quas quia et veritatis molestiae.', 'https://via.placeholder.com/640x480.png/0011ee?text=soluta', 190.86, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(46, 'ipsa', 'Quaerat est in illo aperiam officiis at. Aut velit hic illum velit vel. Expedita aperiam id alias hic.', 'https://via.placeholder.com/640x480.png/002233?text=ut', 844.16, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(47, 'illum', 'Explicabo unde ullam libero dignissimos illo id. Sit ex voluptatem nihil dolores provident optio aliquam. Dignissimos nemo necessitatibus quis nam rem ex eos. Nihil ab eius excepturi velit sit distinctio et.', 'https://via.placeholder.com/640x480.png/0066dd?text=odio', 443.10, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(48, 'et', 'Architecto nihil rerum ipsa voluptatem. Blanditiis officiis aut ratione nulla eos. Qui ea quod temporibus minus voluptas quo deserunt molestiae.', 'https://via.placeholder.com/640x480.png/005577?text=ipsa', 413.60, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(49, 'est', 'Eaque modi et et reprehenderit voluptatum. Quia omnis ipsa quasi non est. Et ut est libero rerum.', 'https://via.placeholder.com/640x480.png/00ffaa?text=tenetur', 793.59, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(50, 'quod', 'Voluptate velit sunt odio illum. Voluptatibus sequi reprehenderit amet quia optio quo molestias molestias. Tempora porro sunt rerum unde fuga quasi.', 'https://via.placeholder.com/640x480.png/00dd33?text=velit', 62.96, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(51, 'dolores', 'Accusantium magni totam id quam quas. Sed veniam ratione sit ex dolores quia qui. Reprehenderit voluptatem dignissimos nihil libero. Dignissimos inventore numquam accusantium autem similique unde quia.', 'https://via.placeholder.com/640x480.png/0033ee?text=dolorem', 143.49, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(52, 'et', 'Voluptatibus praesentium voluptates et unde. Et rerum at asperiores non aut.', 'https://via.placeholder.com/640x480.png/001166?text=voluptas', 253.37, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(53, 'eaque', 'Blanditiis quo eveniet ullam dolorem eveniet. Dicta enim voluptas blanditiis maxime provident. Natus et voluptatem temporibus fugiat maxime.', 'https://via.placeholder.com/640x480.png/00dd22?text=commodi', 60.71, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(54, 'dicta', 'Et eveniet neque architecto voluptate in nesciunt quod. Consectetur explicabo excepturi sed mollitia. Inventore voluptatum voluptate qui distinctio. Laudantium eaque nisi animi voluptatem qui et.', 'https://via.placeholder.com/640x480.png/000088?text=enim', 491.90, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(55, 'numquam', 'Ut accusantium delectus soluta unde eius. Sed et modi modi deserunt nostrum. Dolorem dolorem odit nobis est molestiae animi expedita. Quaerat nostrum qui velit soluta recusandae voluptatem itaque.', 'https://via.placeholder.com/640x480.png/00dd77?text=qui', 387.79, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(56, 'ad', 'Doloribus qui ducimus et sint ipsa optio. Voluptas vero dolorum quasi beatae et fuga. Consequatur ex harum quo illo suscipit consequatur.', 'https://via.placeholder.com/640x480.png/008811?text=quis', 143.24, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(57, 'cupiditate', 'Explicabo molestiae ut esse dolorem debitis. Delectus explicabo ut est provident.', 'https://via.placeholder.com/640x480.png/00ffbb?text=accusantium', 122.36, '2023-08-24 09:56:37', '2023-08-24 09:56:37'),
(58, 'vitae', 'Ratione eligendi tempora distinctio officiis alias culpa. Nulla qui delectus dolorem voluptatibus.', 'https://via.placeholder.com/640x480.png/00bb77?text=occaecati', 818.31, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(59, 'distinctio', 'Commodi non quibusdam nulla odio repellendus unde expedita ullam. Nemo aut veniam placeat aperiam molestiae. Reiciendis eum veniam et ut. Et porro voluptatem soluta porro neque. Libero repellendus tempore eligendi et velit.', 'https://via.placeholder.com/640x480.png/00ddaa?text=molestiae', 324.44, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(60, 'omnis', 'Ipsa id impedit ducimus praesentium perspiciatis ut rerum. Ea nulla non et explicabo nam. Qui fugiat laudantium omnis repudiandae magni.', 'https://via.placeholder.com/640x480.png/000077?text=corrupti', 510.56, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(61, 'quisquam', 'Unde nihil consequatur voluptas tempora id rerum. Facere modi consequuntur nobis eaque facere. Ratione libero tenetur odio nemo aspernatur velit. Delectus nobis maxime in velit.', 'https://via.placeholder.com/640x480.png/003399?text=nam', 936.77, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(62, 'mollitia', 'Eum dicta perspiciatis qui iusto. Architecto soluta unde odit. Sequi cupiditate odio est commodi perferendis aut iure. Est expedita dolorem itaque natus quidem ut ipsum.', 'https://via.placeholder.com/640x480.png/00aaee?text=voluptate', 280.12, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(63, 'impedit', 'Culpa voluptas eius qui vitae ea et. Nisi sit illo ut esse. Soluta mollitia dolor harum voluptas et voluptate magni qui.', 'https://via.placeholder.com/640x480.png/00aa88?text=suscipit', 889.50, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(64, 'sed', 'Est sit qui deserunt similique. Ex corrupti aut deleniti autem sed tempora consequatur dolore. Qui ullam eligendi dolor eum eius. Qui omnis consequatur eveniet autem nesciunt.', 'https://via.placeholder.com/640x480.png/0022ee?text=itaque', 751.12, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(65, 'doloremque', 'Soluta eaque neque rem. Praesentium consequuntur quisquam nesciunt sint ad expedita tempore. Et et in veniam at impedit. Sunt aut doloremque mollitia aperiam mollitia facere aperiam.', 'https://via.placeholder.com/640x480.png/0033cc?text=deleniti', 163.70, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(66, 'numquam', 'Odio qui et voluptas quia sequi. Eum eveniet qui quis et voluptas aperiam. Eum ducimus dolor quo quaerat recusandae.', 'https://via.placeholder.com/640x480.png/009966?text=sed', 806.93, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(67, 'amet', 'Eum quibusdam harum odit veritatis unde. Qui sapiente dolore sunt expedita blanditiis voluptates illum. Aut impedit itaque consectetur aut quam harum est. Numquam qui ut delectus illo.', 'https://via.placeholder.com/640x480.png/00aa33?text=placeat', 387.62, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(68, 'rem', 'Eveniet fugit sit quos. Dolores ea ea suscipit alias est ducimus. Facilis explicabo esse amet et molestias veritatis velit.', 'https://via.placeholder.com/640x480.png/00cc99?text=sapiente', 118.05, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(69, 'vitae', 'Doloremque mollitia voluptatem ea modi deleniti aspernatur. Culpa sunt quaerat eos necessitatibus laudantium aut molestias ut. Voluptates incidunt quia accusamus non reiciendis.', 'https://via.placeholder.com/640x480.png/0000ee?text=quasi', 511.07, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(70, 'odit', 'Eaque praesentium laudantium id soluta alias et maiores. Quae non sit aliquam natus id dolore repellat. Nobis ipsam voluptatibus et qui eaque.', 'https://via.placeholder.com/640x480.png/0033aa?text=rerum', 346.27, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(71, 'minima', 'Unde velit consequatur qui officiis architecto ea et. Est doloribus sed quas tempora fuga. Officiis reprehenderit possimus ipsum cupiditate debitis magnam.', 'https://via.placeholder.com/640x480.png/00cc11?text=quo', 309.03, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(72, 'totam', 'Repudiandae modi enim nesciunt corporis voluptatem. Ut maiores ut voluptatem reprehenderit. Unde quaerat eligendi et veniam. Voluptate quo architecto aperiam maiores.', 'https://via.placeholder.com/640x480.png/00ff77?text=ut', 597.13, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(73, 'accusantium', 'Non optio et quis nesciunt quia. Perferendis nobis cupiditate qui quo ex harum vel maiores. Eos neque qui maxime vel.', 'https://via.placeholder.com/640x480.png/009977?text=perferendis', 851.60, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(74, 'commodi', 'Ex consectetur harum est consequatur repellat explicabo. Tenetur aut ut repudiandae dolorum veniam doloremque. Rerum odio et perferendis dolor.', 'https://via.placeholder.com/640x480.png/00bb88?text=optio', 452.21, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(75, 'optio', 'Cum molestias iusto blanditiis ea error repellat sit. Quam facilis nisi quia architecto odio. Reprehenderit sint facilis quia illum quaerat iure nisi.', 'https://via.placeholder.com/640x480.png/00aaff?text=consectetur', 571.10, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(76, 'aspernatur', 'Aut laborum facere vitae omnis et. Numquam delectus aliquid illo enim tempora. Tempora dicta quam architecto delectus omnis quibusdam natus.', 'https://via.placeholder.com/640x480.png/00eecc?text=assumenda', 440.04, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(77, 'magnam', 'Eum quaerat dolorum sunt mollitia possimus blanditiis sit laudantium. Non nostrum recusandae est est consectetur accusamus ullam. Quos ea quasi sed quo sit.', 'https://via.placeholder.com/640x480.png/0088dd?text=vel', 335.62, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(78, 'rerum', 'Ut quis aut in qui quod nostrum mollitia. Ea sequi voluptatibus aut voluptatem. Molestias ut qui ipsam quod tempore consequatur.', 'https://via.placeholder.com/640x480.png/00cc55?text=ut', 86.07, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(79, 'eum', 'Voluptas incidunt itaque repudiandae nobis dolore exercitationem eos atque. Adipisci et assumenda laborum. Omnis aliquam fugit aut perspiciatis. Rerum nobis quae dolores.', 'https://via.placeholder.com/640x480.png/0066aa?text=suscipit', 299.25, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(80, 'et', 'Aut iure quia vero dolores qui quam. Enim autem aut quod perferendis vero. Omnis ut qui facere cumque officia. Itaque atque accusamus totam dolor.', 'https://via.placeholder.com/640x480.png/00ff88?text=veniam', 313.84, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(81, 'voluptas', 'Corrupti laudantium consequatur rerum perferendis accusamus. Error quod et facere rerum in eveniet. Vero et quae ducimus deserunt ut quaerat.', 'https://via.placeholder.com/640x480.png/00dd44?text=unde', 122.07, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(82, 'sit', 'Delectus totam itaque et temporibus similique. Ut accusantium fugit sed voluptate enim aut. Impedit esse qui in velit. Suscipit aut aut eveniet libero qui.', 'https://via.placeholder.com/640x480.png/000099?text=maxime', 52.58, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(83, 'et', 'Non ut ut eos consequatur. Nobis quia id necessitatibus. Laborum voluptatem necessitatibus adipisci aut.', 'https://via.placeholder.com/640x480.png/009933?text=perferendis', 440.98, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(84, 'at', 'Voluptatem aut velit incidunt in. Rem natus et non incidunt a ullam iste. Dolorem voluptatem fugiat tempore quia veritatis repudiandae quis.', 'https://via.placeholder.com/640x480.png/0044aa?text=reiciendis', 439.36, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(85, 'error', 'Quia dolores blanditiis quis facilis velit quidem. In asperiores voluptatem nemo nihil. Libero qui cupiditate qui veritatis quasi. Ex magnam dignissimos est quia commodi est.', 'https://via.placeholder.com/640x480.png/00ff77?text=perferendis', 760.35, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(86, 'reprehenderit', 'Quasi sit harum consequuntur. Odio quia non culpa earum. Nihil debitis dolor numquam pariatur dolorem. Velit sit facere repudiandae numquam qui sunt minima.', 'https://via.placeholder.com/640x480.png/00aa44?text=similique', 460.74, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(87, 'quaerat', 'Commodi animi veritatis quis corrupti repellendus. Qui veniam ullam eveniet et amet natus aliquid rerum. Rem totam et ipsum sequi rerum minus odio.', 'https://via.placeholder.com/640x480.png/008899?text=et', 49.01, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(88, 'mollitia', 'Harum odio velit ducimus sapiente iure nihil. Ad aliquid eos quia asperiores. Omnis inventore doloremque est harum. Tempora quo voluptatibus occaecati officiis.', 'https://via.placeholder.com/640x480.png/00aaff?text=provident', 185.75, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(89, 'autem', 'Molestiae deleniti commodi architecto facilis saepe a aut. Voluptatem facere fugit mollitia. Sint consequatur laborum dolorem eligendi consectetur quae nostrum.', 'https://via.placeholder.com/640x480.png/00ff55?text=omnis', 605.64, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(90, 'illo', 'Beatae ad quas vero beatae. Ipsum aut dicta molestias et et autem. Est nulla exercitationem voluptas. Sed velit tempore occaecati aspernatur tempora.', 'https://via.placeholder.com/640x480.png/009955?text=quibusdam', 505.65, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(91, 'nulla', 'Et voluptas asperiores dignissimos itaque consequatur. In aut rerum reiciendis necessitatibus dolores. Eos illum expedita cumque quos tempora blanditiis.', 'https://via.placeholder.com/640x480.png/00eedd?text=quam', 25.64, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(92, 'quia', 'Deleniti provident ea unde accusamus. Ad culpa dolorum recusandae est possimus non. Nobis suscipit et totam laboriosam ut.', 'https://via.placeholder.com/640x480.png/00ee11?text=sunt', 358.13, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(93, 'doloribus', 'Error cumque ab sed doloribus accusantium quis. Aliquam et sunt repellat et aliquam mollitia. Repudiandae dignissimos rerum quam culpa exercitationem et numquam.', 'https://via.placeholder.com/640x480.png/00dd99?text=nihil', 185.09, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(94, 'commodi', 'Dignissimos consectetur veniam quo alias est numquam. Eos exercitationem et quia necessitatibus esse. Illum quibusdam ad inventore numquam dicta veniam. Voluptas hic aliquid et.', 'https://via.placeholder.com/640x480.png/000088?text=maxime', 695.42, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(95, 'quo', 'Et quas saepe magnam harum iure dignissimos. Nam est ullam recusandae qui doloremque. Commodi consequuntur nesciunt voluptas autem.', 'https://via.placeholder.com/640x480.png/006666?text=labore', 572.70, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(96, 'ab', 'Ut suscipit sapiente odit voluptatem sed eaque aspernatur. Consequatur expedita nemo aut minima quisquam. Exercitationem eaque explicabo voluptas beatae qui error unde voluptate. Blanditiis nesciunt voluptatem maiores quos commodi unde est.', 'https://via.placeholder.com/640x480.png/004411?text=sint', 322.14, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(97, 'odit', 'Cum totam optio deserunt deleniti fuga maxime quaerat. Dolor a ducimus dolor earum dolor ut optio voluptatibus. Quae enim culpa dignissimos ratione soluta corporis.', 'https://via.placeholder.com/640x480.png/008877?text=commodi', 823.71, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(98, 'ut', 'Sit et id voluptate quos et soluta esse repellendus. Quod harum omnis fuga magni aliquam ut esse quasi. Aliquid voluptatem sint et dolorem ex.', 'https://via.placeholder.com/640x480.png/005566?text=sed', 283.26, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(99, 'et', 'Rem adipisci quia hic illo fuga. At aut pariatur nemo sit. Animi dolores exercitationem ut accusamus vel.', 'https://via.placeholder.com/640x480.png/00ff33?text=occaecati', 715.83, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(100, 'velit', 'Aperiam ipsa ex expedita quod. Sint libero suscipit in velit saepe quod repellat. Id vel velit numquam voluptas ab.', 'https://via.placeholder.com/640x480.png/006611?text=distinctio', 548.84, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(101, 'sit', 'Aut natus labore voluptas ipsa mollitia sunt debitis dolorum. Voluptatem vero et voluptatem assumenda aut distinctio. Qui ullam non et repellat nulla. Deserunt mollitia tempora voluptatem et.', 'https://via.placeholder.com/640x480.png/006688?text=deleniti', 644.20, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(102, 'sit', 'Voluptate reiciendis modi quae nihil. Soluta expedita facere veniam quae ipsum vel voluptates dolores. Laudantium et sint numquam et delectus molestiae. Minima veniam ea id nihil sapiente officiis quo.', 'https://via.placeholder.com/640x480.png/003300?text=laboriosam', 114.54, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(103, 'dicta', 'Perferendis dolores accusamus nulla qui excepturi reiciendis et. Quis nesciunt culpa veritatis dolorum deleniti esse nihil. Voluptatum nihil enim voluptatum fugiat deleniti.', 'https://via.placeholder.com/640x480.png/00ccaa?text=harum', 617.01, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(104, 'ea', 'Ut soluta in qui. Recusandae officia rerum culpa. Amet voluptates cupiditate corporis sed nulla.', 'https://via.placeholder.com/640x480.png/00ccdd?text=quod', 892.04, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(105, 'aut', 'Sint voluptatem neque quo porro. Dolorem quia dolore asperiores rerum at vitae aperiam ipsum. Consequuntur eius fugiat ducimus debitis. Officia architecto ipsum alias officia nobis et.', 'https://via.placeholder.com/640x480.png/0044cc?text=ipsum', 290.74, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(106, 'eos', 'Aut aut magnam corrupti aut. Facilis nostrum magni dolorem qui consectetur aperiam rem. Consequatur corrupti qui recusandae vitae ipsum sapiente nostrum. Quae qui possimus velit modi sint dicta.', 'https://via.placeholder.com/640x480.png/00eebb?text=est', 66.13, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(107, 'et', 'Consequuntur et ipsum perspiciatis maiores. Rerum voluptatum mollitia modi sed et ut necessitatibus rerum. Magnam omnis autem animi nihil exercitationem aut.', 'https://via.placeholder.com/640x480.png/0099ee?text=est', 851.34, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(108, 'nesciunt', 'Facilis sapiente voluptate voluptatem officiis autem quia et. Enim est et voluptas beatae quia. Libero quae nam ut aliquid quae.', 'https://via.placeholder.com/640x480.png/00dd11?text=aperiam', 482.57, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(109, 'nam', 'Blanditiis laudantium qui ut et esse voluptatem aut quod. Voluptatum repellendus voluptas porro. Pariatur et consequatur itaque ut repudiandae. Quas eligendi debitis minus magni neque sapiente.', 'https://via.placeholder.com/640x480.png/00aa33?text=molestiae', 747.18, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(110, 'illo', 'Tempore consequatur nemo nobis tempore aliquid velit. In optio perferendis repellat temporibus illum ratione. Labore nemo voluptates nulla dignissimos qui ut. Consequatur sequi fugit aut nostrum est.', 'https://via.placeholder.com/640x480.png/001166?text=aliquid', 496.05, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(111, 'sequi', 'Et iste laudantium cupiditate ea necessitatibus consequuntur cum vel. Quia temporibus necessitatibus quo ratione ut corrupti.', 'https://via.placeholder.com/640x480.png/00ee55?text=est', 766.58, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(112, 'eos', 'Sequi atque qui sint recusandae. Impedit accusantium blanditiis et nostrum est. Ullam voluptate vel et animi ullam voluptas deleniti nam. Autem necessitatibus facere repudiandae nihil.', 'https://via.placeholder.com/640x480.png/0066ff?text=reprehenderit', 458.52, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(113, 'quisquam', 'Accusantium officia et repellendus atque asperiores omnis dolor. Dolor corrupti alias corrupti minima.', 'https://via.placeholder.com/640x480.png/0033ff?text=fuga', 670.10, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(114, 'aperiam', 'Odio aut et nihil officiis repudiandae quaerat. Ut consectetur voluptas natus perferendis et eum ipsa. Eos nisi autem autem mollitia sit repudiandae deserunt. Pariatur quos similique cumque vitae minima numquam. Impedit ut dolores inventore.', 'https://via.placeholder.com/640x480.png/005544?text=quia', 27.32, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(115, 'non', 'Sequi et vitae consequatur. Consequuntur illum officiis quas. Ab at dolor eos ut sunt. Voluptatum fugit illum enim natus.', 'https://via.placeholder.com/640x480.png/003355?text=maxime', 687.21, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(116, 'consectetur', 'Explicabo quaerat doloribus quia neque nobis. Optio id autem et nisi aspernatur rerum. Ex temporibus earum est aperiam maxime voluptatem. Omnis voluptas odio molestiae ex.', 'https://via.placeholder.com/640x480.png/007799?text=odit', 771.99, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(117, 'qui', 'Suscipit dolor repudiandae ex nobis. Voluptates laboriosam doloremque odio doloremque dolor. Quos quidem error voluptas quasi doloremque.', 'https://via.placeholder.com/640x480.png/00dd44?text=amet', 446.32, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(118, 'est', 'Ut est quo officiis distinctio quam molestiae. Ad harum nisi est pariatur. Vel sequi et placeat nobis repudiandae at. Ab voluptatibus nesciunt eaque voluptas quis in ut odio.', 'https://via.placeholder.com/640x480.png/00ddbb?text=ut', 383.13, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(119, 'qui', 'Optio sint et est quo hic sapiente. Et fugiat numquam autem et animi. Tempore sequi quae eligendi repellat. Voluptatem sint ducimus veniam.', 'https://via.placeholder.com/640x480.png/0055bb?text=quo', 744.51, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(120, 'accusantium', 'Libero et iste nobis saepe adipisci natus. Vero fugiat enim aperiam non.', 'https://via.placeholder.com/640x480.png/0099dd?text=sapiente', 291.04, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(121, 'ipsum', 'Dolore repudiandae qui vitae voluptatibus cum. Eligendi excepturi similique dolor. Quod corporis aliquid voluptatem aut impedit illo.', 'https://via.placeholder.com/640x480.png/00ee55?text=ea', 176.17, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(122, 'id', 'Odio dolorem voluptatem eos assumenda velit. Libero enim totam sint sunt aut. Rerum ea quasi voluptatem dolores minima.', 'https://via.placeholder.com/640x480.png/00aa11?text=aut', 802.01, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(123, 'voluptas', 'Inventore ut est veritatis animi voluptatem delectus corporis at. Neque velit cum quia repudiandae sed necessitatibus omnis. Non vitae velit dolorem id corporis.', 'https://via.placeholder.com/640x480.png/005544?text=reiciendis', 384.28, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(124, 'quas', 'Quibusdam saepe ut non excepturi sed nostrum ea voluptas. Quae recusandae modi vel voluptates perferendis. Fugiat nam aspernatur impedit molestiae nostrum nihil dicta rerum. Perspiciatis dolorem rerum consequatur quaerat et.', 'https://via.placeholder.com/640x480.png/000066?text=necessitatibus', 863.53, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(125, 'ut', 'Voluptatum enim ut sit dolor aut. Porro sunt non provident minus ipsa. Culpa et dignissimos veritatis esse ad officiis. Porro voluptas quae neque voluptas.', 'https://via.placeholder.com/640x480.png/003399?text=distinctio', 10.93, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(126, 'qui', 'Quo quae ipsum qui et a. Reprehenderit fuga repellat nam dignissimos impedit et deleniti. Dolor natus ut nesciunt ipsa eum. Commodi consequatur impedit eveniet et quam voluptas facere.', 'https://via.placeholder.com/640x480.png/00ddff?text=sed', 25.32, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(127, 'iusto', 'Saepe voluptatem ut reiciendis fugit incidunt quaerat. Cupiditate aliquid consequatur ipsum deleniti quas qui voluptate. Harum eveniet dolores consequuntur aut accusantium modi ut.', 'https://via.placeholder.com/640x480.png/00ee22?text=voluptatem', 58.01, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(128, 'consequuntur', 'Expedita qui et officiis minus laboriosam. Nihil tenetur non nobis aut blanditiis iusto similique quos. Quod hic aut debitis. Rerum placeat nobis temporibus quas veniam culpa.', 'https://via.placeholder.com/640x480.png/000022?text=consectetur', 516.08, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(129, 'aut', 'Ex possimus in voluptatem. Assumenda reprehenderit temporibus officiis rerum. Dolores esse debitis nesciunt sed tenetur veritatis.', 'https://via.placeholder.com/640x480.png/007722?text=aperiam', 912.45, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(130, 'ratione', 'Necessitatibus pariatur suscipit consectetur minima eius. Dolores itaque officia aut consequatur et. Ut placeat dolore dicta libero aut porro. Iste error dignissimos tempora non sed quia consequatur inventore. Ut consequatur dignissimos earum.', 'https://via.placeholder.com/640x480.png/00bbcc?text=commodi', 380.72, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(131, 'quo', 'Quibusdam deserunt maxime ut velit voluptas necessitatibus aut. Molestias illum est libero labore provident ut quae. Quis quis dolorem fugit aliquid.', 'https://via.placeholder.com/640x480.png/00dd22?text=necessitatibus', 329.82, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(132, 'numquam', 'Id et voluptate voluptas ad sint delectus. Aut exercitationem numquam et corporis nemo.', 'https://via.placeholder.com/640x480.png/004466?text=itaque', 726.73, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(133, 'ut', 'Est at dolores et dolorum minima rerum minima. Natus sunt eveniet quaerat aut et atque atque. Officiis ut ut rerum perspiciatis dicta voluptatibus laborum. Ut enim qui laborum.', 'https://via.placeholder.com/640x480.png/00ddaa?text=et', 254.37, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(134, 'sit', 'Blanditiis eos voluptas nulla velit. Error et in laboriosam expedita omnis tempora illo modi. Cumque commodi libero recusandae distinctio et voluptatum. Fuga ipsa dolorem consectetur cumque ut quia.', 'https://via.placeholder.com/640x480.png/0088ff?text=nemo', 73.28, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(135, 'provident', 'Eum nostrum adipisci cumque ratione amet accusantium. Sint magnam voluptate totam occaecati qui. Molestiae architecto fugit esse et.', 'https://via.placeholder.com/640x480.png/00ccee?text=accusantium', 78.31, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(136, 'sapiente', 'Voluptate temporibus facilis sint est est. Amet itaque sequi et unde inventore. Voluptate adipisci recusandae quia totam dolor deserunt necessitatibus. Placeat sint pariatur a eveniet natus amet labore.', 'https://via.placeholder.com/640x480.png/002233?text=non', 701.79, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(137, 'corrupti', 'Ipsa aliquam et quia aliquid rem aut et. Officia omnis iusto voluptas exercitationem dicta officiis quia consequatur. Maxime soluta beatae dicta aliquam et.', 'https://via.placeholder.com/640x480.png/00ee11?text=est', 683.83, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(138, 'ut', 'Consectetur nam numquam corporis qui est pariatur. Modi omnis dolorum deleniti et et beatae. Est qui quam ducimus quia nulla unde at. Quam consequatur quo hic excepturi quos.', 'https://via.placeholder.com/640x480.png/00cc11?text=qui', 215.55, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(139, 'rerum', 'Eius architecto ut enim optio et est reiciendis vitae. Corporis et ducimus sequi. Dignissimos voluptatum officiis illo autem quis sint dolorem.', 'https://via.placeholder.com/640x480.png/00ffff?text=incidunt', 439.66, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(140, 'est', 'Id nihil occaecati nobis repellendus quia harum. Omnis quia eveniet qui iure. Et a ut ipsa sit iure quae praesentium.', 'https://via.placeholder.com/640x480.png/009911?text=voluptatem', 524.85, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(141, 'eligendi', 'Quisquam quibusdam rerum aut ea error. Dolor repellat molestiae hic ducimus. Ipsa consectetur odio aut sint ut occaecati harum.', 'https://via.placeholder.com/640x480.png/0000ee?text=impedit', 329.97, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(142, 'consequatur', 'Eos alias in perferendis rerum et pariatur. Atque eum et aliquam libero. Quam dolore et sit perspiciatis ab dolor facilis. Porro et dolorem nemo eos sit. Velit et autem laudantium et reprehenderit corrupti praesentium adipisci.', 'https://via.placeholder.com/640x480.png/00bb99?text=perferendis', 276.79, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(143, 'totam', 'Saepe quo animi magni qui id placeat. Rerum veritatis eaque esse voluptas aut veritatis qui. Voluptate debitis omnis aperiam. Exercitationem cupiditate doloribus est voluptatibus autem eveniet quisquam.', 'https://via.placeholder.com/640x480.png/001155?text=pariatur', 768.54, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(144, 'eum', 'Voluptatum ea voluptatem sed consequuntur modi ut dolores. Est reprehenderit corporis sequi sed voluptate voluptas rem. Repudiandae maiores repellat hic pariatur harum. Debitis non libero harum dicta aut quae necessitatibus voluptas.', 'https://via.placeholder.com/640x480.png/0000ee?text=ut', 491.78, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(145, 'voluptatem', 'Facere aut qui quis sit quaerat rerum. Vel sunt eos exercitationem quas quo quae. Voluptatum voluptas consequatur maxime reiciendis animi.', 'https://via.placeholder.com/640x480.png/000044?text=ad', 983.03, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(146, 'beatae', 'Sit voluptatem ipsa ducimus accusamus quis nobis. Sunt aut atque nisi atque cupiditate culpa.', 'https://via.placeholder.com/640x480.png/00ddee?text=cumque', 601.44, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(147, 'ab', 'Dolores neque laboriosam quaerat natus quia id a. Vitae perspiciatis et atque cum corrupti quisquam.', 'https://via.placeholder.com/640x480.png/00bb44?text=et', 230.83, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(148, 'itaque', 'Quia et voluptate blanditiis nesciunt. Inventore et voluptate asperiores. Est mollitia eum non odit occaecati deleniti nulla sint.', 'https://via.placeholder.com/640x480.png/008811?text=perspiciatis', 445.25, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(149, 'eos', 'Blanditiis earum expedita est. In possimus est illo voluptate est quidem. Labore ut dolorem numquam voluptatem aut corrupti.', 'https://via.placeholder.com/640x480.png/00dd00?text=ipsam', 811.25, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(150, 'pariatur', 'Modi aut qui nisi cum ea aut ab. Laudantium et assumenda aut et iure. Dolores vel nihil quo distinctio autem voluptates autem. Commodi ut ut ducimus provident non animi facilis.', 'https://via.placeholder.com/640x480.png/00dd00?text=molestiae', 558.81, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(151, 'soluta', 'Omnis consequatur quaerat aspernatur explicabo. Similique sunt labore quasi aut alias. Aperiam sed tempore et neque eaque molestiae.', 'https://via.placeholder.com/640x480.png/00bbee?text=soluta', 900.23, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(152, 'error', 'Ratione et magni aut doloribus magnam nihil. Voluptate voluptates quod quam nostrum qui temporibus sit natus. Odit vitae non accusamus. Autem debitis quibusdam eligendi.', 'https://via.placeholder.com/640x480.png/004422?text=possimus', 824.31, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(153, 'officia', 'Quasi expedita autem et et ut et doloribus. Temporibus asperiores harum nemo rem aspernatur labore. Iusto dolorum eaque dolorem quia perspiciatis. Maiores ex dicta dolore quo laudantium odio dolorem. Sint dolores velit voluptatem facilis.', 'https://via.placeholder.com/640x480.png/0088ee?text=eum', 498.18, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(154, 'illo', 'Et omnis ipsa quas. Et qui facilis aspernatur error corporis fugiat et. Deleniti modi earum optio sit.', 'https://via.placeholder.com/640x480.png/00dd77?text=quas', 949.22, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(155, 'est', 'Omnis velit eos ea reiciendis architecto. Consequuntur qui ab harum facere at reprehenderit. Cum quod tenetur molestiae ut dicta.', 'https://via.placeholder.com/640x480.png/009922?text=dolorem', 474.89, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(156, 'ex', 'Reiciendis ipsam ullam eligendi. Odit voluptas sed atque sit quos quasi ut.', 'https://via.placeholder.com/640x480.png/00dd00?text=labore', 173.28, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(157, 'dolorum', 'Culpa illo ullam magni nihil. Pariatur enim dignissimos ea commodi. Totam sed est tenetur odio est sint rerum.', 'https://via.placeholder.com/640x480.png/0000ff?text=eligendi', 440.27, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(158, 'ut', 'Sed incidunt rerum natus dolor quia. Numquam error ut necessitatibus est temporibus quo. Est natus sit distinctio et id. Rerum explicabo reiciendis quam quaerat facere consectetur blanditiis iste.', 'https://via.placeholder.com/640x480.png/009955?text=nihil', 375.33, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(159, 'aut', 'Reprehenderit aut et eos. Quam qui est aliquid accusamus perspiciatis debitis. Molestiae fugit non ipsa enim labore saepe similique. Corrupti ea consequuntur cupiditate est aut corrupti nemo.', 'https://via.placeholder.com/640x480.png/0022cc?text=fuga', 827.36, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(160, 'quisquam', 'Reiciendis esse molestiae minima aut. Ipsam ut deleniti et ratione placeat asperiores magni. Tenetur dolorem fugit ex eligendi est sint error.', 'https://via.placeholder.com/640x480.png/00ff44?text=pariatur', 841.45, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(161, 'animi', 'Quia temporibus quia laboriosam perspiciatis et. Repudiandae voluptatem reprehenderit totam atque minima sit expedita dolor. Recusandae nostrum ut ipsa ut nihil voluptas. Quasi qui natus quis enim eum sed.', 'https://via.placeholder.com/640x480.png/009933?text=hic', 738.13, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(162, 'quia', 'Error incidunt impedit nulla a delectus in. Rerum ea necessitatibus non cumque ut. Qui odit sed ex eius est. Qui omnis deleniti ea quisquam mollitia pariatur et dolor.', 'https://via.placeholder.com/640x480.png/00aaee?text=autem', 204.64, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(163, 'cumque', 'Qui vel tempore voluptas voluptate qui. Sed accusantium quasi laudantium architecto aspernatur. Aut qui nemo tenetur quibusdam.', 'https://via.placeholder.com/640x480.png/0011ee?text=ex', 738.04, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(164, 'nostrum', 'Aut aut dolorem repudiandae voluptatem sed fuga. Perferendis nisi accusamus minus corrupti velit. Maxime dolor ullam rerum dolores.', 'https://via.placeholder.com/640x480.png/00dddd?text=culpa', 251.36, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(165, 'nostrum', 'Est sed nobis fugiat voluptatem cum. Labore rerum alias veritatis neque dolores est. Ut aut eum aut repellat porro vero quam.', 'https://via.placeholder.com/640x480.png/004477?text=sit', 229.40, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(166, 'culpa', 'Accusantium soluta natus sint animi. Incidunt aut quaerat quo. Enim tempora quidem quia assumenda et adipisci possimus. Similique nobis ab officiis tenetur qui.', 'https://via.placeholder.com/640x480.png/0099bb?text=earum', 899.57, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(167, 'ea', 'Quas quo saepe qui et odio pariatur. Aut reprehenderit cum natus ut harum qui consectetur. Porro suscipit architecto id voluptatem temporibus eius. Maiores sit iusto quia alias eum accusamus.', 'https://via.placeholder.com/640x480.png/003344?text=sunt', 19.45, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(168, 'sed', 'Laboriosam aut ullam est natus. Quasi voluptas autem animi earum magnam sunt sint.', 'https://via.placeholder.com/640x480.png/001111?text=at', 467.89, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(169, 'quo', 'Eligendi natus dolorem autem in neque atque. Voluptatum earum rerum recusandae consequatur impedit aperiam. Ipsa omnis enim laudantium dolore sed accusantium consequatur. Sit est sunt blanditiis autem libero officiis accusantium.', 'https://via.placeholder.com/640x480.png/0077cc?text=deserunt', 698.32, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(170, 'velit', 'Qui omnis id eius est sunt consequatur rem. Molestias fuga perferendis cupiditate sit nesciunt dolor. Non fugiat eum quod eum. Quod corrupti adipisci consequuntur dolorem qui.', 'https://via.placeholder.com/640x480.png/00bb11?text=laboriosam', 252.21, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(171, 'ab', 'Corrupti quam commodi est reiciendis harum velit. Itaque possimus facere tempora illum. Saepe tempora sit alias et facere tempore quae. Et impedit ullam alias necessitatibus eius. Beatae modi dicta nisi et quo cumque.', 'https://via.placeholder.com/640x480.png/0077dd?text=veniam', 161.86, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(172, 'tenetur', 'Ut quia et quas sed. Neque dolores eaque nihil nihil. Ab iste atque voluptatem similique necessitatibus dolorem est.', 'https://via.placeholder.com/640x480.png/00cc66?text=veritatis', 298.73, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(173, 'voluptas', 'Ut a facilis sunt commodi in. Velit explicabo labore iure illum. Qui nostrum animi rerum odit. Eius est debitis ea optio ipsum nulla ut.', 'https://via.placeholder.com/640x480.png/005544?text=numquam', 601.90, '2023-08-24 09:56:38', '2023-08-24 09:56:38');
INSERT INTO `product_models` (`id`, `title`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(174, 'rerum', 'Omnis temporibus ut ipsam qui. Cum id in nam. Id quos occaecati modi fugit architecto et.', 'https://via.placeholder.com/640x480.png/0000ee?text=iste', 501.41, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(175, 'enim', 'Quos a perferendis nihil. Eum exercitationem voluptas rerum architecto mollitia. Enim assumenda laborum qui porro possimus officiis et sint.', 'https://via.placeholder.com/640x480.png/00cc33?text=ut', 217.19, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(176, 'totam', 'Numquam enim distinctio facere suscipit dolor non vel. Fuga porro eum fugit occaecati autem voluptates. Atque quos nam debitis et soluta similique.', 'https://via.placeholder.com/640x480.png/00ddff?text=consequatur', 241.77, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(177, 'rerum', 'Commodi totam ratione et delectus eveniet voluptatem facilis deserunt. Hic eaque qui voluptas et veritatis ut voluptas. Ut sunt suscipit in molestiae eveniet recusandae. Ipsa cupiditate et cum.', 'https://via.placeholder.com/640x480.png/0077bb?text=et', 667.29, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(178, 'aliquam', 'Omnis nihil enim aut velit dolor. Modi voluptate deserunt laudantium. Aut illum laboriosam magni et aut.', 'https://via.placeholder.com/640x480.png/003333?text=alias', 708.49, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(179, 'earum', 'Exercitationem et voluptatem numquam atque error. Aut ut eaque omnis accusantium voluptate vitae. Laboriosam in autem dicta laboriosam.', 'https://via.placeholder.com/640x480.png/0077ee?text=tempore', 823.93, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(180, 'ipsum', 'Quidem voluptatum quis distinctio qui et ipsam. Tenetur dolorem perspiciatis ut. Voluptas non ut possimus similique ullam.', 'https://via.placeholder.com/640x480.png/005588?text=ut', 502.76, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(181, 'natus', 'Aspernatur dolore dolorem ipsa. Numquam nulla voluptate est quisquam aut. Natus vero aliquid labore esse et ut quo. Repellendus ipsam quo qui optio eligendi fugit.', 'https://via.placeholder.com/640x480.png/00ccff?text=exercitationem', 468.95, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(182, 'aliquam', 'Voluptas molestiae non architecto voluptatem debitis voluptates. Illo libero eius enim velit. Eum nihil dolorum nihil.', 'https://via.placeholder.com/640x480.png/002211?text=iusto', 359.95, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(183, 'eos', 'Ut distinctio eos alias et explicabo qui ducimus. Suscipit et culpa facere et sapiente est velit. Nobis enim repudiandae quo natus aperiam. Est ipsa voluptatem et blanditiis rerum tenetur.', 'https://via.placeholder.com/640x480.png/00bb00?text=aut', 398.25, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(184, 'architecto', 'Ea sit omnis provident molestiae. Accusantium explicabo sint molestias aut dolorem. Tempore at velit voluptate minus quam fuga. Voluptas velit qui culpa odio.', 'https://via.placeholder.com/640x480.png/000055?text=voluptatem', 687.97, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(185, 'tempora', 'Quo et facere est corporis nihil nostrum voluptatem autem. Soluta sed sequi consequatur consequatur. Sed ut molestias molestiae error cum sequi.', 'https://via.placeholder.com/640x480.png/006688?text=provident', 16.74, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(186, 'iure', 'Iusto laboriosam pariatur accusamus blanditiis quis. Eum doloribus illo enim saepe totam minima. Quis autem quibusdam assumenda distinctio sit veritatis.', 'https://via.placeholder.com/640x480.png/0022aa?text=ut', 610.01, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(187, 'consequatur', 'Earum aperiam qui velit expedita ipsam. Quo earum aut nesciunt quisquam provident facilis molestias quia. Iste beatae minus sed et qui.', 'https://via.placeholder.com/640x480.png/0044aa?text=distinctio', 163.42, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(188, 'harum', 'Numquam ullam occaecati dolorem qui eveniet. Provident rerum autem natus nesciunt similique aliquid qui. Occaecati autem omnis et. Sunt tempora iste occaecati vel et voluptatem eos perspiciatis.', 'https://via.placeholder.com/640x480.png/006611?text=aut', 913.45, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(189, 'recusandae', 'Totam sint alias exercitationem repellendus unde. Numquam voluptatem laudantium odit quos. Tempora sed possimus dicta. Accusantium ea voluptas vitae.', 'https://via.placeholder.com/640x480.png/005555?text=quas', 193.25, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(190, 'ab', 'Temporibus libero doloremque porro debitis. Quibusdam facere harum laudantium. Incidunt autem nesciunt recusandae sint doloremque in.', 'https://via.placeholder.com/640x480.png/001177?text=recusandae', 30.75, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(191, 'corrupti', 'Magni molestias accusamus praesentium et. Sed perferendis magnam ut a quisquam. Voluptas sint voluptatem doloremque dolorem.', 'https://via.placeholder.com/640x480.png/006600?text=praesentium', 49.10, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(192, 'et', 'Ut nam eum est est minima sunt. Et reiciendis recusandae voluptas laudantium dolores. Autem sit eius mollitia numquam optio vel voluptas.', 'https://via.placeholder.com/640x480.png/003311?text=suscipit', 75.18, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(193, 'sit', 'Laborum incidunt accusamus expedita facere architecto minima ex. Nesciunt voluptatem vero molestias ea. Et et et consectetur. Eum vel reiciendis quam nobis repellat placeat quis provident.', 'https://via.placeholder.com/640x480.png/00bbbb?text=et', 992.11, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(194, 'tempore', 'Odit dolore cupiditate eum iure rerum dignissimos iure error. Animi adipisci dicta ad praesentium fugiat esse. Optio quia iusto cupiditate incidunt non sed impedit. Dolor quod neque quas corrupti praesentium architecto est.', 'https://via.placeholder.com/640x480.png/0066aa?text=cupiditate', 500.93, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(195, 'veniam', 'Maxime est ducimus omnis. Voluptatem rem tenetur sint unde quo. Nihil non non perferendis est sapiente optio. Temporibus ratione aut est quod autem dolores. Veritatis quia odit doloremque sunt.', 'https://via.placeholder.com/640x480.png/00aaee?text=atque', 914.00, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(196, 'nam', 'Neque nobis repellat necessitatibus nam ut. Aut officiis debitis minima saepe modi sit. Id minus eaque facilis vel rerum labore qui. Ipsum voluptatem voluptas consectetur quo ratione et in.', 'https://via.placeholder.com/640x480.png/00eeaa?text=quos', 504.93, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(197, 'aliquid', 'Quam voluptas qui quis rem sit minima laudantium quidem. Voluptatem id aut ut fuga eos nobis. Libero illo voluptatem suscipit amet cum. Minus atque ea labore veniam molestiae esse non.', 'https://via.placeholder.com/640x480.png/00ee22?text=id', 872.77, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(198, 'minus', 'Et quaerat rem modi eveniet. Provident non blanditiis autem incidunt est. Consequatur quam ut ipsum ut placeat. Officiis doloremque animi magnam facilis voluptatibus velit.', 'https://via.placeholder.com/640x480.png/0077bb?text=neque', 124.48, '2023-08-24 09:56:38', '2023-08-24 09:56:38'),
(199, 'nulla', 'Et porro commodi eos quo deleniti. Sit adipisci consectetur laudantium reiciendis voluptate voluptates voluptatum.', 'https://via.placeholder.com/640x480.png/001111?text=dolor', 72.69, '2023-08-24 09:56:39', '2023-08-24 09:56:39'),
(207, 'Hello world', 'lasdflslfd adlf', '1692994269.jpg', 234.00, '2023-08-25 14:41:09', '2023-08-25 14:41:09'),
(208, 'Juli', 'hello juli', '1693030501.jpg', 1450.00, '2023-08-26 00:45:01', '2023-08-26 00:45:01'),
(220, 'ipsa', 'Id libero tempore qui culpa similique.', 'placeholder.com.png', 936.09, '2023-08-26 04:24:25', '2023-08-26 04:24:25'),
(221, 'sint', 'Eaque rem neque molestias dicta quia.', 'placeholder.com.png', 529.53, '2023-08-26 04:24:25', '2023-08-26 04:24:25'),
(222, 'accusantium', 'Nemo hic harum qui molestias minus', 'placeholder.com.png', 756.15, '2023-08-26 04:25:34', '2023-08-26 04:25:34'),
(223, 'ipsa', 'Id libero tempore qui culpa similique.', 'placeholder.com.png', 936.09, '2023-08-26 04:25:34', '2023-08-26 04:25:34'),
(224, 'sint', 'Eaque rem neque molestias dicta quia.', 'placeholder.com.png', 529.53, '2023-08-26 04:25:34', '2023-08-26 04:25:34'),
(225, 'hello', 'askldf', '1693046898.PNG', 234.00, '2023-08-26 05:18:18', '2023-08-26 05:18:18'),
(226, 'asdf', 'asdfasdfasdf', '1712510261.png', 3423.00, '2024-04-07 11:47:42', '2024-04-07 11:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Qasim', 'qasim@gmail.com', NULL, '$2y$10$7pQURjVblz1X3/JtDNNQuuwA8iIm0J/tPX2wRDrJH1zbKdQXBk2pW', NULL, '2023-08-25 05:42:51', '2023-08-25 05:42:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_models`
--
ALTER TABLE `product_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_models`
--
ALTER TABLE `product_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
