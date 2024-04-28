-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 25, 2019 at 07:21 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcarechatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `chat_id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `question` text NOT NULL,
  `answer` text,
  PRIMARY KEY (`chat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `doc_id` int(50) NOT NULL AUTO_INCREMENT,
  `hsp_id` varchar(250) NOT NULL,
  `doc_name` varchar(250) NOT NULL,
  `doc_mobile` varchar(50) NOT NULL,
  `doc_email` varchar(250) NOT NULL,
  `doc_address` mediumtext NOT NULL,
  `doc_gender` varchar(10) NOT NULL,
  `doc_qualification` varchar(250) NOT NULL,
  `doc_exp` varchar(250) NOT NULL,
  `doc_specialization` varchar(250) NOT NULL,
  PRIMARY KEY (`doc_id`)
);

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `hsp_id`, `doc_name`, `doc_mobile`, `doc_email`, `doc_address`, `doc_gender`, `doc_qualification`, `doc_exp`, `doc_specialization`) VALUES
(14, 'Apollo Hospital', 'Dr.Shubham Garg', '9073564210', 'Shubham08@gmail.com', '', 'M', 'Noida', 'Mbbs|Ms-General Surgery', 'Chest surgeon,Surgical oncologist,Thoracic Oncologist'),
(13, 'Fortis Hospital', 'Dr.Vishwanath Dudani', '7865478901', 'Vishawanath22@gmail.com', 'Noida', 'M', 'Mbbs', '30 years', 'Plastic Surgeon'),
(15, 'Jaypee Hospital', 'Dr.Raj Ganjoo', '8723065791', 'Raj9@gmail.com', 'Noida', 'M', 'Mbbs|M.D.(Psychiatry)', '49 years', 'Psychiatrist'),
(16, 'Metro Multispeciality Hospital', 'Dr.Rajesh Sharma', '4912073741', 'Rajesh9@gmail.com', 'Noida', 'M', 'MBBS|Mch-Cardio Thoracic and Vascular Surgery', '32 years', 'Pediatric Cardiac Surgeon,Pediactric Cardiologist ,Cardiothoracic Surgeon'),
(17, 'Yatharth Superspeciality Hospital', 'Dr.Avani Sarvaiya Tiwari', '4329878767', 'Avani01@gmail.com', 'Noida', 'F', 'MBBS|DPM(Psychiatry)|DNB', '19 years', 'Psychiatrist'),
(18, 'Kailash Hospital', 'Dr.Ashima Ranjan', '9550314648', 'Ashima@gmail.com', 'Noida', 'F', 'DPM(Psychiatry)|MBBS|DNB-Psychiatry', '13 years', 'Psychiatrist,Neuropsychiatrist'),
(19, 'Cloudnine Hospital', 'Dr.Sanjeev Kumar Shrivastava', '8522129510', 'Sanjeev@gmail.com', 'Noida', 'M', 'MBBS|MS-General Surgery', '34 years', 'Gastroenterologist,General Surgeon,Laparoscopic Surgeon,Hepatologist'),
(20, 'Felix Hospital', 'Dr.Vinita Gupta', '3544208084', 'vinitag@gmail.com', 'Noida', 'F', 'MBBS|MD-Obstetrics & Gynaecology', '24 years', 'Gynecologist,Infertility Specialist,Obstetrician');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS hospital;
CREATE TABLE IF NOT EXISTS hospital (
hsp_id int(50) NOT NULL AUTO_INCREMENT,
  hsp_name varchar(250) NOT NULL,
  hsp_contact varchar(10) NOT NULL,
  hsp_email varchar(50) NOT NULL,
  hsp_address mediumtext NOT NULL,
  PRIMARY KEY (hsp_id)
);

--
-- Dumping data for table `hospital`
--

