-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 09, 2017 at 11:19 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `huckleberrycorp`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('657611dod883m3lqqhc9br82m9mpl8km', '127.0.0.1', 1491238231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313233383233313b),
('3hd1v0o35k4g4jcb9mah5ivfkcm6chto', '127.0.0.1', 1491238654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313233383635343b),
('psvphd3l483nhpkc2rlbqm4jqpgptd5u', '127.0.0.1', 1491239467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313233393436373b),
('oadpou7tblbs64ecu669r1ke682rbens', '127.0.0.1', 1491240144, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313234303134343b),
('iamja947f493k8k8jf5924a6e4kc02l4', '127.0.0.1', 1491241507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313234313530373b),
('m6omb8ge3tffql1er77calvhje0cd4r4', '127.0.0.1', 1491242162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313234323136323b),
('3erv65tkj5onppppcpggddqrkqjrbgtj', '127.0.0.1', 1491242522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313234323532323b),
('f3htq3v1trab2m43oadludktch92m1vp', '127.0.0.1', 1491243146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313234333134363b),
('ju8ludvq3mf18tp3e69dapq5ec1k2jme', '127.0.0.1', 1491244074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313234343037343b),
('dtqbeidsu3vqervhu8r26ekfrfh7nvth', '127.0.0.1', 1491244864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313234343836343b),
('a4bqi2a3g3hur5pk8vv6hnges7ast5bu', '127.0.0.1', 1491245168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313234353136383b),
('bnukcc1kegkvq0n1des4sf0fvjnqg1ir', '127.0.0.1', 1491245804, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313234353830343b75736572726f6c657c733a353a226775657374223b),
('tvicvg31v3a4333hksmluj75apgon4p3', '127.0.0.1', 1491250017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313235303031373b75736572726f6c657c733a353a226775657374223b),
('337pi1p2v9ujde9j05k5dus9ofod6di8', '127.0.0.1', 1491250642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313235303634323b75736572726f6c657c733a353a226f776e6572223b),
('1u90gf8u80ufpo96nr5ncoes29v40g7j', '127.0.0.1', 1491251568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313235313536383b75736572726f6c657c733a353a226f776e6572223b),
('qgpvgqd8fmgi7tc766kfv1crug1s18qp', '127.0.0.1', 1491251592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313235313536383b75736572726f6c657c733a353a226f776e6572223b),
('8f267882obi6ai9qf8vm9mvsdt9jilni', '127.0.0.1', 1491268979, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313236383937393b),
('98s3d871evocj30bcmkkr7k0sn88hvd0', '127.0.0.1', 1491269578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313236393537383b),
('30bt054podpetas48kaconpp609vcm3d', '127.0.0.1', 1491270370, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313237303337303b),
('ed4j3ngafn6456jruvufh34agp25nkqr', '127.0.0.1', 1491271050, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313237313035303b),
('dpbk7ehg4bvldqoqfj1mbctu2u4nvm6p', '127.0.0.1', 1491271383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313237313338333b),
('gqraie9ki7lmskjh777me77df85duvnd', '127.0.0.1', 1491271684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313237313638343b),
('d6n61bqs1hhaaqifq69r6mqmgr73b2vd', '127.0.0.1', 1491275554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313237353535343b),
('9ju87uoc7lmm219tkack4901u0bb81or', '127.0.0.1', 1491276707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313237363730373b),
('eakd5csid13vkevmfn5pd3ufiskmnago', '127.0.0.1', 1491277110, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313237373131303b),
('qhv2e0iomrbcqvu8bvpvo8836p56lacb', '127.0.0.1', 1491277488, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313237373438383b),
('em924hl8ejj5u7oqn297bimnda6fk3f1', '127.0.0.1', 1491277790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313237373739303b),
('pebuf6gi2lbkaoi7jm2tuh3okl7o50mv', '127.0.0.1', 1491278118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313237383131383b),
('6qk6lvclpeijv65fu349ihe1hf42g363', '127.0.0.1', 1491278447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313237383434373b),
('us2ubu0b7kdblj2ae3h1fd3urlji7sbl', '127.0.0.1', 1491281569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313238313536393b),
('jcldlm3olnprs4adjehegdft6sklvjvk', '127.0.0.1', 1491283709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313238333730393b),
('f0d2hquhjo61rmaqefaif5idljifs3dk', '127.0.0.1', 1491285970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313238353937303b),
('92966312a42ouqdldot43g16j3nsjj7a', '127.0.0.1', 1491286306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313238363330363b75736572726f6c657c733a353a226f776e6572223b),
('r4ucr5dscj2h8vtpd3t0glqbs53foapq', '127.0.0.1', 1491286607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313238363630373b75736572726f6c657c733a353a226f776e6572223b),
('2kslnejqi97hko52gbglah67ugd3uh49', '127.0.0.1', 1491286931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313238363933313b75736572726f6c657c733a353a226f776e6572223b),
('pi4f2l877h4j1n2efbeo4iuj1u69fd1k', '127.0.0.1', 1491287503, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313238373530333b75736572726f6c657c733a353a226f776e6572223b),
('rc7e4g4c7jfriragp871q6aaepmlme23', '127.0.0.1', 1491287684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313238373530333b75736572726f6c657c733a353a226f776e6572223b),
('rai896ad00sji43i3ndqfrs656g37knq', '127.0.0.1', 1491329271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313332393232313b),
('sd59lb1hig1eft699atr0c39qi8dq2uh', '127.0.0.1', 1491342384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313334323338343b75736572726f6c657c733a353a226f776e6572223b),
('e8tf6nfhfae7pj0dpggf2jvi108s8rji', '127.0.0.1', 1491342698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313334323639383b75736572726f6c657c733a353a226f776e6572223b),
('8jsdu43coh4rqgua93supfa6ekcuqla9', '127.0.0.1', 1491343095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313334333039353b75736572726f6c657c733a353a226f776e6572223b),
('m3fkbih37slbodf8l2tl3ao0vosu5pvr', '127.0.0.1', 1491343467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313334333436373b75736572726f6c657c733a353a226f776e6572223b),
('7rvc6qiople6a82g9n1g66dqgao5rnqe', '127.0.0.1', 1491343583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313334333436373b75736572726f6c657c733a353a226f776e6572223b),
('mcs864oqdf369tm9kvnv2pofeq7oende', '127.0.0.1', 1491355405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313335353430353b),
('tmncju2gr5a3s8c0tq2s3ogmtk73b0ia', '127.0.0.1', 1491355764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313335353736343b),
('4u6dsh2cjclbhj7e0tla3e57e7a247uq', '127.0.0.1', 1491356066, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313335363036363b),
('hldi7vdjmq8r7fhfm7q1blvof031rhl9', '127.0.0.1', 1491356390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313335363339303b),
('ohtg6acc8spk8t7q33h27s88jfr1dvv8', '127.0.0.1', 1491357460, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313335373436303b),
('e5skhhr82h76ef0fdqddv0fto275go15', '127.0.0.1', 1491358430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313335383433303b),
('o1l4or1ngird6dhr1280fc3dn45gsl1a', '127.0.0.1', 1491358845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313335383834353b),
('jqng2jjkvujr2iqh2bdn3nnsv8irt12q', '127.0.0.1', 1491359173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313335393137333b),
('6uvo0cbi7q1avjhjmtprqafpv6q2fhq8', '127.0.0.1', 1491359562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313335393536323b),
('7io4ccr6r2a4gsohseriqql2tt1d51bp', '127.0.0.1', 1491359906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313335393930363b),
('e5hglqs9n69f5nj9oai2sek9g21vetij', '127.0.0.1', 1491360244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313336303234343b),
('ktd8d95n82338jtent7dboane3nmhfv7', '127.0.0.1', 1491360589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313336303538393b),
('r7ocdh5m9vqj3lbpstfmlusj1k61ndfa', '127.0.0.1', 1491360935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313336303933353b),
('50l62p073jiu1i9oic4k3rgptp4r2lds', '127.0.0.1', 1491361253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313336313235333b),
('cs73gdphf2o1gv60muagpemjfn9hvn63', '127.0.0.1', 1491362915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313336323931353b),
('fhjn19q7lgndj15ibgqlbjni83q40l30', '127.0.0.1', 1491363496, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313336333439363b),
('0sol0gamn9nmfu6rer86ta8fih0hnnpi', '127.0.0.1', 1491363846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313336333834363b),
('toiqnhcbvvuncec6d2sdvoh1nv8pdre5', '127.0.0.1', 1491367901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313336373930313b),
('mdnfherj8o1r1v89i32t8k6de1hpunao', '127.0.0.1', 1491374774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313337343737343b),
('3d5au54agpjrp47ed1jcpnrksutnjsqm', '127.0.0.1', 1491377898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313337373839383b),
('efm0q3j3o708qlubplq8j0bivo892eni', '127.0.0.1', 1491378235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313337383233353b),
('iasappbgii20o8gjd7ok3m1g5hfh7rs4', '127.0.0.1', 1491378669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313337383636393b),
('jk60oot4046q09ugf6tmquhcpv379gfu', '127.0.0.1', 1491378997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313337383939373b),
('3tbgk2h9d3cpm8n205d0n6konajjou3d', '127.0.0.1', 1491379432, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313337393433323b),
('4v6tuvvhrbrvohn6ro5if9srq26ojloi', '127.0.0.1', 1491379976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313337393937363b),
('68da0b9r78lo1c5k3k83mms3igd9dsga', '127.0.0.1', 1491380611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313338303631313b),
('1jqgpdvuc3nsh7al9c98ic6bn12ug3hd', '127.0.0.1', 1491380982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313338303938323b),
('gnb8uahj7ull76dp2l1ok2fhapgg13a7', '127.0.0.1', 1491382807, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313338323830373b),
('a33b2avb0tl15ubilfjgbgh960hm1dtb', '127.0.0.1', 1491383364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313338333336343b),
('csh87vhb5u7s97urkttaoqbf7jss9b3m', '127.0.0.1', 1491383698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313338333639383b75736572726f6c657c733a353a226f776e6572223b),
('00amq939vge927dilcotu5nai25qq71c', '127.0.0.1', 1491384074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313338343037343b75736572726f6c657c733a353a226f776e6572223b),
('q7kg3u60b5c6eu6u8kiq2ii4pi90t8bh', '127.0.0.1', 1491384174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313338343037343b75736572726f6c657c733a353a226f776e6572223b),
('0mim4trk6o9eb0ck2v25vdjq0sl4di44', '127.0.0.1', 1491414518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313431343531383b),
('ourg6pm9loe3is48h8cedvrrjg4pmt8i', '127.0.0.1', 1491414840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313431343834303b75736572726f6c657c733a353a226f776e6572223b),
('5rb69r2e13mmqkoo1ib9oadq50uegv3j', '127.0.0.1', 1491418742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313431383734323b75736572726f6c657c733a353a226f776e6572223b),
('om2skifptmj8a5cv1td6hqpr8d41ncgp', '127.0.0.1', 1491419143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313431393134333b75736572726f6c657c733a353a226f776e6572223b),
('bl6coc1kqmqcjudsqhk176acag44uofi', '127.0.0.1', 1491419463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313431393436333b75736572726f6c657c733a353a226f776e6572223b),
('q1qbfp1pt98885epnj60fpgbefikj3nd', '127.0.0.1', 1491420254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313432303235343b75736572726f6c657c733a353a226f776e6572223b),
('uhv9uvf29ie5bp16rdnn9qjbbknk66bq', '127.0.0.1', 1491421110, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313432313131303b75736572726f6c657c733a353a226f776e6572223b),
('3tgkif82jumj24dnces6f96bfucto5qo', '127.0.0.1', 1491421414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313432313431343b75736572726f6c657c733a353a226f776e6572223b),
('7a4t3utamaa54cokt483hn5hno34315f', '127.0.0.1', 1491421517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313432313431343b75736572726f6c657c733a353a226f776e6572223b),
('kasuetrgmkvj064nvn7fqql17o0sfalo', '127.0.0.1', 1491439287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313433393238373b75736572726f6c657c733a353a226f776e6572223b),
('crmtbkohhkimi4h2bvd83837f8n62tcu', '127.0.0.1', 1491439605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313433393630353b75736572726f6c657c733a353a226f776e6572223b),
('qa8nleom4refksqbc0ce4sm41dhtlfia', '127.0.0.1', 1491439960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313433393936303b75736572726f6c657c733a353a226f776e6572223b),
('1lt4mklm43tgcu2ubmv46aamlbl1e1k4', '127.0.0.1', 1491440292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313434303239323b75736572726f6c657c733a353a226f776e6572223b),
('4c4g2fu79l5g5t4aof3ovkmadbukna5t', '127.0.0.1', 1491440615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313434303631353b75736572726f6c657c733a353a226f776e6572223b),
('5r0haaejq5p39ufq1ai0ohf5vdlhsh2u', '127.0.0.1', 1491440724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313434303631353b75736572726f6c657c733a353a226f776e6572223b),
('0mit3rk2vnbfggqpuri61tef4reac0og', '127.0.0.1', 1491464722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313436343732323b75736572726f6c657c733a353a226f776e6572223b),
('unli75a39r4ouc7g9m6003hidpb1eq8s', '127.0.0.1', 1491465024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313436353032343b75736572726f6c657c733a353a226f776e6572223b),
('jk87l2g9jcue29gr1c2c9rff2a6lk2ik', '127.0.0.1', 1491465107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313436353032343b75736572726f6c657c733a353a226f776e6572223b),
('7ch5ni4ab08o8el4rc3e83f6kfj5jupg', '127.0.0.1', 1491501499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313530313439353b);

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
CREATE TABLE `histories` (
  `id` int(11) NOT NULL,
  `transactionType` varchar(25) NOT NULL,
  `value` int(11) NOT NULL,
  `dateTime` date NOT NULL,
  `productType` varchar(4) NOT NULL,
  `productIdentifier` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `transactionType`, `value`, `dateTime`, `productType`, `productIdentifier`) VALUES
