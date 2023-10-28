-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2023 a las 06:15:43
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bstj`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `cate_name`, `cate_description`, `created_at`, `updated_at`) VALUES
(1, 'categoria1', NULL, '2023-10-21 05:38:52', '2023-10-21 05:38:52'),
(2, 'categoria2', NULL, '2023-10-21 05:39:05', '2023-10-21 05:39:05'),
(3, 'categoria3', NULL, '2023-10-21 05:39:19', '2023-10-21 05:39:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clie_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clie_dni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clie_ruc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clie_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clie_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clie_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `clie_name`, `clie_dni`, `clie_ruc`, `clie_address`, `clie_phone`, `clie_email`, `created_at`, `updated_at`) VALUES
(1, 'cliente1', '12345678', NULL, NULL, NULL, NULL, '2023-10-21 06:19:28', '2023-10-21 06:19:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comp_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comp_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comp_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comp_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comp_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comp_ruc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`id`, `comp_name`, `comp_description`, `comp_logo`, `comp_email`, `comp_address`, `comp_ruc`, `created_at`, `updated_at`) VALUES
(1, 'Nombre de la empresa - ubicar', 'Descripción de la empresa - ubicar -simple', 'logo.png', 'ejemplo@gmail.com', 'ubicar dirección de empresa', '12345123451', '2023-10-21 05:36:16', '2023-10-21 05:36:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(616, '2014_10_12_000000_create_users_table', 1),
(617, '2014_10_12_100000_create_password_resets_table', 1),
(618, '2015_01_20_084450_create_roles_table', 1),
(619, '2015_01_20_084525_create_role_user_table', 1),
(620, '2015_01_24_080208_create_permissions_table', 1),
(621, '2015_01_24_080433_create_permission_role_table', 1),
(622, '2015_12_04_003040_add_special_role_column', 1),
(623, '2017_10_17_170735_create_permission_user_table', 1),
(624, '2019_08_19_000000_create_failed_jobs_table', 1),
(625, '2023_09_13_164718_create_categories_table', 1),
(626, '2023_09_13_164934_create_products_table', 1),
(627, '2023_09_13_205345_create_clients_table', 1),
(628, '2023_09_14_171407_create_providers_table', 1),
(629, '2023_09_14_214331_create_purchases_table', 1),
(630, '2023_09_14_214726_create_purchase_details_table', 1),
(631, '2023_09_14_221619_create_sales_table', 1),
(632, '2023_09_14_221747_create_sale_details_table', 1),
(633, '2023_09_20_183206_create_companies_table', 1),
(634, '2023_10_13_010610_create_product_states_table', 1),
(635, '2023_10_13_011044_create_product_state_details_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'USUARIO - NAVEGAR', 'users.index', 'lista y navega por usuarios', '2023-10-21 05:36:16', '2023-10-21 05:36:16'),
(2, 'USUARIO - CREAR', 'users.create', 'crear usuario', '2023-10-21 05:36:16', '2023-10-21 05:36:16'),
(3, 'USUARIO - VER', 'users.show', 'ver detalle de usuario', '2023-10-21 05:36:16', '2023-10-21 05:36:16'),
(4, 'USUARIO - EDITAR', 'users.edit', 'editar usuario', '2023-10-21 05:36:16', '2023-10-21 05:36:16'),
(5, 'USUARIO - ELIMINAR', 'users.destroy', 'eliminar usuario', '2023-10-21 05:36:16', '2023-10-21 05:36:16'),
(6, 'ROL - NAVEGAR', 'roles.index', 'lista y navega por rol', '2023-10-21 05:36:16', '2023-10-21 05:36:16'),
(7, 'ROL - CREAR', 'roles.create', 'crear rol', '2023-10-21 05:36:16', '2023-10-21 05:36:16'),
(8, 'ROL - VER', 'roles.show', 'ver detalle de rol', '2023-10-21 05:36:16', '2023-10-21 05:36:16'),
(9, 'ROL - EDITAR', 'roles.edit', 'editar rol', '2023-10-21 05:36:16', '2023-10-21 05:36:16'),
(10, 'ROL - ELIMINAR', 'roles.destroy', 'eliminar rol', '2023-10-21 05:36:16', '2023-10-21 05:36:16'),
(11, 'CATEGORÍA - NAVEGAR', 'categories.index', 'lista y navega por categoría', '2023-10-21 05:36:16', '2023-10-21 05:36:16'),
(12, 'CATEGORÍA - CREAR', 'categories.create', 'crear categoría', '2023-10-21 05:36:16', '2023-10-21 05:36:16'),
(13, 'CATEGORÍA - VER', 'categories.show', 'ver detalle de categoría', '2023-10-21 05:36:17', '2023-10-21 05:36:17'),
(14, 'CATEGORÍA - EDITAR', 'categories.edit', 'editar categoría', '2023-10-21 05:36:17', '2023-10-21 05:36:17'),
(15, 'CATEGORÍA - ELIMINAR', 'categories.destroy', 'eliminar categoría', '2023-10-21 05:36:17', '2023-10-21 05:36:17'),
(16, 'CLIENTE - NAVEGAR', 'clients.index', 'lista y navega por cliente', '2023-10-21 05:36:17', '2023-10-21 05:36:17'),
(17, 'CLIENTE - CREAR', 'clients.create', 'crear cliente', '2023-10-21 05:36:17', '2023-10-21 05:36:17'),
(18, 'CLIENTE VER', 'clients.show', 'ver detalle de cliente', '2023-10-21 05:36:17', '2023-10-21 05:36:17'),
(19, 'CLIENTE - EDITAR', 'clients.edit', 'editar cliente', '2023-10-21 05:36:17', '2023-10-21 05:36:17'),
(20, 'CLIENTE - ELIMINAR', 'clients.destroy', 'eliminar cliente', '2023-10-21 05:36:17', '2023-10-21 05:36:17'),
(21, 'PRODUCTO - NAVEGAR', 'products.index', 'lista y navega por producto', '2023-10-21 05:36:17', '2023-10-21 05:36:17'),
(22, 'PRODUCTO - CREAR', 'products.create', 'crear producto', '2023-10-21 05:36:17', '2023-10-21 05:36:17'),
(23, 'PRODUCTO - VER', 'products.show', 'ver detalle de producto', '2023-10-21 05:36:17', '2023-10-21 05:36:17'),
(24, 'PRODUCTO - EDITAR', 'products.edit', 'editar producto', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(25, 'PRODUCTO - ELIMINAR', 'products.destroy', 'eliminar producto', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(26, 'PRODUCTO - CAMBIAR ESTADO', 'change.status.products', 'cambiar estado de producto', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(27, 'PROVEEDOR - NAVEGAR', 'providers.index', 'lista y navega por proveedor', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(28, 'PROVEEDOR - CREAR', 'providers.create', 'crear proveedor', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(29, 'PROVEEDOR - VER', 'providers.show', 'ver detalle de proveedor', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(30, 'PROVEEDOR - EDITAR', 'providers.edit', 'editar proveedor', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(31, 'PROVEEDOR - ELIMINAR', 'providers.destroy', 'eliminar proveedor', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(32, 'COMPRA - NAVEGAR', 'purchases.index', 'lista y navega por compra', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(33, 'COMPRA - CREAR', 'purchases.create', 'crear compra', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(34, 'COMPRA - VER DETALLE', 'purchases.show', 'ver detalle de compra', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(35, 'COMPRA - CAMBIAR ESTADO', 'change.status.purchases', 'cambiar estado de compra', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(36, 'COMPRA - DESCARGAR PDF', 'purchases.pdf', 'descargar compra en PDF', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(37, 'VENTA - NAVEGAR', 'sales.index', 'lista y navega por venta', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(38, 'VENTA CREAR', 'sales.create', 'crear venta', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(39, 'VENTA - VER', 'sales.show', 'ver detalle de venta', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(40, 'VENTA - CAMBIAR ESTADO', 'change.status.sales', 'cambiar estado de venta', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(41, 'VENTA - DESCARGAR PDF', 'sales.pdf', 'descargar venta en PDF', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(42, 'VENTA - IMPRIMIR', 'sales.print', 'imprimir una boleta/factura de venta', '2023-10-21 05:36:18', '2023-10-21 05:36:18'),
(43, 'REPORTE - DÍA', 'reports.day', 'generar reportes por día de venta', '2023-10-21 05:36:19', '2023-10-21 05:36:19'),
(44, 'REPORTE - FECHAS', 'reports.date', 'generar reportes por fecha de venta', '2023-10-21 05:36:19', '2023-10-21 05:36:19'),
(45, 'EMPRESA - NAVEGAR', 'companies.index', 'lista y navega por empresa', '2023-10-21 05:36:19', '2023-10-21 05:36:19'),
(46, 'EMPRESA - EDITAR', 'companies.edit', 'editar empresa', '2023-10-21 05:36:19', '2023-10-21 05:36:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_user`
--