INSERT INTO hospital VALUES
(25, 'Fortis Hospital Noida', '07669583849', 'reachus@fortishealthcare.com', 'B-22, Rasoolpur Nawada, D Block, Sector 62, Noida, Uttar Pradesh 201301'),
(26, 'Apollo Hospital Noida', '0120401200', 'infonoida@apollohospitals.com', 'E 2, Apollo Hospitals Rd, Block E, Sector 26, Noida, Uttar Pradesh 201301'),
(27,'Jaypee Hospital Noida','1204122222','askus@jaypeehealthcare.com','128, Jaypee Hospital Road, Uttar Pradesh, Opposite Delhi Public School'),
(28,'Metro Multispeciality Hospital',' 01206966666','info@metrohospitals.com','Metro Multispeciality Hospital, L Block, Sector 11, Noida, Uttar Pradesh 201301'),
(29,'Yatharth Superspeciality Hospital','01202460000','info@yatharthhospitals.com','1, Gejha Rd, Lotus Panache, Sector 110, Noida, Uttar Pradesh 201304'),
(30,'Kailash Hospital','01202466666','kailash.noida@kailashhealthcare.com','H33, Shaheed Arjun Sardana Marg, Pocket H, Sector 27, Noida, Uttar Pradesh 201301'),
(31,'Cloudnine Hospital Noida','9972499724','info@cloudninecare.com','Gulmohar Ave St, Block B, Sector 51, Noida, Uttar Pradesh 201304'),
(32,'Felix Hospital','7835999444','info@felixhostpital.com','NH 01, Paras Tierea, Sector 137, Noida, Uttar Pradesh 201305'),
(33,'Icare Eye Hospital','9811880015','wecare@icarehospital.org','Apollo Hospitals Rd, Block E, Sector 26, Noida, Uttar Pradesh 201301'),
(34,'Motherland Hospital',' 01204154949','info@motherlandhospital.com','Amrapali Platinum, Sector 119, Noida, Uttar Pradesh 201307');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS question;
CREATE TABLE IF NOT EXISTS question (
  ques_id int(50) NOT NULL AUTO_INCREMENT,
  main varchar(2500),
  k1 varchar(250) ,
  k2 varchar(250) ,
  k3 varchar(250) ,
  k4 varchar(250) ,
  answer varchar(250) ,
  PRIMARY KEY (ques_id)
);