(1, 'purchase', 10, '2017-04-02', 'bot', 'GH67DF45'),
(2, 'Build', 0, '2017-04-03', '', ''),
(3, 'Build', 0, '2017-04-03', '', ''),
(4, 'Build', 0, '2017-04-03', '', ''),
(5, 'Build', 0, '2017-04-03', '', ''),
(6, 'Build', 0, '2017-04-03', '', ''),
(7, 'Build', 0, '2017-04-03', '', ''),
(9, 'Build', 0, '2017-04-03', '', ''),
(10, 'Build', 0, '2017-04-03', '', ''),
(11, 'Buy Box', -100, '2017-04-03', '', ''),
(12, 'Build', 0, '2017-04-03', '', ''),
(13, 'Build', 0, '2017-04-03', '', ''),
(14, 'Build', 0, '2017-04-03', '', ''),
(15, 'Build', 0, '2017-04-03', '', ''),
(16, 'Build', 0, '2017-04-03', '', ''),
(17, 'Build', 0, '2017-04-03', '', ''),
(18, 'Build', 0, '2017-04-03', '', ''),
(19, 'Build', 0, '2017-04-03', '', ''),
(20, 'Build', 0, '2017-04-03', '', ''),
(21, 'Build', 0, '2017-04-03', '', ''),
(22, 'Buy Box', -100, '2017-04-03', '', ''),
(23, 'Built Robo', 0, '2017-04-05', 'bot', ''),
(24, 'Built Robo', 0, '2017-04-05', 'bot', ''),
(25, 'Built Robo', 0, '2017-04-05', 'bot', ''),
(26, 'Built Robo', 0, '2017-04-05', 'bot', '58e4ab81'),
(27, 'Built Robo', 0, '2017-04-05', 'bot', '58e4b232'),
(28, 'Built Robo', 0, '2017-04-05', 'bot', '58e4b233'),
(29, 'Built Robo', 0, '2017-04-05', 'bot', '58e4b60d'),
(30, 'Built Robo', 0, '2017-04-05', 'bot', '58e4b60d'),
(31, 'Part retur', 0, '2017-04-05', 'bot', '58e52e0a'),
(32, 'Part retur', 0, '2017-04-05', 'bot', '58e52e0a'),
(33, 'Part retur', 0, '2017-04-05', 'bot', '58e52e0a'),
(34, 'Build', 0, '2017-04-06', '', ''),
(35, 'Build', 0, '2017-04-06', '', ''),
(36, 'Build', 0, '2017-04-06', '', ''),
(37, 'Build', 0, '2017-04-06', '', ''),
(38, 'Build', 0, '2017-04-06', '', ''),
(39, 'Buy Box', -100, '2017-04-06', '', ''),
(40, 'Buy Box', -100, '2017-04-06', '', ''),
(41, 'Buy Box', -100, '2017-04-06', '', ''),
(42, 'Buy Box', -100, '2017-04-06', '', ''),
(43, 'Buy Box', -100, '2017-04-06', '', ''),
(44, 'Built Robot 58e5916dba86d', 0, '2017-04-06', 'bot', '58e5916d'),
(45, 'Build', 0, '2017-04-06', '', ''),
(46, 'Build', 0, '2017-04-06', '', ''),
(47, 'Build', 0, '2017-04-06', '', ''),
(48, 'Build', 0, '2017-04-06', '', ''),
(49, 'Build', 0, '2017-04-06', '', ''),
(50, 'Build', 0, '2017-04-06', '', ''),
(51, 'Build', 0, '2017-04-06', '', ''),
(52, 'Build', 0, '2017-04-06', '', ''),
(53, 'Build', 0, '2017-04-06', '', ''),
(54, 'Build', 0, '2017-04-06', '', ''),
(55, 'Buy Box', -100, '2017-04-06', '', ''),
(56, 'Buy Box', -100, '2017-04-06', '', ''),
(57, 'Buy Box', -100, '2017-04-06', '', ''),
(58, 'Buy Box', -100, '2017-04-06', '', ''),
(59, 'Buy Box', -100, '2017-04-06', '', ''),
(60, 'Buy Box', -100, '2017-04-06', '', ''),
(61, 'Buy Box', -100, '2017-04-06', '', ''),
(62, 'Build', 0, '2017-04-06', '', ''),
(63, 'Buy Box', -100, '2017-04-06', '', ''),
(64, 'Built Robot 58e5f1213ec14', 0, '2017-04-06', 'bot', '58e5f121'),
(65, 'Sell Bot', 400, '2017-04-06', 'bot', '58e5f12c'),
(66, 'Built Robot 58e5f17b531d5', 0, '2017-04-06', 'bot', '58e5f17b'),
(67, 'Built Robot 58e5f18b0455b', 0, '2017-04-06', 'bot', '58e5f18b'),
(68, 'Sell Bot', 400, '2017-04-06', 'bot', '58e5f1af'),
(69, 'Build', 0, '2017-04-06', '', ''),
(70, 'Build', 0, '2017-04-06', '', ''),
(71, 'Build', 0, '2017-04-06', '', ''),
(72, 'Build', 0, '2017-04-06', '', ''),
(73, 'Build', 0, '2017-04-06', '', ''),
(74, 'Build', 0, '2017-04-06', '', ''),
(75, 'Build', 0, '2017-04-06', '', ''),
(76, 'Build', 0, '2017-04-06', '', ''),
(77, 'Build', 0, '2017-04-06', '', ''),
(78, 'Build', 0, '2017-04-06', '', ''),
(79, 'Buy Box', -100, '2017-04-06', '', ''),
(80, 'Buy Box', -100, '2017-04-06', '', ''),
(81, 'Buy Box', -100, '2017-04-06', '', ''),
(82, 'Buy Box', -100, '2017-04-06', '', ''),
(83, 'Buy Box', -100, '2017-04-06', '', ''),
(84, 'Buy Box', -100, '2017-04-06', '', ''),
(85, 'Buy Box', -100, '2017-04-06', '', ''),
(86, 'Buy Box', -100, '2017-04-06', '', ''),
(87, 'Built Robot 58e5f1dc07f6e', 0, '2017-04-06', 'bot', '58e5f1dc'),
(88, 'Sell Bot', 400, '2017-04-06', 'bot', '58e5f1e3'),
(89, 'Built Robot 58e5f212eab01', 0, '2017-04-06', 'bot', '58e5f212'),
(90, 'Built Robot 58e5f2261675a', 0, '2017-04-06', 'bot', '58e5f226'),
(91, 'Sell Bot', 100, '2017-04-06', 'bot', '58e5f22c'),
(92, 'Sell Bot', 400, '2017-04-06', 'bot', '58e5f232'),
(93, 'Part returned: 37c805', 0, '2017-04-06', 'bot', '58e5f280'),
(94, 'Built Robot 58e5f2b1ab2b9', 0, '2017-04-06', 'bot', '58e5f2b1'),
(95, 'Built Robot 58e5f2c30356c', 0, '2017-04-06', 'bot', '58e5f2c3'),
(96, 'Built Robot 58e5f2cf787ff', 0, '2017-04-06', 'bot', '58e5f2cf'),
(97, 'Sell Bot', 100, '2017-04-06', 'bot', '58e5f2d5'),
(98, 'Sell Bot', 100, '2017-04-06', 'bot', '58e5f2da'),
(99, 'Built Robot 58e5f3848c779', 0, '2017-04-06', 'bot', '58e5f384'),
(100, 'Sell Bot', 100, '2017-04-06', 'bot', '58e5f38a');

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
CREATE TABLE `parts` (
  `id` int(11) NOT NULL,
  `caCode` varchar(8) NOT NULL,
  `model` varchar(1) NOT NULL,
  `piece` int(11) NOT NULL,
  `plant` varchar(20) NOT NULL,
  `dateTime` date NOT NULL,
  `used` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `caCode`, `model`, `piece`, `plant`, `dateTime`, `used`) VALUES
