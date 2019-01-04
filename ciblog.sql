-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 04, 2019 at 03:47 PM
-- Server version: 8.0.13
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id`, `user_id`, `name`) VALUES
(1, 1, 'Business'),
(5, 1, 'Food'),
(6, 2, 'La categoria de jose');

-- --------------------------------------------------------

--
-- Table structure for table `Comment`
--

CREATE TABLE `Comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Comment`
--

INSERT INTO `Comment` (`id`, `post_id`, `name`, `email`, `body`) VALUES
(1, 18, 'Andrés', 'andresmontoyafcb@gmail.com', 'Great post!'),
(2, 18, 'sdasdas', 'sdassd@saa.com', 'dsdas'),
(3, 31, 'Jose', 'jose@gmail.com', 'Este post es muy bueno, me ayudo a hacer mi almuerzo'),
(4, 32, 'Andrés', 'andres@gmail.com', 'muy bueno!');

-- --------------------------------------------------------

--
-- Table structure for table `Post`
--

CREATE TABLE `Post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Post`
--

INSERT INTO `Post` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`) VALUES
(1, 1, 1, 'How to create a webpage with codeigniter', 'How-to-create-a-webpage-with-codeigniter', '<h1><strong>You need to bla bla bla</strong></h1>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otroPrimero que todo, necesitamos descargar esto y lo otroPrimero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otroPrimero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n', 'noimage.jpg'),
(31, 5, 1, 'Como hacer un arroz con pollo', 'Como-hacer-un-arroz-con-pollo', '<p>Los platos con arroz son muy populares en casi todo el mundo. Se consume en mayor cantidad en Asia, el caribe, Espa&ntilde;a, Sur Am&eacute;rica y Centro Am&eacute;rica. Las recetas var&iacute;an de lugar en lugar, al igual que la textura y los ingredientes que se van incorporando. Diferentes tipos de carnes y salchichas, vegetales, salsas, especias y alg&uacute;n toque picante hacen la diferencia.</p>\r\n\r\n<p>El arroz con pollo, es de esos platos infaltables de la cocina colombiana. Una receta muy sabrosa, alegre, colorida. Y lo mejor es que rinde un mont&oacute;n!</p>\r\n\r\n<p><img alt=\"Arroz con Pollo www.antojandoando.com\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-pint-pq.jpg\" style=\"height:787px; width:525px\" /></p>\r\n\r\n<p>Arroz con Pollo www.antojandoando.com</p>\r\n\r\n<p>Un buen plato de arroz, es la oportunidad para compartir en familia, para sentirse en casa, contando an&eacute;cdotas, historias, mientras se disfrutan estos sabores tan conocidos y que se nos antojan tanto. Las recetas son maravillosas, especialmente estas de la cocina tradicional que vamos heredando y que pasamos como legado, de generaci&oacute;n en generaci&oacute;n.</p>\r\n\r\n<p>Para preparar el arroz con pollo, requiere un poco m&aacute;s de ingredientes, tiempo y elaboraci&oacute;n que el arroz que se come a diario. Pero no se asusten que es muy f&aacute;cil, basta con comenzar preparando un caldo con buena sustancia. El caldo, es la clave para que el arroz tenga un excelente sabor. Para lograrlo, cocinamos las pechugas de pollo en agua, le agregamos ajos, un atado con perejil, cilantro, apio y cebolla y condimentos al gusto. Con ese caldo, se prepara el arroz y aparte se hace una mezcla con los vegetales, un poco de caldo, la salsa de tomate y el pollo desmenuzado y luego lo mezclaremos todo con el arroz.</p>\r\n\r\n<p><img alt=\"Arroz con Pollo www.antojandoando.com\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-detalle-pq-1.jpg\" style=\"height:401px; width:535px\" /></p>\r\n\r\n<p>Arroz con Pollo www.antojandoando.com</p>\r\n\r\n<p>Cuando estoy en Bogot&aacute; lo preparamos con mi mam&aacute; por lo general para el fin de semana. Nos reunimos con mis padres, mis hermanos, cu&ntilde;ados y sobrinos. Adem&aacute;s de almorzar, pasamos toda la tarde haciendo alguna actividad juntos.</p>\r\n\r\n<p>Familia y diversi&oacute;n son siempre excelente combinaci&oacute;n, y que mejor que &eacute;ste plato que nos remonta a buenos momentos y que tanto a grandes como a chicos, nos encanta por igual&hellip; Aunque, a decir verdad, son los ni&ntilde;os los m&aacute;s felices si se acompa&ntilde;a con papitas fritas y salsa de tomate (ketchup). Buen provecho!</p>\r\n\r\n<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-feat-pq.jpg\"><img alt=\"Arroz con Pollo\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-feat-pq-150x150.jpg\" /></a></p>\r\n\r\n<p>Arroz con Pollo</p>\r\n\r\n<p>Uno de los platos infaltables de la cocina colombiana. Deliciosa receta preparada con vegetales frescos, pollo y arroz, solo hay que seguir el paso a paso. Es una receta muy sabrosa, alegre, colorida. Y lo mejor es que rinde un mont&oacute;n!</p>\r\n\r\n<p>Raciones:8personas</p>\r\n\r\n<p>Tiempo de preparaci&oacute;n:10minutos</p>\r\n\r\n<p>Tiempo de cocci&oacute;n:65minutos</p>\r\n\r\n<p>Tiempo de reposo:</p>\r\n\r\n<p>Ingredientes</p>\r\n\r\n<ul>\r\n	<li>2 1/2tazas<a href=\"https://antojandoando.com/ingrediente/arroz-blanco/\">arroz blanco</a>de grano largo regular</li>\r\n	<li>6 1/2tazas<a href=\"https://antojandoando.com/ingrediente/agua/\">agua</a></li>\r\n	<li>1<a href=\"https://antojandoando.com/ingrediente/pechuga-de-pollo/\">pechuga de pollo</a>sin piel (2 libras)</li>\r\n	<li>2cdas<a href=\"https://antojandoando.com/ingrediente/aceite-vegetal/\">aceite vegetal</a></li>\r\n	<li>1<a href=\"https://antojandoando.com/ingrediente/cebolla-cabezona/\">cebolla cabezona</a>peque&ntilde;a picada en cuadros</li>\r\n	<li>2-3<a href=\"https://antojandoando.com/ingrediente/dientes-de-ajo/\">dientes de ajo</a>machacados</li>\r\n	<li>1/2<a href=\"https://antojandoando.com/ingrediente/pimenton-rojo/\">piment&oacute;n rojo</a>mediano en julianas</li>\r\n	<li>1/2<a href=\"https://antojandoando.com/ingrediente/pimenton-verde/\">piment&oacute;n verde</a>mediano en julianas</li>\r\n	<li>1 1/2tazas<a href=\"https://antojandoando.com/ingrediente/vegetales-2/\">vegetales</a>zanahoria, habichuela, arveja</li>\r\n	<li>8oz<a href=\"https://antojandoando.com/ingrediente/pasta-de-tomate/\">pasta de tomate</a>(tomato sauce) 227g</li>\r\n	<li><a href=\"https://antojandoando.com/ingrediente/hierbas-de-olor/\">hierbas de olor</a>tomillo, laurel, or&eacute;gano al gusto</li>\r\n	<li><a href=\"https://antojandoando.com/ingrediente/sal-y-pimienta/\">sal y pimienta</a>al gusto</li>\r\n	<li><a href=\"https://antojandoando.com/ingrediente/chile-aji-o-picante/\">chile, aj&iacute; o picante</a>al gusto (opcional)</li>\r\n	<li>1tallo<a href=\"https://antojandoando.com/ingrediente/apio/\">apio</a>limpio y son venas</li>\r\n	<li><a href=\"https://antojandoando.com/ingrediente/perejil-y-cilantro/\">perejil y cilantro</a>al gusto</li>\r\n	<li>2sobres<a href=\"https://antojandoando.com/ingrediente/sazon-goya/\">saz&oacute;n Goya</a>o color al gusto</li>\r\n</ul>\r\n\r\n<p>Instrucciones</p>\r\n\r\n<p>Para el Caldo y el Arroz</p>\r\n\r\n<ol>\r\n	<li>Ingredientes.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-ing-or.jpg\"><img alt=\"Ingredientes.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-ing-or.jpg\" /></a></p>\r\n	</li>\r\n	<li>Detalle salsa de tomate (tomato sauce).\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-salsa-pq.jpg\"><img alt=\"Detalle salsa de tomate (tomato sauce).\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-salsa-pq.jpg\" /></a></p>\r\n	</li>\r\n	<li>Detalle ramillete. Atado con apio, perejil y cilantro. Pueden poner tambi&eacute;n cebolla larga (cebolla de rama), tomillo, laurel, or&eacute;gano.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-ramo-pq.jpg\"><img alt=\"Detalle ramillete. Atado con apio, perejil y cilantro. Pueden poner también cebolla larga (cebolla de rama), tomillo, laurel, orégano.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-ramo-pq.jpg\" /></a></p>\r\n	</li>\r\n	<li>Poner el agua con 1/2 cdta de sal, el ramillete y los ajos.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-agua-pq.jpg\"><img alt=\"Poner el agua con  1/2 cdta de sal, el ramillete y los ajos.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-agua-pq.jpg\" /></a></p>\r\n	</li>\r\n	<li>Agregar la pechuga de pollo, sal y condimentos al gusto. Dejar hervir y cocinar por 30 minutos a fuego medio.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-pollo-pq.jpg\"><img alt=\"Agregar la pechuga de pollo, sal y condimentos al gusto. Dejar hervir y cocinar por 30 minutos a fuego medio.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-pollo-pq.jpg\" /></a></p>\r\n	</li>\r\n	<li>Cuando ya est&eacute; cocida la pechuga, se saca del caldo y se reserva en un plato. Cuando est&eacute; tibia se desmenuza con la mano o con la ayuda de dos tenedores.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-desmenuza-pq.jpg\"><img alt=\"Cuando ya esté cocida la pechuga, se saca del caldo y se reserva en un plato. Cuando esté tibia se desmenuza con la mano o con la ayuda de dos tenedores.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-desmenuza-pq.jpg\" /></a></p>\r\n	</li>\r\n	<li>Pasar el caldo por un colador. Medir 5 tazas, regresar el l&iacute;quido a la olla dejar hervir. A&ntilde;adir dos cucharadas de aceite, un sobre de saz&oacute;n Goya o color al gusto y sal o condimentos si hacen falta para que quede con buen sabor.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-caldo-pq.jpg\"><img alt=\"Pasar el caldo por un colador. Medir 5 tazas, regresar el líquido a la olla dejar hervir.  Añadir dos cucharadas de aceite, un sobre de sazón Goya o color al gusto y sal o condimentos si hacen falta para que quede con buen sabor.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-caldo-pq.jpg\" /></a></p>\r\n	</li>\r\n	<li>Incorporar el arroz, revolver.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-arroz-pq.jpg\"><img alt=\"Incorporar el arroz, revolver.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-arroz-pq.jpg\" /></a></p>\r\n	</li>\r\n	<li>Dejar a fuego medio alto hasta que seque.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-arrozlisto-pq.jpg\"><img alt=\"Dejar a fuego medio alto hasta que seque. \" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-arrozlisto-pq.jpg\" /></a></p>\r\n	</li>\r\n	<li>Tapar y dejar a fuego bajo por 15 minutos. Destapar y mezclar con ayuda de un tenedor para separar los granos.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-grano-pq.jpg\"><img alt=\"Tapar y dejar a fuego bajo por 15 minutos. Destapar y mezclar con ayuda de un tenedor para separar los granos.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-grano-pq.jpg\" /></a></p>\r\n	</li>\r\n	<li>Agregar los vegetales con el pollo, revolver con cuidado.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-mezcla-pq.jpg\"><img alt=\"Agregar los vegetales con el pollo, revolver con cuidado.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-mezcla-pq.jpg\" /></a></p>\r\n	</li>\r\n	<li>A&ntilde;adir el cilantro picado, revolver.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-cilantro-pq.jpg\"><img alt=\"Añadir el cilantro picado, revolver.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-cilantro-pq.jpg\" /></a></p>\r\n	</li>\r\n	<li>Servir caliente, decorar con hoja fresca de perejil. Acompa&ntilde;ar con papas fritas (french fries) y ketchup.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-close-pq.jpg\"><img alt=\"Servir caliente, decorar con hoja fresca de perejil. Acompañar con papas fritas (french fries) y ketchup.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-close-pq.jpg\" /></a></p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Para los Vegetales</p>\r\n\r\n<ol>\r\n	<li>En una olla o sart&eacute;n, poner 2 cucharadas de aceite. Agregar la cebolla y el piment&oacute;n, dejar rehogar unos 5-6 minutos a fuego medio alto.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-sarten-pq-1.jpg\"><img alt=\"En una olla o sartén, poner 2 cucharadas de aceite. Agregar la cebolla y el pimentón, dejar rehogar unos 5-6 minutos a fuego medio alto.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-sarten-pq-1.jpg\" /></a></p>\r\n	</li>\r\n	<li>Incorporar las hierbas de olor, comino, 1 sobre de saz&oacute;n Goya (opcional) o color al gusto, sal y pimienta al gusto.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-hierbas-pq.jpg\"><img alt=\"Incorporar las hierbas de olor, comino, 1 sobre de sazón Goya (opcional) o color al gusto, sal y pimienta al gusto.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-hierbas-pq.jpg\" /></a></p>\r\n	</li>\r\n	<li>A&ntilde;adir la salsa de tomate (tomato sauce), los vegetales precocidos y 1/2 taza del caldo de pollo o agua. Mezclar, agregar m&aacute;s sal y pimienta si es necesario y aj&iacute;, chile o picante al gusto (opcional). Dejar cocinar unos 3-4 minutos m&aacute;s.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-veg-pq.jpg\"><img alt=\"Añadir la salsa de tomate (tomato sauce), los vegetales precocidos y 1/2 taza del caldo de pollo o agua. Mezclar, agregar más sal y pimienta si es necesario y ají, chile o picante al gusto (opcional). Dejar cocinar unos 3-4 minutos más.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-veg-pq.jpg\" /></a></p>\r\n	</li>\r\n	<li>Incorporar el pollo precocido, revolver bien de manera que todos los ingredientes queden bien mezclados para a&ntilde;adirlos al arroz.\r\n	<p><a href=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-mix-pq.jpg\"><img alt=\"Incorporar el pollo precocido, revolver bien de manera que todos los ingredientes queden bien mezclados para añadirlos al arroz.\" src=\"https://antojandoando.com/wp-content/uploads/2015/01/arroz-pollo2-mix-pq.jpg\" /></a></p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Notas</p>\r\n\r\n<p>Si no tienen la salsa de tomate&nbsp;(tomato sauce), pueden usar ketchup rebajada con un poco de agua para la preparaci&oacute;n de los vegetales.</p>\r\n\r\n<p>Hay quienes preparan todo en la misma olla pero de esta manera los vegetales quedan demasiado cocidos y el arroz queda pegajoso, no queda con el grano suelto.</p>\r\n\r\n<p>Aconsejo usar arroz regular de grano largo para que el grano quede suelto, no arb&oacute;reo ni calrose pues va a quedar demasiado pegajoso. Tampoco arroz jazm&iacute;n (jazmin rice) ni basmati pues son muy perfumados y cambian totalmente el sabor.</p>\r\n', 'arroz.jpg'),
(32, 6, 2, 'Primera clase de jose', 'Primera-clase-de-jose', '<h2>&iquest;Qu&eacute; es Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>\r\n\r\n<h2>&iquest;Por qu&eacute; lo usamos?</h2>\r\n\r\n<p>Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&iquest;De d&oacute;nde viene?</h2>\r\n\r\n<p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32</p>\r\n\r\n<p>El trozo de texto est&aacute;ndar de Lorem Ipsum usado desde el a&ntilde;o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de &quot;de Finibus Bonorum et Malorum&quot; por Cicero son tambi&eacute;n reproducidas en su forma original exacta, acompa&ntilde;adas por versiones en Ingl&eacute;s de la traducci&oacute;n realizada en 1914 por H. Rackham.</p>\r\n\r\n<h2>&iquest;D&oacute;nde puedo conseguirlo?</h2>\r\n\r\n<p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del lat&iacute;n, combinadas con estructuras muy &uacute;tiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estar&aacute; libre de repeticiones, humor agregado o palabras no caracter&iacute;sticas del lenguaje, etc.</p>\r\n', 'noimage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `name`, `zipcode`, `email`, `username`, `password`) VALUES
(1, 'Andrés', '231321', 'andresmontoyafcb@gmail.com', 'AndresMontoya', 'c3fc5bbe8786cb4556480eb3e009508f'),
(2, 'jose', '12132132', 'jose@gmail.com', 'jose123', '90e528618534d005b1a7e7b7a367813f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Post`
--
ALTER TABLE `Post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Comment`
--
ALTER TABLE `Comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Post`
--
ALTER TABLE `Post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