INSERT INTO question  VALUES
(1, 'hello hi hii hey heyyyy', 'hello', 'hi', 'hii', 'hey', 'Hey! what would you like to discuss?'),
(5, 'I know what I am supposed to eat, but how can I keep eating what I enjoy?', '', '', '', '', 'In most cases, you can eat anything you want, Walsh observes. You just cannot eat as much as you want. And you have to include the fruits, vegetables, nuts, legumes, whole grains and fish you need to lower inflammation and keep your calories in check.'),
(4, 'I’ve heard that keeping calories down is linked to longevity. Does that mean I should be fasting?', '', '', '', '', 'Multiple studies have shown that long-term calorie restriction can reduce metabolic function and slow the cellular aging process — in rats! Human trials have been limited. A 2019 study in The Lancet showed that people who reduced their calorie intake'),
(3, 'Does all this ‘healthy living’ stuff really help me live longer? My uncle ate bacon every morning and lived to age 87. ', '', '', '', '', 'It’s not just about how long you live; it’s about how well you live. A 2019 BMJ (British Medical Journal?) study that had followed more than 110,000 people since the 1980s found that those who adopted healthy lifestyle habits such as controlling thei'),
(2, 'Well I’m in my 50s, but honestly, I feel like I’m still young. At what age should I get serious about my health?', '', '', '', '', 'Right now would be a good start. Longevity researchers study a phenomenon known as future time perspective. The more time we perceive we have, the more we’re able to ignore the fact that we’re overweight, may have elevated inflammation levels and don'),
(6, 'Skipping breakfast is the new diet trend. Good for me?', '', '', '', '', 'Bad for you. Breakfast is important for a number of reasons, and one of the big ones is fiber intake. A 2021 Journal of the American Board of Family Medicine study found that breakfast eaters who ate more than 25 grams of fiber a day had a 21 percent'),
(7, 'Is that all I need for exercise — a long walk?', '', '', '', '', 'Yes and no. Research has shown that moderate activity such as walking has excellent health benefits, and the Centers for Disease Control and Prevention recommends at least 150 minutes of moderate-intensity activity each week. Just over 20 minutes of '),
(8, 'My joints ache after exercise. Is arthritis setting in?', '', '', '', '', 'Exercise soreness goes away after a day or two. With osteoarthritis, you’ll most likely be dealing with joint pain, swelling and limitations on motion, Metzl says. “Because we’re talking pain, people often think, I have arthritis — I need to baby it.'),
(9, 'What else can I do for my bad back? ', '', '', '', '', 'Plank exercises, Metzl advises. Lie facedown on a mat. Bend your elbows, and bring your hands together under your chin. Now lift your knees, hips and torso off the floor, so your weight is on your elbows and toes. Keep your back straight, and don’t l'),
(10, ' What can I do about the stress in my life?', '', '', '', '', 'Aggressively rethink how you react to daily dramas. A 2020 study showed that people experiencing “unbearable” stress lost nearly three years from their life expectancy. Always remember that stress isn’t a demanding boss, a struggling child or lousy d'),
(11, ' I’m thinking about doing some surgical ‘freshening up,’ but is cosmetic surgery safe?', '', '', '', '', 'The fact is, we’re surrounded by people who’ve had cosmetic surgery: There were 2.3 million procedures in 2020, and surveys show that about 90 percent of patients are satisfied with their results. And, in general, cosmetic surgery is safe. A study of'),
(12, 'I have fever and high temperature', '', '', '', '', 'If you have a fever and high temperature, it is important to take care of yourself and seek medical attention if necessary\r\n\r\nTake your temperature: Use a thermometer to take your temperature and determine whether you have a fever. A normal body temp'),
(13, 'I am vomiting ', '', '', '', '', 'Avoid solid foods: It is important to avoid solid foods while you are vomiting. Start with clear liquids and then progress to soft, bland foods such as bananas, rice, applesauce, and toast\r\n\r\nMonitor your symptoms: Keep track of your symptoms and see'),
(14, ' I had COVID last winter, and I still feel off. Is this long COVID?', '', '', '', '', 'Data suggests that more than half of COVID survivors wind up with post-acute COVID-19 syndrome. It’s marked by extended breathing problems, brain fog, headaches and joint pain. Studies show that the virus may persist in the heart, brain and spinal fl'),
(15, 'I have hypertension. Are blood pressure cuffs worth the money?\r\n', '', '', '', '', 'Yes. A 2021 study, over 10 years, of 11,502 people ages 45 to 60 showed that those with the lowest cumulative systolic BP readings lived 4.1 years longer and delayed heart disease by 5.4 years. Measuring your blood pressure frequently reminds you to '),
(16, 'What’s the first sign of heart disease? ', '', '', '', '', 'It’s plural: unusual fatigue, sleep problems, shortness of breath, indigestion and chest pain, says Suzanne Steinbaum, an osteopathic preventive cardiologist. '),
(17, ' I love my nightly glass of wine. A little bit of vine beer is good for my heart, right?', '', '', '', '', 'Maybe not. Several organizations, such as the Mayo Clinic, still endorse that idea. But the American Heart Association doesn’t recommend drinking any form of alcohol to gain health benefits. Research is beginning to coalesce around the idea that ligh'),
(18, 'I have the occasional cigarette. Does that really matter?', '', '', '', '', 'Yes. A review of 141 studies showed that people who smoke just one cigarette a day still have half the heart disease risk of people who smoke 20. '),
(19, 'Does ‘prediabetes’ mean you’re definitely going to get diabetes?', '', '', '', '', 'There are no guarantees, but there’s a lot of evidence that making lifestyle changes now can dramatically reverse the direction your health is headed in.'),
(20, ' How much should I worry about cancer ', '', '', '', '', 'The median age for a cancer diagnosis is 66, meaning half of all cases occur in those who are younger. The good news is that cancer mortality rates have fallen about 32 percent since 1992, with an overall five-year survival rate of 68 percent.'),
(21, 'So, if cancer runs in my family, I should get screened regularly?', '', '', '', '', 'The U.S. Preventive Services Task Force recommends screening for several types of cancer, including breast, cervical, colorectal and lung. There is evidence showing that screening tests can catch these cancers early and make a difference in treatment'),
(22, 'What about prostate cancer? Should I get a PSA test?\r\n', '', '', '', '', 'Yes. Prostate cancer is the most common cancer in men besides skin cancer, and 40 percent of cases hit men before age 65. Nearly 99 percent of prostate cases, however, are treatable if they are caught early. And don’t panic if your PSA is elevated. '),
(23, 'My mother was legally blind when she died. How do I protect my eyes?', '', '', '', '', 'Pop in to see the eye doctor for a dilated-eye exam every year, says Kenneth Dickerson, a doctor of optometry at the University of Rochester’s Flaum Eye Institute. Most eye diseases, such as macular degeneration, are silent sight stealers; '),
(24, 'What else can I do to protect my brain?', '', '', '', '', 'There’s no miracle pill for brain health, though one of the most important things you can do is keep your weight stable. A 2021 meta-analysis of data found that being significantly overweight increased the risk of dementia. '),
(25,'how do i solve constipation','','','','','Increase your fiber intake: Eating foods high in fiber can help keep your bowel movements regular. Foods such as fruits, vegetables, whole grains, and beans are all good sources of fiber.Stay hydrated: Drinking plenty of fluids, especially water, can help soften your stool and make it easier to pass.'),
(26,'I am vomiting but i dont have fever','','','','','Vomiting can be caused by a variety of factors, including viruses, bacteria, food poisoning, motion sickness, anxiety, or even certain medications. It is possible to experience vomiting without having a fever, as fever is not always present with vomiting.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(50) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(250) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_gender` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_contact` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_gender`, `user_password`, `user_contact`) VALUES
(101, 'Aryaman', 'Aryaman@gmail.com', 'male', '1234', '1234567890');  

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