(78, '1906ca', 'r', 3, 'huckleberry', '2017-04-06', 0),
(79, '28fee7', 'b', 3, 'huckleberry', '2017-04-06', 0),
(80, '157be8', 'a', 3, 'huckleberry', '2017-04-06', 0),
(81, '29060f', 'a', 1, 'huckleberry', '2017-04-06', 0),
(82, '176182', 'r', 3, 'huckleberry', '2017-04-06', 0),
(83, '4190b1', 'b', 3, 'huckleberry', '2017-04-06', 0),
(84, '2ee873', 'c', 2, 'huckleberry', '2017-04-06', 0),
(85, '13b122', 'c', 2, 'huckleberry', '2017-04-06', 0),
(86, '107970', 'b', 1, 'huckleberry', '2017-04-06', 0),
(87, '39f6fd', 'm', 1, 'huckleberry', '2017-04-06', 0),
(88, '32ac64', 'b', 1, 'huckleberry', '2017-04-06', 0),
(92, '27439e', 'b', 3, 'huckleberry', '2017-04-06', 0),
(93, '495f2a', 'c', 3, 'huckleberry', '2017-04-06', 0),
(94, '1a619e', 'b', 3, 'huckleberry', '2017-04-06', 0),
(95, '46fa87', 'b', 3, 'huckleberry', '2017-04-06', 0),
(96, '48550b', 'a', 1, 'huckleberry', '2017-04-06', 0),
(97, '1c176e', 'c', 3, 'huckleberry', '2017-04-06', 0),
(99, '4101f9', 'a', 2, 'huckleberry', '2017-04-06', 0),
(100, '437e2b', 'a', 2, 'huckleberry', '2017-04-06', 0),
(102, '12946d', 'a', 1, 'huckleberry', '2017-04-06', 0),
(103, '213ea6', 'b', 3, 'huckleberry', '2017-04-06', 0),
(105, '14c2f3', 'c', 2, 'huckleberry', '2017-04-06', 0),
(106, '175029', 'b', 3, 'huckleberry', '2017-04-06', 0),
(107, '22fc94', 'c', 2, 'huckleberry', '2017-04-06', 0),
(108, '1eb95f', 'm', 2, 'huckleberry', '2017-04-06', 0),
(109, '3f06e7', 'a', 2, 'huckleberry', '2017-04-06', 0),
(111, '331e73', 'a', 2, 'huckleberry', '2017-04-06', 0),
(113, '383a75', 'c', 2, 'huckleberry', '2017-04-06', 0),
(115, '48a44f', 'c', 1, 'huckleberry', '2017-04-06', 0),
(116, '4c30c7', 'b', 3, 'huckleberry', '2017-04-06', 0),
(118, '40ff66', 'a', 1, 'huckleberry', '2017-04-06', 0),
(121, '3a1990', 'c', 1, 'huckleberry', '2017-04-06', 0),
(122, '3b60d1', 'm', 3, 'huckleberry', '2017-04-06', 0),
(123, '4076bf', 'c', 3, 'huckleberry', '2017-04-06', 0),
(124, '24bd83', 'm', 2, 'huckleberry', '2017-04-06', 0),
(125, '30a276', 'b', 3, 'huckleberry', '2017-04-06', 0),
(126, '40537b', 'b', 1, 'huckleberry', '2017-04-06', 0),
(128, '1306e9', 'r', 1, 'huckleberry', '2017-04-06', 0),
(129, '2fd129', 'r', 1, 'huckleberry', '2017-04-06', 0),
(130, '10323c', 'r', 1, 'huckleberry', '2017-04-06', 0),
(131, '13f8cc', 'm', 2, 'huckleberry', '2017-04-06', 0),
(132, '171268', 'c', 3, 'huckleberry', '2017-04-06', 0),
(133, '456c98', 'r', 3, 'huckleberry', '2017-04-06', 0),
(134, '3bee24', 'a', 2, 'huckleberry', '2017-04-06', 0),
(136, '324237', 'b', 1, 'huckleberry', '2017-04-06', 0),
(138, '26e38c', 'r', 1, 'huckleberry', '2017-04-06', 0),
(139, '29a5a1', 'c', 1, 'huckleberry', '2017-04-06', 0),
(141, '39f9e5', 'c', 3, 'huckleberry', '2017-04-06', 0),
(142, '48cb95', 'b', 3, 'huckleberry', '2017-04-06', 0),
(143, '2d6ba4', 'a', 3, 'huckleberry', '2017-04-06', 0),
(144, '3b053f', 'a', 2, 'huckleberry', '2017-04-06', 0),
(145, '19f35f', 'c', 1, 'huckleberry', '2017-04-06', 0),
(146, '48c646', 'b', 2, 'huckleberry', '2017-04-06', 0),
(147, '376384', 'a', 3, 'huckleberry', '2017-04-06', 0),
(149, '3b2df3', 'r', 1, 'huckleberry', '2017-04-06', 0),
(150, '39c130', 'r', 1, 'huckleberry', '2017-04-06', 0),
(151, '335675', 'r', 1, 'huckleberry', '2017-04-06', 0),
(152, '22f864', 'r', 1, 'huckleberry', '2017-04-06', 0),
(153, '37721a', 'r', 1, 'huckleberry', '2017-04-06', 0),
(154, '21a3f1', 'r', 1, 'huckleberry', '2017-04-06', 0),
(155, '169bd9', 'r', 1, 'huckleberry', '2017-04-06', 0),
(156, '12ae9d', 'r', 1, 'huckleberry', '2017-04-06', 0),
(157, 'f5cdd', 'r', 1, 'huckleberry', '2017-04-06', 0),
(158, '10e839', 'r', 1, 'huckleberry', '2017-04-06', 0),
(159, '2b47e3', 'c', 2, 'huckleberry', '2017-04-06', 0),
(161, '17cced', 'a', 1, 'huckleberry', '2017-04-06', 0),
(162, '16617f', 'c', 2, 'huckleberry', '2017-04-06', 0),
(163, '13794e', 'a', 3, 'huckleberry', '2017-04-06', 0),
(165, '192926', 'r', 1, 'huckleberry', '2017-04-06', 0),
(166, '342859', 'c', 1, 'huckleberry', '2017-04-06', 0),
(167, '334ad0', 'a', 3, 'huckleberry', '2017-04-06', 0),
(168, '16f0b3', 'c', 3, 'huckleberry', '2017-04-06', 0),
(169, '3e6f84', 'a', 1, 'huckleberry', '2017-04-06', 0),
(170, '47afba', 'm', 3, 'huckleberry', '2017-04-06', 0),
(171, '4bab7e', 'b', 3, 'huckleberry', '2017-04-06', 0),
(172, '22e153', 'b', 3, 'huckleberry', '2017-04-06', 0),
(173, '1786bf', 'b', 3, 'huckleberry', '2017-04-06', 0),
(174, '226f7d', 'c', 1, 'huckleberry', '2017-04-06', 0),
(175, '37c93c', 'b', 1, 'huckleberry', '2017-04-06', 0),
(176, '2ab470', 'b', 3, 'huckleberry', '2017-04-06', 0),
(177, '42e889', 'c', 1, 'huckleberry', '2017-04-06', 0),
(178, '426337', 'b', 2, 'huckleberry', '2017-04-06', 0),
(179, '48c641', 'b', 3, 'huckleberry', '2017-04-06', 0),
(180, '1b68cc', 'a', 2, 'huckleberry', '2017-04-06', 0),
(181, '194f12', 'a', 3, 'huckleberry', '2017-04-06', 0),
(182, '34533c', 'a', 1, 'huckleberry', '2017-04-06', 0),
(183, '46f075', 'b', 2, 'huckleberry', '2017-04-06', 0),
(185, '4b0156', 'b', 3, 'huckleberry', '2017-04-06', 0),
(186, '33d202', 'm', 3, 'huckleberry', '2017-04-06', 0),
(187, '382e68', 'a', 2, 'huckleberry', '2017-04-06', 0),
(188, '21bfa8', 'r', 1, 'huckleberry', '2017-04-06', 0),
(190, '156e1e', 'r', 1, 'huckleberry', '2017-04-06', 0),
(191, '40327b', 'm', 2, 'huckleberry', '2017-04-06', 0),
(192, '390e08', 'r', 3, 'huckleberry', '2017-04-06', 0),
(194, '338de2', 'b', 3, 'huckleberry', '2017-04-06', 0),
(195, '447ae4', 'b', 3, 'huckleberry', '2017-04-06', 0),
(196, '34393c', 'c', 3, 'huckleberry', '2017-04-06', 0),
(198, '2fcbfe', 'b', 3, 'huckleberry', '2017-04-06', 0),
(199, '23fc34', 'm', 3, 'huckleberry', '2017-04-06', 0),
(200, '102ac7', 'r', 1, 'huckleberry', '2017-04-06', 0),
(201, '3c9d0b', 'a', 3, 'huckleberry', '2017-04-06', 0),
(202, '18a872', 'a', 1, 'huckleberry', '2017-04-06', 0),
(203, '3134d2', 'w', 1, 'huckleberry', '2017-04-06', 0),
(204, '230105', 'w', 1, 'huckleberry', '2017-04-06', 0),
(205, '1abab3', 'c', 3, 'huckleberry', '2017-04-06', 0),
(206, 'f8b6e', 'b', 1, 'huckleberry', '2017-04-06', 0),
(207, '17e236', 'b', 2, 'huckleberry', '2017-04-06', 0),
(208, '4625c4', 'c', 1, 'huckleberry', '2017-04-06', 0),
(210, '357fb3', 'a', 2, 'huckleberry', '2017-04-06', 0),
(211, '29f31c', 'w', 1, 'huckleberry', '2017-04-06', 0),
(213, '1f4e85', 'a', 1, 'huckleberry', '2017-04-06', 0),
(214, '3773c8', 'a', 3, 'huckleberry', '2017-04-06', 0),
(215, '3789cb', 'a', 2, 'huckleberry', '2017-04-06', 0),
(216, '2ab339', 'r', 2, 'huckleberry', '2017-04-06', 0),
(217, '23d200', 'b', 3, 'huckleberry', '2017-04-06', 0),
(219, '2db5d5', 'b', 2, 'huckleberry', '2017-04-06', 0),
(220, '286211', 'a', 2, 'huckleberry', '2017-04-06', 0),
(221, '4a1a3e', 'b', 3, 'huckleberry', '2017-04-06', 0),
(222, '41f479', 'a', 3, 'huckleberry', '2017-04-06', 0),
(223, '3e4284', 'r', 1, 'huckleberry', '2017-04-06', 0),
(224, '3e558f', 'b', 1, 'huckleberry', '2017-04-06', 0),
(225, '165253', 'r', 2, 'huckleberry', '2017-04-06', 0),
(226, '1ecd0a', 'b', 2, 'huckleberry', '2017-04-06', 0),
(227, '21f5f6', 'a', 3, 'huckleberry', '2017-04-06', 0),
(228, '2f1054', 'b', 1, 'huckleberry', '2017-04-06', 0),
(229, '23fbe4', 'a', 2, 'huckleberry', '2017-04-06', 0),
(230, '3c189b', 'r', 1, 'huckleberry', '2017-04-06', 0),
(231, '3ff75e', 'a', 3, 'huckleberry', '2017-04-06', 0),
(232, '2809f6', 'r', 2, 'huckleberry', '2017-04-06', 0),
(234, '223b1f', 'b', 2, 'huckleberry', '2017-04-06', 0),
(235, '260136', 'b', 3, 'huckleberry', '2017-04-06', 0),
(236, '1c690d', 'c', 1, 'huckleberry', '2017-04-06', 0),
(237, '1b5f56', 'm', 3, 'huckleberry', '2017-04-06', 0),
(238, '494328', 'a', 1, 'huckleberry', '2017-04-06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `robots`
--

DROP TABLE IF EXISTS `robots`;
CREATE TABLE `robots` (
  `id` int(11) NOT NULL,
  `topCode` varchar(8) NOT NULL,
  `torsoCode` varchar(8) NOT NULL,
  `bottomCode` varchar(8) NOT NULL,
  `robotCode` varchar(15) NOT NULL,
  `line` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `robots`
--

INSERT INTO `robots` (`id`, `topCode`, `torsoCode`, `bottomCode`, `robotCode`, `line`) VALUES
(9, '1aa63f', '3f2a4a', '26ed60', '58e5f17b531d5', 'www'),
(14, '36b984', '2d1558', '44df18', '58e5f2b1ab2b9', 'rrr');

-- --------------------------------------------------------

--
-- Table structure for table `secrets`
--

DROP TABLE IF EXISTS `secrets`;
CREATE TABLE `secrets` (
  `id` int(11) NOT NULL,
  `api` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `secrets`
--

INSERT INTO `secrets` (`id`, `api`) VALUES
(1, '207688'),
(2, '23bdec');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `robots`
--
ALTER TABLE `robots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secrets`
--
ALTER TABLE `secrets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;
--
-- AUTO_INCREMENT for table `robots`
--
ALTER TABLE `robots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `secrets`
--
ALTER TABLE `secrets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
