-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2023 at 02:41 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `roles`, `password`) VALUES
(1, 'a@a.com', '[\"ROLE_ADMIN\"]', '$2y$13$jllIljZSqadbiTuoRxcQsOZomVdRzlEuhHPYybQ9MKFDRZ19pXv3a'),
(2, 'b@b.com', '[\"ROLE_USER\"]', '$2y$13$jllIljZSqadbiTuoRxcQsOZomVdRzlEuhHPYybQ9MKFDRZ19pXv3a');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_publication` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `titre`, `contenu`, `date_publication`) VALUES
(2, 'Antony\'s not the best', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed vitae suscipit tempore ipsum labore eos ipsa, quasi nisi ducimus repudiandae delectus cupiditate qui officia ex ad. Mollitia, suscipit! Iste quo beatae temporibus voluptates est at quidem nam illo sed illum culpa nesciunt, odio vitae corrupti cum cumque consequuntur debitis quasi adipisci similique distinctio voluptate quam! Tempora placeat laudantium mollitia voluptate, at, dolore similique ipsam eum dolorem eos atque aspernatur nisi ducimus nobis enim! Quasi quam quisquam voluptatum perferendis. Earum error excepturi, nemo beatae voluptas ut ex suscipit quas omnis sunt dolorem neque sint, praesentium quos. Consequuntur sed inventore exercitationem aliquid ipsum suscipit nihil modi dolor voluptas minima pariatur, enim reprehenderit saepe iusto facere officia. Quis, iure. Earum blanditiis possimus facilis odit ad, ab consequuntur, vero nisi dolorum sit sed? Eligendi nobis tempore perferendis maiores necessitatibus atque placeat assumenda magni dolor molestias asperiores exercitationem quis officia, doloremque a corrupti qui cupiditate rem hic reiciendis expedita distinctio totam saepe. Excepturi nihil quam sint possimus ea quo? Iure impedit dignissimos reiciendis deleniti reprehenderit officiis sed ad quas atque voluptatem molestiae ut, fugit obcaecati earum. Minima officiis nemo vero aspernatur cum autem sapiente, numquam doloremque temporibus dolore odio! Voluptas facilis vel quasi excepturi odio deleniti nam illum, reiciendis provident iste beatae porro animi? Aliquam blanditiis reiciendis in omnis praesentium ab deleniti reprehenderit iusto, accusamus quidem, quos dicta rem laboriosam excepturi officia doloremque sapiente? Ut repudiandae modi sed, quaerat hic quia error earum voluptatem cum corrupti labore fugit voluptatibus a, perspiciatis voluptas. Sed a officia deleniti quae est ad beatae neque necessitatibus, pariatur voluptatibus voluptatem magni laudantium possimus cum consequuntur molestiae quaerat eligendi quibusdam et culpa adipisci fugit. Recusandae ducimus ullam architecto fuga natus consequuntur iusto inventore illo, adipisci atque dolores quis quidem dolor autem! Fuga laborum magnam est veritatis et numquam accusantium adipisci, eveniet iusto, perspiciatis laboriosam dolorum? Maxime commodi, unde inventore, fuga placeat amet blanditiis deserunt possimus omnis veniam doloribus minima ut accusantium. Esse doloremque excepturi perferendis reiciendis nulla eius ad saepe quasi? Placeat non, quisquam architecto eligendi delectus blanditiis aspernatur sint nihil quaerat labore in dolorum illo distinctio, voluptatibus exercitationem atque, saepe quasi illum rerum fuga perferendis incidunt repudiandae culpa? Nihil officiis, ratione aut quam assumenda enim eligendi odit obcaecati veniam placeat consequuntur provident exercitationem dicta, deserunt odio? Expedita quasi quo laboriosam velit veniam libero sequi fuga nemo at totam exercitationem ab aliquid qui id nisi minima consectetur quis in aperiam quisquam, numquam adipisci. Eius aperiam iure voluptas sapiente quidem ipsam quas veniam delectus eum deserunt. Blanditiis sed ullam maiores animi aliquid voluptatem, repellendus veniam, illum dignissimos quo, explicabo soluta odio praesentium libero natus reiciendis? Vitae aspernatur necessitatibus adipisci ipsum neque, ipsam iusto iure quo cum ad deserunt aperiam voluptates ex porro tempora odit. Eligendi, sint libero perferendis cum iure sit necessitatibus ipsa blanditiis incidunt recusandae, facere animi harum, quidem praesentium dolor labore at non provident. Nobis cupiditate fugit ut ratione quod nulla repudiandae cum quos recusandae nisi in maiores eum, sunt voluptates velit earum fugiat eius atque, quae unde beatae ex minus temporibus nostrum. Quibusdam commodi reprehenderit expedita, qui perspiciatis unde nihil beatae, veniam distinctio est dolorum explicabo aperiam nisi. Molestiae repellendus aspernatur eum, odit expedita sed incidunt, aliquid maxime dolor inventore atque accusamus amet enim odio consequatur a accusantium sit repudiandae rem obcaecati fugit, magnam unde voluptates. Quia, numquam. Autem enim distinctio saepe unde, consequatur delectus repudiandae sunt ex dolore, at necessitatibus adipisci ipsum cumque a laudantium est beatae? Saepe aspernatur quisquam et impedit qui ipsa praesentium dolor labore pariatur placeat sapiente laboriosam architecto recusandae ratione reiciendis, ea debitis nobis deleniti eius. Atque cupiditate nam ullam obcaecati et ad sed consectetur suscipit nesciunt maxime in corrupti maiores, voluptatibus necessitatibus possimus magni numquam fugiat voluptate neque sequi. Nostrum optio nihil iusto vitae cupiditate! Cumque laboriosam quae deleniti recusandae exercitationem aut, quam, dicta officiis harum voluptate iure nobis consectetur? Harum, tempore. Eius perspiciatis dignissimos delectus neque? Sed neque repellat adipisci debitis voluptas alias qui fuga doloribus veritatis nisi ipsam ipsa consectetur omnis impedit, voluptatem obcaecati incidunt architecto perferendis quisquam earum magnam et eveniet. Dignissimos ducimus asperiores consequatur sequi placeat animi repellendus rem, aperiam cumque porro, dolorem ipsum aliquid exercitationem assumenda nihil consequuntur facilis laborum! Minima incidunt laudantium, aspernatur illum veniam pariatur accusamus molestiae iste nesciunt ducimus voluptatibus magni similique et dolor culpa delectus quis tempora a itaque placeat recusandae sit. Voluptatum cupiditate, quia porro voluptatem impedit deleniti! Ut accusamus natus id quam aliquid sequi accusantium dignissimos cupiditate eaque laudantium qui, praesentium veritatis iusto nisi corporis alias, consequuntur sit ipsa quidem tempora dolorem aliquam? Beatae excepturi corrupti tenetur blanditiis natus adipisci minus illo labore aspernatur temporibus pariatur sequi, id minima velit molestias voluptates veritatis odit! Pariatur, mollitia in dignissimos ullam est corrupti ipsam possimus repellat impedit reprehenderit esse veritatis animi optio, iure tenetur earum itaque ad nulla! Ipsa enim sit dolorum. Possimus sunt dolorum distinctio totam omnis optio! Sequi corrupti molestiae, recusandae corporis dolorem adipisci vitae? Illum saepe doloremque in dignissimos quae. Cum provident, tenetur eum a, pariatur saepe quod facere maxime cupiditate asperiores ad recusandae, voluptate autem rerum molestias magnam est illum praesentium iure unde nam ullam beatae veniam quisquam! Doloremque quis cupiditate, ipsa delectus temporibus cumque fuga, harum, animi illum earum nihil est perferendis rem incidunt? Quia atque accusamus nesciunt. Tempora dicta nam corporis ipsa quidem, ipsam eligendi consequatur, iure harum libero repellat delectus. Enim voluptas quis eum architecto! Perferendis mollitia obcaecati culpa nesciunt voluptas et sed nemo accusantium officiis, corrupti rerum reprehenderit consectetur ipsum minus veritatis dolore aut ad expedita, maiores error provident, asperiores cumque? Blanditiis, amet corrupti nisi necessitatibus sint at, expedita natus perspiciatis perferendis odio ducimus voluptas laudantium! Aliquam, sunt? Mollitia ratione autem molestias optio voluptate ducimus veniam dignissimos a, eligendi totam veritatis dolores soluta qui adipisci fuga commodi quod amet sunt nisi, labore architecto repellendus sed minima! Sint, unde distinctio. Quibusdam tempora nisi repellat alias dolorem provident nobis sint tempore tenetur hic? Quisquam odit harum, ipsa ex earum facere, esse, beatae iusto provident praesentium blanditiis accusamus. Nesciunt sit quae incidunt eveniet eius hic reiciendis voluptatum et odio?', '2023-03-31 14:16:00'),
(4, 'Api pokemons', '{\"abilities\":[{\"ability\":{\"name\":\"limber\",\"url\":\"https://pokeapi.co/api/v2/ability/7/\"},\"is_hidden\":false,\"slot\":1},{\"ability\":{\"name\":\"imposter\",\"url\":\"https://pokeapi.co/api/v2/ability/150/\"},\"is_hidden\":true,\"slot\":3}],\"base_experience\":101,\"forms\":[{\"name\":\"ditto\",\"url\":\"https://pokeapi.co/api/v2/pokemon-form/132/\"}],\"game_indices\":[{\"game_index\":76,\"version\":{\"name\":\"red\",\"url\":\"https://pokeapi.co/api/v2/version/1/\"}},{\"game_index\":76,\"version\":{\"name\":\"blue\",\"url\":\"https://pokeapi.co/api/v2/version/2/\"}},{\"game_index\":76,\"version\":{\"name\":\"yellow\",\"url\":\"https://pokeapi.co/api/v2/version/3/\"}},{\"game_index\":132,\"version\":{\"name\":\"gold\",\"url\":\"https://pokeapi.co/api/v2/version/4/\"}},{\"game_index\":132,\"version\":{\"name\":\"silver\",\"url\":\"https://pokeapi.co/api/v2/version/5/\"}},{\"game_index\":132,\"version\":{\"name\":\"crystal\",\"url\":\"https://pokeapi.co/api/v2/version/6/\"}},{\"game_index\":132,\"version\":{\"name\":\"ruby\",\"url\":\"https://pokeapi.co/api/v2/version/7/\"}},{\"game_index\":132,\"version\":{\"name\":\"sapphire\",\"url\":\"https://pokeapi.co/api/v2/version/8/\"}},{\"game_index\":132,\"version\":{\"name\":\"emerald\",\"url\":\"https://pokeapi.co/api/v2/version/9/\"}},{\"game_index\":132,\"version\":{\"name\":\"firered\",\"url\":\"https://pokeapi.co/api/v2/version/10/\"}},{\"game_index\":132,\"version\":{\"name\":\"leafgreen\",\"url\":\"https://pokeapi.co/api/v2/version/11/\"}},{\"game_index\":132,\"version\":{\"name\":\"diamond\",\"url\":\"https://pokeapi.co/api/v2/version/12/\"}},{\"game_index\":132,\"version\":{\"name\":\"pearl\",\"url\":\"https://pokeapi.co/api/v2/version/13/\"}},{\"game_index\":132,\"version\":{\"name\":\"platinum\",\"url\":\"https://pokeapi.co/api/v2/version/14/\"}},{\"game_index\":132,\"version\":{\"name\":\"heartgold\",\"url\":\"https://pokeapi.co/api/v2/version/15/\"}},{\"game_index\":132,\"version\":{\"name\":\"soulsilver\",\"url\":\"https://pokeapi.co/api/v2/version/16/\"}},{\"game_index\":132,\"version\":{\"name\":\"black\",\"url\":\"https://pokeapi.co/api/v2/version/17/\"}},{\"game_index\":132,\"version\":{\"name\":\"white\",\"url\":\"https://pokeapi.co/api/v2/version/18/\"}},{\"game_index\":132,\"version\":{\"name\":\"black-2\",\"url\":\"https://pokeapi.co/api/v2/version/21/\"}},{\"game_index\":132,\"version\":{\"name\":\"white-2\",\"url\":\"https://pokeapi.co/api/v2/version/22/\"}}],\"height\":3,\"held_items\":[{\"item\":{\"name\":\"metal-powder\",\"url\":\"https://pokeapi.co/api/v2/item/234/\"},\"version_details\":[{\"rarity\":5,\"version\":{\"name\":\"ruby\",\"url\":\"https://pokeapi.co/api/v2/version/7/\"}},{\"rarity\":5,\"version\":{\"name\":\"sapphire\",\"url\":\"https://pokeapi.co/api/v2/version/8/\"}},{\"rarity\":5,\"version\":{\"name\":\"emerald\",\"url\":\"https://pokeapi.co/api/v2/version/9/\"}},{\"rarity\":5,\"version\":{\"name\":\"firered\",\"url\":\"https://pokeapi.co/api/v2/version/10/\"}},{\"rarity\":5,\"version\":{\"name\":\"leafgreen\",\"url\":\"https://pokeapi.co/api/v2/version/11/\"}},{\"rarity\":5,\"version\":{\"name\":\"diamond\",\"url\":\"https://pokeapi.co/api/v2/version/12/\"}},{\"rarity\":5,\"version\":{\"name\":\"pearl\",\"url\":\"https://pokeapi.co/api/v2/version/13/\"}},{\"rarity\":5,\"version\":{\"name\":\"platinum\",\"url\":\"https://pokeapi.co/api/v2/version/14/\"}},{\"rarity\":5,\"version\":{\"name\":\"heartgold\",\"url\":\"https://pokeapi.co/api/v2/version/15/\"}},{\"rarity\":5,\"version\":{\"name\":\"soulsilver\",\"url\":\"https://pokeapi.co/api/v2/version/16/\"}},{\"rarity\":5,\"version\":{\"name\":\"black\",\"url\":\"https://pokeapi.co/api/v2/version/17/\"}},{\"rarity\":5,\"version\":{\"name\":\"white\",\"url\":\"https://pokeapi.co/api/v2/version/18/\"}},{\"rarity\":5,\"version\":{\"name\":\"black-2\",\"url\":\"https://pokeapi.co/api/v2/version/21/\"}},{\"rarity\":5,\"version\":{\"name\":\"white-2\",\"url\":\"https://pokeapi.co/api/v2/version/22/\"}},{\"rarity\":5,\"version\":{\"name\":\"x\",\"url\":\"https://pokeapi.co/api/v2/version/23/\"}},{\"rarity\":5,\"version\":{\"name\":\"y\",\"url\":\"https://pokeapi.co/api/v2/version/24/\"}},{\"rarity\":5,\"version\":{\"name\":\"omega-ruby\",\"url\":\"https://pokeapi.co/api/v2/version/25/\"}},{\"rarity\":5,\"version\":{\"name\":\"alpha-sapphire\",\"url\":\"https://pokeapi.co/api/v2/version/26/\"}},{\"rarity\":5,\"version\":{\"name\":\"sun\",\"url\":\"https://pokeapi.co/api/v2/version/27/\"}},{\"rarity\":5,\"version\":{\"name\":\"moon\",\"url\":\"https://pokeapi.co/api/v2/version/28/\"}},{\"rarity\":5,\"version\":{\"name\":\"ultra-sun\",\"url\":\"https://pokeapi.co/api/v2/version/29/\"}},{\"rarity\":5,\"version\":{\"name\":\"ultra-moon\",\"url\":\"https://pokeapi.co/api/v2/version/30/\"}}]},{\"item\":{\"name\":\"quick-powder\",\"url\":\"https://pokeapi.co/api/v2/item/251/\"},\"version_details\":[{\"rarity\":50,\"version\":{\"name\":\"diamond\",\"url\":\"https://pokeapi.co/api/v2/version/12/\"}},{\"rarity\":50,\"version\":{\"name\":\"pearl\",\"url\":\"https://pokeapi.co/api/v2/version/13/\"}},{\"rarity\":50,\"version\":{\"name\":\"platinum\",\"url\":\"https://pokeapi.co/api/v2/version/14/\"}},{\"rarity\":50,\"version\":{\"name\":\"heartgold\",\"url\":\"https://pokeapi.co/api/v2/version/15/\"}},{\"rarity\":50,\"version\":{\"name\":\"soulsilver\",\"url\":\"https://pokeapi.co/api/v2/version/16/\"}},{\"rarity\":50,\"version\":{\"name\":\"black\",\"url\":\"https://pokeapi.co/api/v2/version/17/\"}},{\"rarity\":50,\"version\":{\"name\":\"white\",\"url\":\"https://pokeapi.co/api/v2/version/18/\"}},{\"rarity\":50,\"version\":{\"name\":\"black-2\",\"url\":\"https://pokeapi.co/api/v2/version/21/\"}},{\"rarity\":50,\"version\":{\"name\":\"white-2\",\"url\":\"https://pokeapi.co/api/v2/version/22/\"}},{\"rarity\":50,\"version\":{\"name\":\"x\",\"url\":\"https://pokeapi.co/api/v2/version/23/\"}},{\"rarity\":50,\"version\":{\"name\":\"y\",\"url\":\"https://pokeapi.co/api/v2/version/24/\"}},{\"rarity\":50,\"version\":{\"name\":\"omega-ruby\",\"url\":\"https://pokeapi.co/api/v2/version/25/\"}},{\"rarity\":50,\"version\":{\"name\":\"alpha-sapphire\",\"url\":\"https://pokeapi.co/api/v2/version/26/\"}},{\"rarity\":50,\"version\":{\"name\":\"sun\",\"url\":\"https://pokeapi.co/api/v2/version/27/\"}},{\"rarity\":50,\"version\":{\"name\":\"moon\",\"url\":\"https://pokeapi.co/api/v2/version/28/\"}},{\"rarity\":50,\"version\":{\"name\":\"ultra-sun\",\"url\":\"https://pokeapi.co/api/v2/version/29/\"}},{\"rarity\":50,\"version\":{\"name\":\"ultra-moon\",\"url\":\"https://pokeapi.co/api/v2/version/30/\"}}]}],\"id\":132,\"is_default\":true,\"location_area_encounters\":\"https://pokeapi.co/api/v2/pokemon/132/encounters\",\"moves\":[{\"move\":{\"name\":\"transform\",\"url\":\"https://pokeapi.co/api/v2/move/144/\"},\"version_group_details\":[{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"red-blue\",\"url\":\"https://pokeapi.co/api/v2/version-group/1/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"yellow\",\"url\":\"https://pokeapi.co/api/v2/version-group/2/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"gold-silver\",\"url\":\"https://pokeapi.co/api/v2/version-group/3/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"crystal\",\"url\":\"https://pokeapi.co/api/v2/version-group/4/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"ruby-sapphire\",\"url\":\"https://pokeapi.co/api/v2/version-group/5/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"emerald\",\"url\":\"https://pokeapi.co/api/v2/version-group/6/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"firered-leafgreen\",\"url\":\"https://pokeapi.co/api/v2/version-group/7/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"diamond-pearl\",\"url\":\"https://pokeapi.co/api/v2/version-group/8/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"platinum\",\"url\":\"https://pokeapi.co/api/v2/version-group/9/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"heartgold-soulsilver\",\"url\":\"https://pokeapi.co/api/v2/version-group/10/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"black-white\",\"url\":\"https://pokeapi.co/api/v2/version-group/11/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"colosseum\",\"url\":\"https://pokeapi.co/api/v2/version-group/12/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"xd\",\"url\":\"https://pokeapi.co/api/v2/version-group/13/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"black-2-white-2\",\"url\":\"https://pokeapi.co/api/v2/version-group/14/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"x-y\",\"url\":\"https://pokeapi.co/api/v2/version-group/15/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"omega-ruby-alpha-sapphire\",\"url\":\"https://pokeapi.co/api/v2/version-group/16/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"sun-moon\",\"url\":\"https://pokeapi.co/api/v2/version-group/17/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"ultra-sun-ultra-moon\",\"url\":\"https://pokeapi.co/api/v2/version-group/18/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"lets-go-pikachu-lets-go-eevee\",\"url\":\"https://pokeapi.co/api/v2/version-group/19/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"sword-shield\",\"url\":\"https://pokeapi.co/api/v2/version-group/20/\"}},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"version_group\":{\"name\":\"scarlet-violet\",\"url\":\"https://pokeapi.co/api/v2/version-group/25/\"}}]}],\"name\":\"ditto\",\"order\":214,\"past_types\":[],\"species\":{\"name\":\"ditto\",\"url\":\"https://pokeapi.co/api/v2/pokemon-species/132/\"},\"sprites\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/132.png\",\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/132.png\",\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png\",\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/132.png\",\"front_shiny_female\":null,\"other\":{\"dream_world\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/132.svg\",\"front_female\":null},\"home\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/132.png\",\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/132.png\",\"front_shiny_female\":null},\"official-artwork\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/132.png\",\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/132.png\"}},\"versions\":{\"generation-i\":{\"red-blue\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/back/132.png\",\"back_gray\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/back/gray/132.png\",\"back_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/transparent/back/132.png\",\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/132.png\",\"front_gray\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/gray/132.png\",\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/transparent/132.png\"},\"yellow\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/back/132.png\",\"back_gray\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/back/gray/132.png\",\"back_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/transparent/back/132.png\",\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/132.png\",\"front_gray\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/gray/132.png\",\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/transparent/132.png\"}},\"generation-ii\":{\"crystal\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/back/132.png\",\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/back/shiny/132.png\",\"back_shiny_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/back/shiny/132.png\",\"back_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/back/132.png\",\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/132.png\",\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/shiny/132.png\",\"front_shiny_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/shiny/132.png\",\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/132.png\"},\"gold\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/back/132.png\",\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/back/shiny/132.png\",\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/132.png\",\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/shiny/132.png\",\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/transparent/132.png\"},\"silver\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/back/132.png\",\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/back/shiny/132.png\",\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/132.png\",\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/shiny/132.png\",\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/transparent/132.png\"}},\"generation-iii\":{\"emerald\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/emerald/132.png\",\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/emerald/shiny/132.png\"},\"firered-leafgreen\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/back/132.png\",\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/back/shiny/132.png\",\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/132.png\",\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/shiny/132.png\"},\"ruby-sapphire\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/back/132.png\",\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/back/shiny/132.png\",\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/132.png\",\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/shiny/132.png\"}},\"generation-iv\":{\"diamond-pearl\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/132.png\",\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/shiny/132.png\",\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/132.png\",\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/shiny/132.png\",\"front_shiny_female\":null},\"heartgold-soulsilver\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/132.png\",\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/shiny/132.png\",\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/132.png\",\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/shiny/132.png\",\"front_shiny_female\":null},\"platinum\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/132.png\",\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/shiny/132.png\",\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/132.png\",\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/shiny/132.png\",\"front_shiny_female\":null}},\"generation-v\":{\"black-white\":{\"animated\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/132.gif\",\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/shiny/132.gif\",\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/132.gif\",\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/shiny/132.gif\",\"front_shiny_female\":null},\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/132.png\",\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/shiny/132.png\",\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/132.png\",\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/shiny/132.png\",\"front_shiny_female\":null}},\"generation-vi\":{\"omegaruby-alphasapphire\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/132.png\",\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/shiny/132.png\",\"front_shiny_female\":null},\"x-y\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/132.png\",\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/shiny/132.png\",\"front_shiny_female\":null}},\"generation-vii\":{\"icons\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/icons/132.png\",\"front_female\":null},\"ultra-sun-ultra-moon\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/132.png\",\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/shiny/132.png\",\"front_shiny_female\":null}},\"generation-viii\":{\"icons\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-viii/icons/132.png\",\"front_female\":null}}}},\"stats\":[{\"base_stat\":48,\"effort\":1,\"stat\":{\"name\":\"hp\",\"url\":\"https://pokeapi.co/api/v2/stat/1/\"}},{\"base_stat\":48,\"effort\":0,\"stat\":{\"name\":\"attack\",\"url\":\"https://pokeapi.co/api/v2/stat/2/\"}},{\"base_stat\":48,\"effort\":0,\"stat\":{\"name\":\"defense\",\"url\":\"https://pokeapi.co/api/v2/stat/3/\"}},{\"base_stat\":48,\"effort\":0,\"stat\":{\"name\":\"special-attack\",\"url\":\"https://pokeapi.co/api/v2/stat/4/\"}},{\"base_stat\":48,\"effort\":0,\"stat\":{\"name\":\"special-defense\",\"url\":\"https://pokeapi.co/api/v2/stat/5/\"}},{\"base_stat\":48,\"effort\":0,\"stat\":{\"name\":\"speed\",\"url\":\"https://pokeapi.co/api/v2/stat/6/\"}}],\"types\":[{\"slot\":1,\"type\":{\"name\":\"normal\",\"url\":\"https://pokeapi.co/api/v2/type/1/\"}}],\"weight\":40}', '2023-03-30 14:39:40'),
(12, 'NON MAIS ALLO QUOI', 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).', '2023-03-31 14:00:25'),
(13, 'HEROS MAIS PAS ZERO', 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).', '2023-03-31 14:00:47'),
(14, 'IRON MAN THE BEST', 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).', '2023-03-31 14:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `article_id` int NOT NULL,
  `auteur` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photo_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `auteur`, `text`, `created_at`, `photo_filename`) VALUES
(1, 2, 'MAMAIA', '$createdAt = DateTimeField::new(\'createdAt\')->setFormTypeOptions([\r\n+            \'html5\' => true,\r\n+            \'years\' => range(date(\'Y\'), date(\'Y\') + 5),\r\n+            \'widget\' => \'single_text\',\r\n+        ]);', '2023-03-31 07:52:08', NULL),
(2, 2, 'MAMAIA', '$createdAt = DateTimeField::new(\'createdAt\')->setFormTypeOptions([\r\n+            \'html5\' => true,\r\n+            \'years\' => range(date(\'Y\'), date(\'Y\') + 5),\r\n+            \'widget\' => \'single_text\',\r\n+        ]);', '2023-03-31 07:53:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230330120109', '2023-03-30 12:01:15', 78),
('DoctrineMigrations\\Version20230330133146', '2023-03-30 13:31:58', 67),
('DoctrineMigrations\\Version20230330182127', '2023-03-30 18:21:29', 184),
('DoctrineMigrations\\Version20230330183845', '2023-03-30 18:38:46', 44),
('DoctrineMigrations\\Version20230331072423', '2023-03-31 07:24:24', 57),
('DoctrineMigrations\\Version20230331073544', '2023-03-31 07:35:56', 72),
('DoctrineMigrations\\Version20230331082044', '2023-03-31 08:20:49', 44),
('DoctrineMigrations\\Version20230331082423', '2023-03-31 08:24:30', 10);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_880E0D76E7927C74` (`email`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C7294869C` (`article_id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
