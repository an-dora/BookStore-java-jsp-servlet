-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2023 at 03:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookclassinfo`
--

CREATE TABLE `bookclassinfo` (
  `classid` varchar(1) NOT NULL,
  `classname` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bookclassinfo`
--

INSERT INTO `bookclassinfo` (`classid`, `classname`) VALUES
('A', 'Ngoại ngữ'),
('B', 'Triết học, Tôn giáo'),
('C', 'Tổng quan khoa học xã hội'),
('D', 'Chính trị, Pháp luật'),
('E', 'Quân sự'),
('F', 'Kinh tế'),
('G', 'Văn hóa, Khoa học, Giáo dục, Thể th'),
('H', 'Ngôn ngữ, Chữ viết'),
('I', 'Văn học'),
('J', 'Nghệ thuật'),
('K', 'Lịch sử, Địa lý'),
('N', 'Tổng quan khoa học tự nhiên'),
('O', 'Khoa học số liệu, Hóa học'),
('P', 'Thiên văn học, Khoa học Trái đất'),
('Q', 'Khoa học sinh học'),
('R', 'Y học, Y tế'),
('S', 'Khoa học nông nghiệp'),
('T', 'Công nghệ công nghiệp'),
('U', 'Giao thông vận tải'),
('V', 'Hàng không/Vũ trụ'),
('X', 'Khoa học môi trường, Khoa học an to'),
('Z', 'Sách tổng hợp');

-- --------------------------------------------------------

--
-- Table structure for table `bookdetailinfo`
--