CREATE TABLE `permission_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prod_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prod_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_stock` decimal(8,2) NOT NULL DEFAULT 0.00,
  `prod_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prod_price` decimal(12,2) NOT NULL,
  `prod_expiration` date DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `prod_code`, `prod_name`, `prod_stock`, `prod_image`, `prod_price`, `prod_expiration`, `category_id`, `created_at`, `updated_at`) VALUES
(1, '00000001', 'Licencia SO WXP', '10.00', NULL, '100.00', '2023-10-28', 1, '2023-10-21 05:41:45', '2023-10-22 08:16:33'),
(2, '00000002', 'Licencia Office', '0.00', NULL, '20.00', '2023-11-23', 2, '2023-10-21 05:42:00', '2023-10-22 08:16:34'),
(3, '00000003', 'Licencia SO W7', '0.00', NULL, '30.00', '2023-10-28', 3, '2023-10-21 05:42:20', '2023-10-22 08:16:34'),
(4, '00000004', 'inka kola', '0.00', NULL, '8.00', '2023-11-30', 1, '2023-10-21 21:57:01', '2023-10-22 08:16:34'),
(5, '00000005', 'latop hp', '0.00', NULL, '5000.00', '2023-11-30', 2, '2023-10-21 21:57:42', '2023-10-22 08:16:34'),
(6, '00000006', 'mouse inalámbrico', '0.00', NULL, '50.00', '2023-12-22', 3, '2023-10-21 21:58:15', '2023-10-22 08:16:34'),
(7, '00000007', 'teclado inalambrico', '0.00', NULL, '200.00', '2023-10-21', 3, '2023-10-21 21:59:18', '2023-10-22 08:16:34'),
(8, '00000008', 'cable utp', '0.00', NULL, '3.00', '2023-10-21', 1, '2023-10-22 07:14:12', '2023-10-22 08:32:26'),
(9, '00000009', 'audifonnos', '0.00', NULL, '150.00', '2023-10-21', 1, '2023-10-22 07:22:47', '2023-10-22 08:32:27'),
(10, '00000010', 'producto2', '0.00', NULL, '3.00', '2023-10-21', 2, '2023-10-22 08:39:36', '2023-10-22 08:46:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_states`
--

CREATE TABLE `product_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prod_stat_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_states`
--

INSERT INTO `product_states` (`id`, `prod_stat_state`, `created_at`, `updated_at`) VALUES
(1, 'EXPIRED', '2023-10-21 05:36:19', '2023-10-21 05:36:19'),
(2, 'IMPERFECT', '2023-10-21 05:36:19', '2023-10-21 05:36:19'),
(3, 'OBSOLETE', '2023-10-21 05:36:19', '2023-10-21 05:36:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_state_details`
--

CREATE TABLE `product_state_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prod_stat_deta_date` date NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_state_id` bigint(20) UNSIGNED NOT NULL,
  `prod_stat_deta_cantidad` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_state_details`
--

INSERT INTO `product_state_details` (`id`, `prod_stat_deta_date`, `product_id`, `product_state_id`, `prod_stat_deta_cantidad`, `created_at`, `updated_at`) VALUES
(1, '2023-10-20', 1, 2, '5.00', '2023-10-21 05:52:10', '2023-10-21 05:52:10'),
(2, '2023-10-20', 1, 3, '4.00', '2023-10-21 05:52:45', '2023-10-21 05:52:45'),
(3, '2023-10-20', 1, 1, '5.00', '2023-10-21 06:41:47', '2023-10-21 06:41:47'),
(4, '2023-10-20', 2, 1, '5.00', '2023-10-21 06:41:57', '2023-10-21 06:41:57'),
(5, '2023-10-20', 3, 1, '5.00', '2023-10-21 06:48:42', '2023-10-21 06:48:42'),
(6, '2023-10-20', 3, 2, '5.00', '2023-10-21 06:51:49', '2023-10-21 06:51:49'),
(7, '2023-10-20', 3, 1, '5.00', '2023-10-21 06:55:21', '2023-10-21 06:55:21'),
(8, '2023-10-20', 3, 3, '5.00', '2023-10-21 06:56:33', '2023-10-21 06:56:33'),
(9, '2023-10-20', 3, 2, '5.00', '2023-10-21 07:02:26', '2023-10-21 07:02:26'),
(46, '2023-10-21', 8, 1, '10.00', '2023-10-22 08:32:26', '2023-10-22 08:32:26'),
(47, '2023-10-21', 9, 1, '20.00', '2023-10-22 08:32:27', '2023-10-22 08:32:27'),
(48, '2023-10-21', 10, 1, '5.00', '2023-10-22 08:46:03', '2023-10-22 08:46:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prov_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prov_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prov_ruc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prov_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prov_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `providers`
--

INSERT INTO `providers` (`id`, `prov_name`, `prov_email`, `prov_ruc`, `prov_address`, `prov_phone`, `created_at`, `updated_at`) VALUES
(1, 'proveedor1', 'proveedor1@gmail.com', '12345678901', 'Jr. Angamos n° 001', '123456789', '2023-10-21 06:17:55', '2023-10-21 06:17:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `purc_date` datetime NOT NULL,
  `purc_tax` decimal(8,2) NOT NULL,
  `purc_total` decimal(8,2) NOT NULL,
  `purc_status` enum('VALID','CANCELED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VALID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `purchases`
--

INSERT INTO `purchases` (`id`, `provider_id`, `user_id`, `purc_date`, `purc_tax`, `purc_total`, `purc_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-10-20 20:21:56', '0.00', '400000.00', 'CANCELED', '2023-10-21 06:21:56', '2023-10-21 06:25:41'),
(2, 1, 1, '2023-10-20 20:28:00', '0.00', '8000.00', 'VALID', '2023-10-21 06:28:00', '2023-10-21 06:28:00'),
(3, 1, 1, '2023-10-21 12:05:16', '0.00', '48000.00', 'VALID', '2023-10-21 22:05:16', '2023-10-21 22:05:16'),
(4, 1, 1, '2023-10-21 12:07:52', '0.00', '280000.00', 'VALID', '2023-10-21 22:07:52', '2023-10-21 22:07:52'),
(5, 1, 1, '2023-10-21 12:08:53', '0.00', '26000.00', 'VALID', '2023-10-21 22:08:53', '2023-10-21 22:08:53');

--
-- Disparadores `purchases`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockCompraAnular` AFTER UPDATE ON `purchases` FOR EACH ROW BEGIN
IF new.purc_status = 'VALID' THEN
UPDATE products p
JOIN purchase_details di
ON di.product_id = p.id
AND di.purchase_id= new.id
SET p.prod_stock = p.prod_stock + di.pude_quantity;
ELSE
UPDATE products p
JOIN purchase_details di
ON di.product_id = p.id
AND di.purchase_id= new.id
SET p.prod_stock = p.prod_stock - di.pude_quantity;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `pude_quantity` decimal(8,2) NOT NULL,
  `pude_price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `purchase_id`, `product_id`, `pude_quantity`, `pude_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '100.00', '4000.00', '2023-10-21 06:21:57', '2023-10-21 06:21:57'),
(2, 3, 7, '50.00', '120.00', '2023-10-21 22:05:17', '2023-10-21 22:05:17'),
(3, 3, 5, '10.00', '4000.00', '2023-10-21 22:05:17', '2023-10-21 22:05:17'),
(4, 3, 6, '50.00', '40.00', '2023-10-21 22:05:17', '2023-10-21 22:05:17'),
(5, 4, 5, '80.00', '3500.00', '2023-10-21 22:07:53', '2023-10-21 22:07:53'),
(6, 5, 6, '200.00', '30.00', '2023-10-21 22:08:53', '2023-10-21 22:08:53'),
(7, 5, 7, '200.00', '100.00', '2023-10-21 22:08:53', '2023-10-21 22:08:53');

--
-- Disparadores `purchase_details`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockCompra` AFTER INSERT ON `purchase_details` FOR EACH ROW BEGIN
UPDATE products SET prod_stock = prod_stock + NEW.pude_quantity
WHERE products.id = NEW.product_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` enum('all-access','no-access') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `special`) VALUES
(1, 'Admin', 'admin', NULL, '2023-10-21 05:36:15', '2023-10-21 05:36:15', 'all-access');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-10-21 05:36:16', '2023-10-21 05:36:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `sale_tax` decimal(8,2) NOT NULL,
  `sale_total` decimal(8,2) NOT NULL,
  `sale_status` enum('VALID','CANCELED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VALID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `client_id`, `user_id`, `sale_date`, `sale_tax`, `sale_total`, `sale_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-10-20 20:24:20', '0.00', '5000.00', 'CANCELED', '2023-10-21 06:24:20', '2023-10-21 22:11:58'),
(2, 1, 1, '2023-10-21 12:09:23', '0.00', '400000.00', 'VALID', '2023-10-21 22:09:23', '2023-10-21 22:09:23'),
(3, 1, 1, '2023-10-21 12:09:47', '0.00', '5000.00', 'VALID', '2023-10-21 22:09:47', '2023-10-21 22:09:47'),
(4, 1, 1, '2023-10-21 12:10:06', '0.00', '18000.00', 'VALID', '2023-10-21 22:10:06', '2023-10-21 22:10:06');

--
-- Disparadores `sales`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockVentaAnular` AFTER UPDATE ON `sales` FOR EACH ROW BEGIN
IF new.sale_status = 'VALID' THEN 
UPDATE products p JOIN sale_details dv 
ON dv.product_id = p.id 
AND dv.sale_id= new.id 
SET p.prod_stock= p.prod_stock - dv.sade_quantity; 
ELSE 
UPDATE products p JOIN sale_details dv 
ON dv.product_id = p.id 
AND dv.sale_id= new.id 
SET p.prod_stock= p.prod_stock + dv.sade_quantity; 
END IF; 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `sade_quantity` decimal(8,2) NOT NULL,
  `sade_price` decimal(8,2) NOT NULL,
  `sade_discount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sale_details`
--

INSERT INTO `sale_details` (`id`, `sale_id`, `product_id`, `sade_quantity`, `sade_price`, `sade_discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '50.00', '100.00', '0.00', '2023-10-21 06:24:21', '2023-10-21 06:24:21'),
(2, 2, 5, '80.00', '5000.00', '0.00', '2023-10-21 22:09:23', '2023-10-21 22:09:23'),
(3, 3, 6, '100.00', '50.00', '0.00', '2023-10-21 22:09:47', '2023-10-21 22:09:47'),
(4, 4, 7, '90.00', '200.00', '0.00', '2023-10-21 22:10:06', '2023-10-21 22:10:06');

--
-- Disparadores `sale_details`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockVenta` AFTER INSERT ON `sale_details` FOR EACH ROW BEGIN
UPDATE products SET prod_stock= prod_stock - NEW.sade_quantity
WHERE products.id = NEW.product_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'administrador23', 'administrador23@gmail.com', NULL, '$2y$10$pYuUVwP.JMUtuSJGfk9FkeumRi5gB81.g4foHekwg8QioomJBiCWO', NULL, '2023-10-21 05:36:15', '2023-10-21 05:36:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_cate_name_unique` (`cate_name`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_clie_dni_unique` (`clie_dni`),
  ADD UNIQUE KEY `clients_clie_ruc_unique` (`clie_ruc`),
  ADD UNIQUE KEY `clients_clie_phone_unique` (`clie_phone`),
  ADD UNIQUE KEY `clients_clie_email_unique` (`clie_email`);

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_prod_name_unique` (`prod_name`),
  ADD UNIQUE KEY `products_prod_code_unique` (`prod_code`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `product_states`
--
ALTER TABLE `product_states`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_state_details`
--
ALTER TABLE `product_state_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_state_details_product_id_foreign` (`product_id`),
  ADD KEY `product_state_details_product_state_id_foreign` (`product_state_id`);

--
-- Indices de la tabla `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `providers_prov_name_unique` (`prov_name`),
  ADD UNIQUE KEY `providers_prov_ruc_unique` (`prov_ruc`);

--
-- Indices de la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_provider_id_foreign` (`provider_id`),
  ADD KEY `purchases_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_details_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_client_id_foreign` (`client_id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_details_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_details_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=636;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `product_states`
--
ALTER TABLE `product_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `product_state_details`
--
ALTER TABLE `product_state_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `product_state_details`
--
ALTER TABLE `product_state_details`
  ADD CONSTRAINT `product_state_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_state_details_product_state_id_foreign` FOREIGN KEY (`product_state_id`) REFERENCES `product_states` (`id`);

--
-- Filtros para la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchase_details_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`);

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `sale_details`
--
ALTER TABLE `sale_details`
  ADD CONSTRAINT `sale_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_details_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