CREATE TABLE `bookdetailinfo` (
  `bookid` int(10) NOT NULL,
  `edition` int(10) DEFAULT NULL,
  `packaging` varchar(20) DEFAULT NULL,
  `format` int(10) DEFAULT NULL,
  `publdata` varchar(50) DEFAULT NULL,
  `numpages` int(10) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `authorsIntroduce` text DEFAULT NULL,
  `contentIntroduce` text DEFAULT NULL,
  `directory` text DEFAULT NULL,
  `preface` text DEFAULT NULL,
  `bigImage` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookinfo`
--

CREATE TABLE `bookinfo` (
  `bookid` int(10) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `instore` int(10) NOT NULL DEFAULT 0,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `unitprice` decimal(8,2) NOT NULL,
  `summary` text DEFAULT NULL,
  `bookimage` varchar(500) NOT NULL,
  `buynum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `classid` varchar(10) NOT NULL DEFAULT 'A',
  `edition` int(10) NOT NULL,
  `packaging` varchar(20) NOT NULL,
  `format` int(10) NOT NULL,
  `publdata` varchar(50) NOT NULL,
  `numpages` int(10) NOT NULL,
  `language` varchar(20) NOT NULL,
  `authorsIntroduce` text DEFAULT NULL,
  `contentIntroduce` text DEFAULT NULL,
  `directory` text DEFAULT NULL,
  `preface` text DEFAULT NULL,
  `bigImage` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bookinfo`
--

INSERT INTO `bookinfo` (`bookid`, `bookname`, `instore`, `author`, `publisher`, `unitprice`, `summary`, `bookimage`, `buynum`, `classid`, `edition`, `packaging`, `format`, `publdata`, `numpages`, `language`, `authorsIntroduce`, `contentIntroduce`, `directory`, `preface`, `bigImage`) VALUES
(6, 'Ổn Định Hay Tự Do', 1430, 'Hoa Lộc ', 'NXB Văn Học ', 150.00, 'ỔN ĐỊNH HAY TỰ DO (Yên ổn bạn thích không cho bạn được cuộc đời như mong muốn) - cuốn sách Best-seller dành cho thế hệ GEN Z, tiếp nối Hãy khiến tương lai biết ơn vì hiện tại bạn đã cố gắng hết mình.', 'ondinhhaytudo.jpg', 0, 'S', 1, 'bìa cứng', 16, '2021-03-04', 100, 'Hàn Quốc', 'ádasda', 'ádasd', 'ádasd', 'ádasd', NULL),
(7, ' Thay Đổi Cuộc Sống Với Nhân Số Học', 17, ' Lê Đỗ Quỳnh Hương', ' Nhà Xuất Bản Tổng hợp TP.HCM', 250.00, 'Cuốn sách Thay đổi cuộc sống với Nhân số học là tác phẩm được chị Lê Đỗ Quỳnh Hương phát triển từ tác phẩm gốc “The Complete Book of Numerology” của tiến sỹ David A. Phillips, khiến bộ môn Nhân số học khởi nguồn từ nhà toán học Pythagoras trở nên gần gũi, dễ hiểu hơn với độc giả Việt Nam.', 'thaydoicuocsongvoinhansohoc.jpg', 0, 'A', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(8, ' Tâm Lý Học - Phác Họa Chân Dung Kẻ Phạm Tội', 27, 'Đỗ Ái Nhi', ' Nhà Xuất Bản Thanh Niên', 150.00, 'Lấy 36 vụ án CÓ THẬT kinh điển nhất trong hồ sơ tội phạm của FBI, “Tâm lý học tội phạm - phác họa chân dung kẻ phạm tội” mang đến cái nhìn toàn cảnh của các chuyên gia về chân dung tâm lý tội phạm. Trả lời cho câu hỏi: Làm thế nào phân tích được tâm lý và hành vi tội phạm, từ đó khôi phục sự thật thông qua các manh mối, từ hiện trường vụ án, thời gian, dấu tích, để tìm ra kẻ sát nhân thực sự.', 'phachoachandungkephamtoi.jpg', 0, 'F', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(9, ' Bạch Dạ Hành (Tái Bản)', 47, ' Diệu Thư', ' Nhà Xuất Bản Hội Nhà Văn', 350.00, ' Osuke, chủ một tiệm cầm đồ bị sát hại tại một ngôi nhà chưa hoàn công, một triệu yên mang theo người cũng bị cướp mất. Sau đó một tháng, nghi can Fumiyo được cho rằng có quan hệ tình ái với nạn nhân và đã sát hại ông để cướp một triệu yên, cũng chết tại nhà riêng vì ngộ độc khí ga.Vụ án mạng ông chủ tiệm cầm đồ rơi vào bế tắc và bị bỏ xó.', 'bachdahanh.jpg', 0, 'G', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(10, ' Vụ Án Mạng Ở Nhà Khách Núi Hakuba', 17, ' Kuroi Neko', ' 	Nhà Xuất Bản Hà Nội', 160.00, ' Naoko, cô em gái đang là sinh viên đại học, vẫn luôn ôm mối hoài nghi về cái chết của anh trai. Cô cùng người bạn thân Makoto của mình đến thăm nhà khách “Mẹ Ngỗng” ở núi Hakuba thuộc tỉnh Nagano, nơi anh mình đã qua đời. Lạ lùng thay, nhà khách lại đón tiếp những vị khách quen thuộc hệt như một năm trước đó. Bí mật nào đang ẩn nấp sau những bài đồng dao Mẹ Ngỗng trong mỗi căn phòng? Quá khứ nào đang được giấu kín trong nhà khách?', 'vuanmangonhakhachnuihakuba.jpg', 0, 'B', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(11, ' Ghi Chép Pháp Y - Những Cái Chết Bí Ẩn', 31, ' Lưu Hiểu Huy', ' Nhà Xuất Bản Thanh Niên', 210.00, ' Trải qua 15 câu chuyện kinh hoàng, cuốn sách sẽ đưa bạn bước vào hiện trường của những vụ án man rợ như: xác chết phi tang dưới cánh đồng ngô, thi thể thiếu nữ không lành lặn, xác chết nhầy nhụa đang bị giòi bọ đục khoét hay một thi thể co cứng trong màng bọc nilon…lần theo những dấu vết, ghép lại sự thật từ những mảnh vụn thi thể, nguyên nhân của cái chết sẽ dần được hé mở.', 'nhungcaichetbian.jpg', 0, 'H', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(12, ' Những Cô Gái Mất Tích Ở Willowbrook', 11, ' Ellen Marie Wiseman', ' Nhà Xuất Bản Dân Trí', 110.00, ' Sage Winters đã “đi tìm” người em gái song sinh tội nghiệp trong bối cảnh như thế. Để rồi khi những điều vượt quá giới hạn dồn dập xảy đến, cũng là lúc Sage phải đấu tranh cho sự tỉnh táo của bản thân và phải vật lộn để giải thoát mình khỏi CƠN ÁC MỘNG mang tên WILLOWBROOK. Dựa trên một sự kiện có thật về vụ bê bối chấn động tại New York vào thế kỷ trước, Ellen Marie Wiseman đã tận dụng một cách khéo léo những tư liệu sẵn có về Trường Công lập Willowbrook để tạo nên sự đa tầng đầy cảm xúc trong tác phẩm của mình.', 'nhungcaichetbian.jpg', 0, 'J', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(13, ' Ngày Tháng Rực Rỡ Đừng Sống Tạm Bợ ', 21, ' Vương Nguyệt ', ' Nhà Xuất Bản Thế Giới', 510.00, ' Tuổi trẻ, nói ngắn sẽ ngắn, nói dài thì cũng dài. Trong quãng đời ấy, chúng ta gần như trải qua những cột mốc quan trọng nhất. Thi đại học, rời quê lên phố học tập và bắt đầu kiếm những đồng tiền đầu tiên. Từng bước chân chập chững trên con đường trưởng thành của chúng ta không ít lần giẫm phải hàng tá sợi gai nhọn. Đó là khi bạn ốm đau cũng chỉ có thể tự chăm sóc bản thân, đó là khi bạn rớt môn hoặc bị điểm kém, đó là khi bạn trở thành thực tập sinh, vùng vẫy trong môi trường công sở khắc nghiệt, bị làm khó, bị nói xấu,... Có rất nhiều khoảnh khắc khiến bạn phải thừa nhận rằng, ở thành phố xa lạ này, bạn chỉ có thể dựa vào chính mình. ', 'ngaythangrucrodungsongtambo.jpg', 0, 'V', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(14, ' Hành Tinh Của Một Kẻ Nghĩ Nhiều ', 21, ' Amateur Psychology Nguyễn Đoàn Minh Thư', ' Nhà Xuất Bản Thế Giới', 110.00, ' “Đó là mùa hè năm 2020, mùa hè của COVID-19 và một ngàn vạn khủng hoảng tuổi đôi mươi. Đó là mùa hè mình bắt chuyến bay sớm nhất có thể vào ngày 20 tháng 3 để chạy khỏi nước Anh đang bùng dịch, bị kẹt lại sân bay Bangkok trong 24 giờ đồng hồ vì chuyến bay quá cảnh về Sài Gòn bị huỷ Đó là mỗi đêm mùa hè nằm trên giường stress chuyện deadline luận văn, stress chuyện thất nghiệp không kiếm ra tiền, stress chuyện bỏ lỡ cơ hội thực tập giúp ích cho sự nghiệp của mình, stress chuyện học hành dở dang không biết bao giờ mới có thể quay lại Anh và hoàn thành tấm bằng đại học, stress chuyện tồn tại một cách mơ hồ, không biết mình là ai', 'hanhtinhcuakenghinhieu.jpg', 0, 'X', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(15, ' Tiền Không Mua Được Gì? (Tái Bản 2019) ', 41, ' Michael Sandel ', ' Nhà Xuất Bản Trẻ', 310.00, ' Trong cuốn sách này, Michael J. Sandel đặt ra một trong những câu hỏi về đạo đức quan trọng nhất của thời đại chúng ta: có vấn đề gì đang xảy ra với thế giới này khi mọi thứ đều có thể mua được bằng tiền? Làm sao chúng ta có thể ngăn các giá trị thị trường khỏi xâm nhập vào những lĩnh vực của đời sống vốn không bị chi phối bởi các giá trị thị trường? Đâu là giới hạn đạo đức của thị trường. ', 'tienkhongmuaduocgi.jpg ', 0, 'N', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(16, ' Muôn Kiếp Nhân Sinh - Many Times, Many Lives ', 23, ' Nguyên Phong ', ' NXB Tổng Hợp TPHCM', 310.00, ' Muôn kiếp nhân sinh cung cấp cho bạn đọc kiến thức mới mẻ, vô tận của nhân loại lần đầu được hé mở, cùng những phân tích uyên bác, tiên đoán bất ngờ về hiện tại và tương lai thế giới của những bậc hiền triết thông thái. Đời người tưởng chừng rất dài nhưng lại trôi qua rất nhanh, sinh vượng suy tử, mong manh như sóng nước. Luật nhân quả cực kỳ chính xác, chi tiết, phức tạp được thu thập qua nhiều đời, nhiều kiếp, liên hệ tương hỗ đan xen chặt chữ lẫn nhau, không ai có thể tính được tích đức này có thể trừ được nghiệp kia không, không ai có thể biết được khi nào nhân sẽ trổ quả. Nhưng, một khi đã gây ra nhân thì chắc chắn sẽ gặt quả - luật Nhân quả của vũ trụ trước giờ không bao giờ sai.. ', 'muonkiepnhansinh1.jpg', 0, 'S', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(17, ' Muôn Kiếp Nhân Sinh - Many Times, Many Lives - Tập 2 ', 25, ' Nguyên Phong ', ' NXB Tổng Hợp TPHCM', 310.00, ' Muôn Kiếp Nhân Sinh tập 2 của tác giả Nguyên Phong tiếp tục là những câu chuyện tiền kiếp, nhân quả luân hồi hấp dẫn gắn liền với những kiến giải uyên bác về quá khứ, hiện tại, tương lai của nhân loại và thế giới thông qua góc nhìn của cả khoa học và tâm linh. Chúng ta là ai, chúng ta đến từ đâu và sẽ đi về đâu? Làm cách nào để chữa lành thế giới này, hành tinh này trước những biến cố lớn đang và sẽ diễn ra trong tương lai gần? ', 'muonkiepnhansinh2.jpg', 0, 'S', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(18, ' Muôn Kiếp Nhân Sinh - Many Times, Many Lives - Tập 3 ', 30, ' Nguyên Phong ', ' NXB Tổng Hợp TPHCM', 310.00, ' Nối tiếp câu chuyện và tinh thần của tập 1 và tập 2, “Muôn Kiếp Nhân Sinh – tập 3” tiếp tục đưa bạn đọc đi qua hành trình thức tỉnh tâm linh của nhân vật chính Thomas. Không chỉ là hồi tiếp theo trong chuyến phiêu lưu của linh hồn, tập mới nhất và cũng là tập cuối cùng của bộ sách sẽ bàn luận sâu hơn về hiện tại và tương lai của nhân loại, đồng thời nhẹ nhàng khép lại câu chuyện tiền kiếp nhiều trăn trở, nhiều bài học của Thomas và giải đáp những câu hỏi còn bỏ ngỏ từ hai tập trước? ', 'muonkiepnhansinh3.jpg', 0, 'S', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(19, ' Chicken Soup For The Recovering Soul 21 - Cảm Hứng Cuộc Sống (Tái Bản 2023) ', 20, ' Jack Canfield, Mark Victor Hansen ', ' Tổng Hợp Thành Phố Hồ Chí Minh', 261.00, ' Cuộc sống là một món quà đặc biệt mà chúng ta được trao tặng, và cách sử dụng nó như thế nào là hoàn toàn phụ thuộc vào chính bản thân mỗi người. Cuốn sách này chia sẻ với bạn cách yêu thương và trân trọng cuộc sống để mỗi ngày đều là mới mẻ và đầy hứng thú cho bạn khám phá. Với những thông điệp ngắn gọn nhưng đầy ý nghĩa, cuốn sách chuyển tải những cung bậc cảm xúc trong cuộc sống với sự hy vọng, thái độ bằng lòng và niềm hạnh phúc bình dị. ', 'camhungcuocsong.jpg', 0, 'I', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(20, ' Yêu Những Điều Không Hoàn Hảo ', 10, ' Hae Min ', ' NXB Thế Giới', 223.00, ' Ngẫm lại cuộc sống của chính mình, ta sẽ nhận thấy rất nhiều điều không hoàn hảo. Trước hết, chỉ nhìn vào bản thân mình thôi ta đã cảm nhận được nhiều thiếu sót rồi: lời nói và hành động mâu thuẫn với nhau, vụng về trong những mối quan hệ xã hội, chuyện học hành, công việc không suôn sẻ như ý muốn. Chưa kể đôi khi ta còn khiến người khác tổn thương, thậm chí còn làm những việc khiến bản thân cảm thấy tội lỗi và hối hận. Và khi nhìn vào những người thân trong gia đình, bạn bè, đồng nghiệp, ta cũng nhận thấy những điều không-hoàn-hảo tương tự như vậy. ', 'yeunhungdieukhonghoanhao.jpg', 0, 'Z', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(21, ' Chicken Soup For The Soul 11 - Vượt Qua Thử Thách Đầu Đời ', 40, ' Jack Cafield, Mark Victor Hansen ', ' NXB Tổng Hợp TPHCM', 423.00, ' Sáu năm trước, chúng tôi đã thực hiện cuốn Chicken Soup for the Teenage Soul. Như các bạn đã biết, cuốn sách ấy đã được đón nhận nồng nhiệt, và hàng triệu độc giả trẻ đã tìm thấy nguồn an ủi cũng như sự động viên trong những câu chuyện được viết bởi chính những người bạn đồng trang lứa với mình. Chúng tôi đã nhận được hàng ngàn lá thư yêu cầu biên soạn thêm những quyển sách dành cho lứa tuổi thanh thiếu niên. Những lời yêu cầu này, cùng với rất nhiều câu chuyện được gửi đến đã mang lại cho chúng tôi sự động viên cũng như nguồn tư liệu cần thiết để tiếp tục thực hiện các tập sách. Mỗi tuần, chúng tôi lại tiếp tục nhận được hàng trăm lá thư cùng những câu chuyện của các bạn trẻ từ khắp nơi trên thế giới gởi đến qua Internet và qua đường bưu điện. ', 'vuotquathuthachdaudoi.jpg', 0, 'J', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(22, ' Tôi Biết Tại Sao Chim Trong Lồng Vẫn Hót (Tái Bản 2023) ', 70, ' Maya Angelou ', ' NXB Văn Học', 343.00, ' Maya và anh trai của cô - Bailey, được mẹ gửi đến sống với người bà sùng đạo cùng người chú tật nguyền tại một thị trấn nhỏ miền Nam nước Mỹ. Hai anh em phải chịu đựng nỗi đau khi bị bỏ rơi và định kiến của những người da trắng địa phương “ngu ngốc”. Lúc tám tuổi, Maya trở về bên mẹ tại St. Louis và bị xâm hại bởi chính cha dượng của mình, phải sống cùng nỗi đau đó suốt đời. Nhiều năm sau, tại San Francisco, Maya học được rằng: tình yêu đối với bản thân, lòng tốt của người khác, tinh thần mạnh mẽ của bản thân và ý tưởng của các tác giả vĩ đại (“Tôi đã gặp và yêu William Shakespeare”) sẽ mang đến cho cô sự tự do. ', 'toibiettaisaochimtronglongvanhot.jpg', 0, 'T', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(23, ' Chuyện Kể Của Một Đại Sứ ', 69, ' Nguyễn Chiến Thắng ', ' NXB Hội Nhà Văn', 230.00, ' Chuyên kể của một Đai sứ” thực sự là một món quà mà nhà văn trao tặng cuộc sống. Tác giả dắt người đọc di dọc trở lại năm tháng Đại sứ của ông, nhìn qua đôi mắt, trí não, tâm hồn ông để thấy những con người, nơi chốn cùng văn hóa và lịch sử. Từng câu chuyện như từng lớp sóng lấp lánh nối quá khứ và hiện tại. ', 'chuyenkecuamotdaisu.jpg', 0, 'U', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(24, ' Trước Bình Minh Luôn Là Đêm Tối (Tái Bản 2023) ', 14, ' Tạ Minh Tuấn ', ' NXB Thế Giới', 100.00, ' Trước bình minh luôn là đêm tối là hành trình của một chàng trai sắp 30 tuổi, với những thành tích đáng nể và tinh thần không ngừng nỗ lực khẳng định vị thế, tầm vóc của khởi nghiệp Việt trên toàn thế giới. Qua câu chuyện thành công của chính mình, tác giả chia sẻ nhiều điều về khởi nghiệp. Cụ thể: đừng để khởi nghiệp Việt Nam dừng lại ở mức “phong trào khởi nghiệp”, mà phải phát triển nó đến mức “văn hóa khởi nghiệp” thì sẽ bền vững hơn. Muốn như vậy, chúng ta cần tạo ra một thế hệ doanh nhân khởi nghiệp có trách nhiệm. Vậy, thế nào là khởi nghiệp có trách nhiệm? Khởi nghiệp có trách nhiệm không phải là hôm nay hứng… khởi nghiệp, liền nộp đơn xin nghỉ việc, không quan tâm công việc ở công ty đã được bàn giao đầy đủ hay chưa, sếp hỏi lý do tại sao thì trả lời “Tại em thích”, mặc dù sếp và công ty đối đãi mình không tệ. Vào làm có văn hóa thì nghỉ việc cũng phải có văn hóa! Khởi nghiệp có trách nhiệm không phải là bán kem trắng da, trắng liền trong 3 ngày, bất chấp hậu quả sức khỏe của khách hàng, để bán được hàng, còn khuyên là kem này mẹ bầu dùng vẫn được. Cái đó là tạo nghiệp chứ không phải khởi nghiệp!.... ', 'truocbinhminhluonlademtoi.jpg', 0, 'T', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(25, 'Thanh Xuân Không Chỉ Một Thời', 45, ' MC Xuân Hiếu ', ' Tổng Hợp TPHCM ', 130.00, ' Tập bút ký “Thanh xuân không chỉ một thời” của tác giả - MC Xuân Hiếu có nội dung chủ yếu chia sẻ về những chuyến hành trình trong & ngoài nước mà Xuân Hiếu có dịp trải nghiệm, cùng với đó là những kỷ niệm gắn bó với nghề dẫn chương trình (MC) được tác giả ghi chép cẩn thận như một thói quen từ khi chập chững theo nghề đến nay', 'thanhxuankhongchimotthoi.jpg', 0, 'X', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(26, ' Đưa Con Trở Lại Thiên Đường (Tái Bản 2019) ', 12, ' Lê Thị Phương Nga ', ' NXB Phụ Nữ ', 120.00, ' Nhưng đứa con trong trong quyển sách này mới thực sự là người may mắn. Bé Cún có một người mẹ thật mạnh mẽ trong tình yêu thương, trong suy nghĩ, trong hành động và dám đương đầu với những gì đi ngược lại lợi ích của đứa con yêu dấu. Tôi nghĩ, một số bác sĩ khi đọc quyển sách này cũng sẽ rút ra được điều gì đó bổ ích. Tác giả thành công trong việc giải cứu đứa con thoát \"địa ngục tự kỷ\", trước hết, vì chính chị là mẹ của bệnh nhân. Không phải vô cớ mà có sự so sánh - đồng thời cũng là bài học đạo đức nghề nghiệp - lương y như từ mẫu! Mà, trong giới bác sĩ, đối với bệnh nhân của mình, mấy ai dám tự bảo mình là một lương y? Một số thí dụ cụ thể trong cuốn sách này càng làm đau lòng người đọc biết bao nhiêu, vì đó là những bệnh nhi đáng thương, tội nghiệp - hơn ai hết, các cháu rất cần bàn tay và trí tuệ của những lương y. ', 'duacontrolaithienduong.jpg', 0, 'Z', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(27, ' Viết Lên Hy Vọng (Tái Bản 2021) ', 22, ' Lê Thị Phương Nga ', ' NXB Phụ Nữ Erin Gruwell, Những Nhà văn Tự do ', 120.00, ' Trong vô vàn những câu danh ngôn về người thầy, có một câu nói rất nổi tiếng của nhà sư phạm Xô Viết, viện sĩ Viện Hàn lâm Khoa học Giáo dục Liên Xô Vasilij Aleksandrovich Sukhomlinskij rằng: \"Đối với người giáo viên, cần phải có kiến thức, có hiểu biết sư phạm về quy luật xã hội, có khả năng dùng lời nói để tác động đến tâm hồn học sinh, có kỹ năng đặc sắc nhìn nhận con người và cảm thấy những rung động tinh tế nhất của trái tim con người.\" Dù ở bất kỳ quốc gia nào, trong bất kỳ nền giáo dục nào, câu nói ấy vẫn còn nguyên giá trị.', 'vietlenhivong.jpg', 0, 'F', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(28, ' Không Phải Sói Nhưng Cũng Đừng Là Cừu ', 26, ' Lê Bảo Ngọc ', ' NXB Thế Giới ', 250.00, ' Những câu hỏi đầy tính tranh cãi như “Cứu người hay cứu chó?”, “Một kẻ thô lỗ trong lớp vỏ “thẳng tính” khác với người EQ thấp như thế nào?”, “Vì sao một bộ phận nữ giới lại victim blaming đối với nạn nhân bị xâm hại?”,... được tác giả đưa ra trong “Không phải sói nhưng cũng đừng là cừu”. Bằng từng chương sách của mình, tác giả vạch rõ cho bạn rằng “thật sự thế nào mới là người tốt”, ngây thơ và xấu xa có ranh giới rõ ràng như thế không, rốt cuộc bạn có là người tốt như mình vẫn luôn nghĩ? ', 'khongphaisoinhungcungdunglacuu.jpg', 0, 'S', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(29, ' Hãy Hỏi Trái Tim Mình ', 24, ' Park Nam Hee ', ' NXB Công Thương ', 110.00, ' Suy nghĩ là điều rất quan trọng đối với con người, chúng ta chỉ có thể tìm ra những điều mới mẻ trong cuộc sống trong quá trình suy nghĩ. Phương pháp suy nghĩ ảnh hưởng trực tiếp đến con người mà chúng ta sẽ trở thành, và đây chính là vấn đề mà triết học đặc biệt quan tâm tới. Triết học đặt ra và tìm câu trả lời cho những câu hỏi như: Ta phải suy nghĩ như thế nào, và sống ra sao? Tại sao không phải là thứ này mà nhất định phải là thứ kia? Tại sao những thứ khác không được mà chỉ duy nhất thứ này mới được? Vân vân và vân vân. ', 'hayhoitraitimminh.jpg', 0, 'A', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(30, ' Bạn Không Chỉ Sống Một Lần ', 21, ' Triết Học Đường Phố 2.0 ', ' NXB Phụ Nữ Việt Nam ', 170.00, ' Con đường của “Bạn không chỉ sống một lần” cho bạn biết được nửa còn lại của những thắc mắc trong lòng nhưng không mang góc nhìn màu hồng ảo tưởng về cuộc đời. Cuốn sách giúp bạn nhận ra một tâm hồn lạc quan cũng có thể chứa đựng những vết sẹo của sự tổn thương, ẩn sau một lối sống tự do là trách nhiệm cá nhân, ẩn sau sự thành công là những thử nghiệm thất bại và ẩn sau ngôi nhà ở nơi “thiên đường” là những cái giá mà một người sẵn sàng phải trả. Để chân thành yêu thương thế giới, bạn phải học cách chữa lành và thấu hiểu chính mình, bạn cần có thời gian để đi sâu và lắng nghe tiếng nói nội tại đang vang vọng trong tiềm thức của bạn. Cuộc sống càng nhiều kích thích, một người sẽ càng trở nên yếu ớt và mệt mỏi. ', 'bankhongchisongminhlan.jpg', 0, 'Q', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(33, ' Chicken Soup For The Soul - Trái Tim Người Cha (Tái Bản 2022) ', 12, ' Jack Canfield, Mark Victor ', ' NXB Tổng Hợp TPHCM ', 130.00, ' Tình mẹ - suối nguồn ấm áp, dịu dàng, nuôi dưỡng, vỗ về  tâm hồn chúng ta với tình yêu thương vô điều kiện. Ngược lại, tình cha gợi nên một hình tượng vững vàng, đáng tin cậy hơn của một người bảo vệ, tin yêu; người mang lại sự hiểu biết và sức mạnh cho con trẻ. Những câu chuyện trong cuốn sách này viết về tình yêu thương của người cha dành cho con, về hình ảnh người cha với nhiều cung bậc tình cảm khác nhau; nhưng có một điểm chung là: tất cả đều gây xúc động và truyền cảm hứng thật sự đến người đọc. ', 'traitimnguoicha.jpg', 0, 'C', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(34, ' Chicken Soup For The Golden Soul - Sức Mạnh Của Sự Tử Tế (Tái Bản) ', 21, ' Jack Canfield, Mark Victor Hansen, Paul J Meyer, Barbara Russell  ', ' NXB Tổng Hợp TPHCM ', 250.00, ' Sức Mạnh Của Sự Tử Tếtập hợp những câu chuyện sâu sắc và ý nghĩa về sự tử tế mỗi ngày. Một hành động tử tế nhỏ bé có thể tạo ra sự khác biệt lớn lao cho một ngày, thậm chí là cả cuộc đời, của ai đó. Quyển sách mời bạn gặp gỡ những con người bình dị, làm những việc tử tế xuất phát từ trái tim chứ không mong đợi được trả ơn, để rồi sau đó cả cuộc đời của họ lẫn người được họ giúp đỡ đều thay đổi theo hướng tốt đẹp hơn. ', 'sucmanhcuasutute.jpg ', 0, 'T', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL),
(35, ' A Cup Of Chicken Soup For The Soul - Điều Diệu Kỳ Từ Cách Nhìn Cuộc Sống ', 31, ' Jack Canfield, Mark Victor Hansen  ', ' NXB Tổng Hợp TPHCM ', 310.00, ' Có người từng nói ai lạc quan thì luôn nhìn thấy may mắn, cơ hội trong mọi hiểm nguy và bất hạnh, còn ai bi quan thì sẽ luôn nghĩ đến hiểm nguy, bất hạnh trong mọi may mắn và cơ hội. Nên nếu bạn từng nghĩ chỉ người nào đã trải qua đau khổ mới có được cho mình những bài học, thì điều đó hẳn là hoàn toàn không đúng. Như lời của người mẹ được nhắc đến trong cuốn sách “Điều diệu kỳ từ cách nhìn cuộc sống”: “nếu chúng ta biết trân trọng hạnh phúc mình đang có và học hỏi từ niềm hạnh phúc ấy thì chúng ta vẫn có thể trưởng thành”. Wolfgang von Goethe - một vĩ nhân trong nền văn chương thế giới - từng nói: “Không có gì trên thế giới này là tầm thường cả. Tất cả đều tùy thuộc vào góc nhìn của mỗi người”. ', 'dieudieukytucachnhincuocsong.jpg', 0, 'O', 0, '', 0, '', 0, '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ebookinfo`
--

CREATE TABLE `ebookinfo` (
  `id` int(10) UNSIGNED NOT NULL,
  `ebookname` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `unitprice` decimal(8,2) NOT NULL DEFAULT 0.00,
  `summary` text DEFAULT NULL,
  `ebooktxt` varchar(110) DEFAULT NULL,
  `ebookimage` varchar(110) NOT NULL,
  `eclassid` varchar(10) NOT NULL,
  `downloads` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `link` varchar(110) DEFAULT NULL,
  `reading` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ebookinfo`
--

INSERT INTO `ebookinfo` (`id`, `ebookname`, `author`, `unitprice`, `summary`, `ebooktxt`, `ebookimage`, `eclassid`, `downloads`, `link`, `reading`) VALUES
(41, 'Tiếng Anh Y Khoa dành cho người mới bắt đầu', 'Đỗ Trung Kiên', 0.00, 'Cuốn này hay vãi cả lúa', 'New Text Document.zip', 'ykhoa.png', 'A', 0, '', 0),
(42, 'Tỷ phú bán giày', 'Tony Hsieh', 0.00, '', 'New Text Document.zip', '38048.png', 'Z', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favoriteinfo`
--

CREATE TABLE `favoriteinfo` (
  `favoriteid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) NOT NULL,
  `bookid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `favoriteinfo`
--

INSERT INTO `favoriteinfo` (`favoriteid`, `userid`, `bookid`) VALUES
(17, 19, 7),
(18, 19, 9);

-- --------------------------------------------------------

--
-- Table structure for table `feedbackinfo`
--

CREATE TABLE `feedbackinfo` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(5) NOT NULL,
  `link` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messageinfo`
--

CREATE TABLE `messageinfo` (
  `mid` int(11) NOT NULL,
  `mdate` varchar(64) NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bookid` int(10) NOT NULL DEFAULT 0,
  `userid` int(10) NOT NULL DEFAULT 0,
  `ismessage` tinyint(4) NOT NULL,
  `thumbnum` int(8) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `orderinfo`
--

CREATE TABLE `orderinfo` (
  `id` int(10) NOT NULL,
  `orderid` varchar(20) NOT NULL,
  `userid` int(10) NOT NULL,
  `bookid` int(10) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ordertime` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `courier` varchar(100) NOT NULL DEFAULT 'Người Giao Hàng',
  `contact` varchar(11) NOT NULL,
  `orderremark` text DEFAULT NULL,
  `pay` varchar(100) NOT NULL DEFAULT 'Thanh toán thẻ ngân hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orderinfo`
--

INSERT INTO `orderinfo` (`id`, `orderid`, `userid`, `bookid`, `quantity`, `ordertime`, `receiver`, `address`, `courier`, `contact`, `orderremark`, `pay`) VALUES
(42, '79030064024', 19, 6, 2, '2023-08-30 06:40:24', 'An', '146/60/18 Hoàng Quốc Việt, KV4, nhà trọ Nhật Anh.', 'Người Giao Hàng', '0857853222', '', 'Thanh toán khi nhận hàng'),
(43, '21930070430', 19, 6, 1, '2023-08-30 07:04:30', 'An', '146/60/18 Hoàng Quốc Việt, KV4, nhà trọ Nhật Anh.', 'Người Giao Hàng', '0857853222', '', 'Thanh toán khi nhận hàng'),
(44, '21930070430', 19, 7, 1, '2023-08-30 07:04:30', 'An', '146/60/18 Hoàng Quốc Việt, KV4, nhà trọ Nhật Anh.', 'Người Giao Hàng', '0857853222', '', 'Thanh toán khi nhận hàng');

-- --------------------------------------------------------

--
-- Table structure for table `shopcarinfo`
--

CREATE TABLE `shopcarinfo` (
  `cart_id` int(10) UNSIGNED NOT NULL,
  `userid` int(10) NOT NULL,
  `bookid` int(10) NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stockinfo`
--

CREATE TABLE `stockinfo` (
  `stockid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) NOT NULL,
  `bookid` int(10) NOT NULL,
  `stockprice` decimal(8,2) NOT NULL,
  `stockquantity` int(10) NOT NULL,
  `stockdate` varchar(100) NOT NULL,
  `stockremark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thumb`
--

CREATE TABLE `thumb` (
  `id` int(10) NOT NULL,
  `bookid` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `mid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `userid` int(10) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(70) NOT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birthday` varchar(10) DEFAULT NULL,
  `tel` varchar(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `permission` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`userid`, `username`, `password`, `sex`, `birthday`, `tel`, `email`, `addr`, `permission`) VALUES
(19, 'picachu6243', '798e6703c1da631fcaf6b1dd482da7f3', NULL, NULL, '0365856491', NULL, NULL, 1),
(20, 'trinh', '25f9e794323b453885f5181f1b624d0b', NULL, '2020-01-29', '18005551234', 'cstiwap@gmail.com', 'ưadadfasdfsadf', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookclassinfo`
--
ALTER TABLE `bookclassinfo`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `bookdetailinfo`
--
ALTER TABLE `bookdetailinfo`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `bookinfo`
--
ALTER TABLE `bookinfo`
  ADD PRIMARY KEY (`bookid`),
  ADD KEY `classid_book` (`classid`);

--
-- Indexes for table `ebookinfo`
--
ALTER TABLE `ebookinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_EBOOK_BOOKCLASS` (`eclassid`);

--
-- Indexes for table `favoriteinfo`
--
ALTER TABLE `favoriteinfo`
  ADD PRIMARY KEY (`favoriteid`),
  ADD KEY `favorite_bookid` (`bookid`),
  ADD KEY `favorite_userid` (`userid`);

--
-- Indexes for table `feedbackinfo`
--
ALTER TABLE `feedbackinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messageinfo`
--
ALTER TABLE `messageinfo`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `FK_MESSGAE` (`bookid`),
  ADD KEY `FK_MESSAGE_USER` (`userid`) USING BTREE;

--
-- Indexes for table `orderinfo`
--
ALTER TABLE `orderinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_bookid` (`bookid`),
  ADD KEY `order_userid` (`userid`);

--
-- Indexes for table `shopcarinfo`
--
ALTER TABLE `shopcarinfo`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `FK_SHOPCAR_USER` (`userid`),
  ADD KEY `FK_SHOPCAR_BOOK` (`bookid`);

--
-- Indexes for table `stockinfo`
--
ALTER TABLE `stockinfo`
  ADD PRIMARY KEY (`stockid`),
  ADD KEY `userid_stock` (`userid`),
  ADD KEY `bookid_stock` (`bookid`);

--
-- Indexes for table `thumb`
--
ALTER TABLE `thumb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_THUMB_MESSAGE` (`mid`),
  ADD KEY `FK_THUMB_BOOK` (`bookid`),
  ADD KEY `FK_THUMB_UESR` (`userid`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookinfo`
--
ALTER TABLE `bookinfo`
  MODIFY `bookid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ebookinfo`
--
ALTER TABLE `ebookinfo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `favoriteinfo`
--
ALTER TABLE `favoriteinfo`
  MODIFY `favoriteid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `feedbackinfo`
--
ALTER TABLE `feedbackinfo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messageinfo`
--
ALTER TABLE `messageinfo`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orderinfo`
--
ALTER TABLE `orderinfo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `shopcarinfo`
--
ALTER TABLE `shopcarinfo`
  MODIFY `cart_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `stockinfo`
--
ALTER TABLE `stockinfo`
  MODIFY `stockid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thumb`
--
ALTER TABLE `thumb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookdetailinfo`
--
ALTER TABLE `bookdetailinfo`
  ADD CONSTRAINT `FK_DETAIL_BOOK` FOREIGN KEY (`bookid`) REFERENCES `bookinfo` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookinfo`
--
ALTER TABLE `bookinfo`
  ADD CONSTRAINT `classid_book` FOREIGN KEY (`classid`) REFERENCES `bookclassinfo` (`classid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ebookinfo`
--
ALTER TABLE `ebookinfo`
  ADD CONSTRAINT `FK_EBOOK_BOOKCLASS` FOREIGN KEY (`eclassid`) REFERENCES `bookclassinfo` (`classid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `favoriteinfo`
--
ALTER TABLE `favoriteinfo`
  ADD CONSTRAINT `favorite_bookid` FOREIGN KEY (`bookid`) REFERENCES `bookinfo` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_userid` FOREIGN KEY (`userid`) REFERENCES `userinfo` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messageinfo`
--
ALTER TABLE `messageinfo`
  ADD CONSTRAINT `FK_MESSAGE_USER` FOREIGN KEY (`userid`) REFERENCES `userinfo` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MESSGAE` FOREIGN KEY (`bookid`) REFERENCES `bookinfo` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderinfo`
--
ALTER TABLE `orderinfo`
  ADD CONSTRAINT `order_bookid` FOREIGN KEY (`bookid`) REFERENCES `bookinfo` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_userid` FOREIGN KEY (`userid`) REFERENCES `userinfo` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shopcarinfo`
--
ALTER TABLE `shopcarinfo`
  ADD CONSTRAINT `FK_SHOPCAR_BOOK` FOREIGN KEY (`bookid`) REFERENCES `bookinfo` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SHOPCAR_USER` FOREIGN KEY (`userid`) REFERENCES `userinfo` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stockinfo`
--
ALTER TABLE `stockinfo`
  ADD CONSTRAINT `bookid_stock` FOREIGN KEY (`bookid`) REFERENCES `bookinfo` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userid_stock` FOREIGN KEY (`userid`) REFERENCES `userinfo` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `thumb`
--
ALTER TABLE `thumb`
  ADD CONSTRAINT `FK_THUMB_BOOK` FOREIGN KEY (`bookid`) REFERENCES `bookinfo` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_THUMB_MESSAGE` FOREIGN KEY (`mid`) REFERENCES `messageinfo` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_THUMB_UESR` FOREIGN KEY (`userid`) REFERENCES `userinfo` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
