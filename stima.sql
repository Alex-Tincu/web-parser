-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2017 at 10:52 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stima`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`id`, `password`, `email`, `enabled`, `username`, `username_canonical`, `email_canonical`, `salt`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(2, '$2y$13$WE71E1mu6K3Wap.raONQDO6xn/AaR6j1CLzFlfBwk1DjCLLGYxKG.', 'alex.tincu@ymail.com', 1, 'alex.tincu', 'alex.tincu', 'alex.tincu@ymail.com', NULL, '2017-03-02 10:50:56', NULL, NULL, 'a:0:{}'),
(3, '$2y$13$CEfIcM8D.cqhXlAU085h1ukWyoMwzTdpGgADQAmYM/FekKHhebYXy', 'alex.tincu2@ymail.com', 1, 'alex.tincu2', 'alex.tincu2', 'alex.tincu2@ymail.com', NULL, '2017-03-02 10:49:25', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `css_rule` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `last_html` longtext COLLATE utf8_unicode_ci,
  `check_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`id`, `user_id`, `url`, `css_rule`, `last_html`, `check_date`) VALUES
(9, 2, 'http://stimasoft.com/careers/', '#content', ' <article id="post-106" class="post-106 page type-page status-publish hentry"> <div class="entry-content"> <header> <h1>Careers</h1> <h6>We pride ourselves on being a great place to work. Our goal is to make business operations and interactions easier with our tailor-made software solutions.<br /> At Stima Soft, we all share a set of common values &#8211; to deliver excellent quality, to focus on our customers&#8217; needs and to constantlyevolve professionally. We would like to welcome new employees who share our enthusiasm and passion for custom software development.<br /> </h6> </header> <p>If you are passionate about custom software development, share our values and you are ready to join our team,<br /> <a href="http://www.stimasoft.com/apply-to-our-jobs"><em>email your resume</em></a> outlining your skills and how you believe you can add value to Stima Soft<br /><br /> <b><i>Check out our job openings</i></b></p> <div class="clear"></div> </div> <footer class="entry-meta"> </footer> </article> <div class="entry-content"> <h4><a href="http://stimasoft.com/web-developer-php5/" target="_parent" style="color:#C40B0B;">Web Developer [PHP5]</a></h4> <br /> <p>We want to expand our team with a passionate for his work person, responsible and dedicated to the development of a web platform that meets the current and anticipate future requirements. </p> </div> <div class="entry-content"> <h4><a href="http://stimasoft.com/net-c-web-developer/" target="_parent" style="color:#C40B0B;">.NET / C# Web Developer</a></h4> <br /> <p>Implementing back-office tools interfacing with external applications (Google, Overture, GDS systems).<br /> Web developing with Microsoft .NET Framework, Standard and Professional Edition, VS.NET (C#), and database support (MS SQL Server.</p> </div> ', '2017-03-02 09:37:27'),
(10, 3, 'http://stimasoft.com/contact/', '.entry-content .col-sm-6', ' <h1>Contact Us!</h1> <div class="wpcf7" id="wpcf7-f75-p14-o1" dir="ltr"> <div class="screen-reader-response"></div> <form name="" action="/contact/#wpcf7-f75-p14-o1" method="post" class="wpcf7-form" novalidate="novalidate"> <div style="display: none;"> <input type="hidden" name="_wpcf7" value="75" /> <input type="hidden" name="_wpcf7_version" value="4.0.3" /> <input type="hidden" name="_wpcf7_locale" value="" /> <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f75-p14-o1" /> <input type="hidden" name="_wpnonce" value="2cc3515111" /> </div> <p>Name(required)<br /> <span class="wpcf7-form-control-wrap your-name"><input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" /></span> </p> <p>Your Email (required)<br /> <span class="wpcf7-form-control-wrap your-email"><input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" /></span> </p> <p>Subject<br /> <span class="wpcf7-form-control-wrap your-subject"><input type="text" name="your-subject" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" /></span> </p> <p>Message<br /> <span class="wpcf7-form-control-wrap your-message"><textarea name="your-message" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false"></textarea></span> </p> <p>Fill the code<br /> <input type="hidden" name="_wpcf7_captcha_challenge_captcha-800" value="1561361223" /><img class="wpcf7-form-control wpcf7-captchac wpcf7-captcha-captcha-800" width="72" height="24" alt="captcha" src="http://stimasoft.com/wp-content/uploads/wpcf7_captcha/1561361223.png" /><br /> <span class="wpcf7-form-control-wrap captcha-800"><input type="text" name="captcha-800" value="" size="40" class="wpcf7-form-control wpcf7-captchar" aria-invalid="false" /></span></p> <p><input type="submit" value="Send" class="wpcf7-form-control wpcf7-submit" /></p> <div class="wpcf7-response-output wpcf7-display-none"></div></form></div> ', '2017-03-02 10:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `resource_history`
--

CREATE TABLE `resource_history` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `html` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `alert_sent` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `resource_history`
--

INSERT INTO `resource_history` (`id`, `resource_id`, `html`, `date`, `alert_sent`) VALUES
(17, 9, ' <article id="post-106" class="post-106 page type-page status-publish hentry"> <div class="entry-content"> <header> <h1>Careers</h1> <h6>We pride ourselves on being a great place to work. Our goal is to make business operations and interactions easier with our tailor-made software solutions.<br /> At Stima Soft, we all share a set of common values &#8211; to deliver excellent quality, to focus on our customers&#8217; needs and to constantlyevolve professionally. We would like to welcome new employees who share our enthusiasm and passion for custom software development.<br /> </h6> </header> <p>If you are passionate about custom software development, share our values and you are ready to join our team,<br /> <a href="http://www.stimasoft.com/apply-to-our-jobs"><em>email your resume</em></a> outlining your skills and how you believe you can add value to Stima Soft<br /><br /> <b><i>Check out our job openings</i></b></p> <div class="clear"></div> </div> <footer class="entry-meta"> </footer> </article> <div class="entry-content"> <h4><a href="http://stimasoft.com/web-developer-php5/" target="_parent" style="color:#C40B0B;">Web Developer [PHP5]</a></h4> <br /> <p>We want to expand our team with a passionate for his work person, responsible and dedicated to the development of a web platform that meets the current and anticipate future requirements. </p> </div> <div class="entry-content"> <h4><a href="http://stimasoft.com/net-c-web-developer/" target="_parent" style="color:#C40B0B;">.NET / C# Web Developer</a></h4> <br /> <p>Implementing back-office tools interfacing with external applications (Google, Overture, GDS systems).<br /> Web developing with Microsoft .NET Framework, Standard and Professional Edition, VS.NET (C#), and database support (MS SQL Server.</p> </div> ', '2017-03-02 09:37:27', 0),
(18, 10, ' <h1>Contact Us!</h1> <div class="wpcf7" id="wpcf7-f75-p14-o1" dir="ltr"> <div class="screen-reader-response"></div> <form name="" action="/contact/#wpcf7-f75-p14-o1" method="post" class="wpcf7-form" novalidate="novalidate"> <div style="display: none;"> <input type="hidden" name="_wpcf7" value="75" /> <input type="hidden" name="_wpcf7_version" value="4.0.3" /> <input type="hidden" name="_wpcf7_locale" value="" /> <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f75-p14-o1" /> <input type="hidden" name="_wpnonce" value="2cc3515111" /> </div> <p>Name(required)<br /> <span class="wpcf7-form-control-wrap your-name"><input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" /></span> </p> <p>Your Email (required)<br /> <span class="wpcf7-form-control-wrap your-email"><input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" /></span> </p> <p>Subject<br /> <span class="wpcf7-form-control-wrap your-subject"><input type="text" name="your-subject" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" /></span> </p> <p>Message<br /> <span class="wpcf7-form-control-wrap your-message"><textarea name="your-message" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false"></textarea></span> </p> <p>Fill the code<br /> <input type="hidden" name="_wpcf7_captcha_challenge_captcha-800" value="1561361223" /><img class="wpcf7-form-control wpcf7-captchac wpcf7-captcha-captcha-800" width="72" height="24" alt="captcha" src="http://stimasoft.com/wp-content/uploads/wpcf7_captcha/1561361223.png" /><br /> <span class="wpcf7-form-control-wrap captcha-800"><input type="text" name="captcha-800" value="" size="40" class="wpcf7-form-control wpcf7-captchar" aria-invalid="false" /></span></p> <p><input type="submit" value="Send" class="wpcf7-form-control wpcf7-submit" /></p> <div class="wpcf7-response-output wpcf7-display-none"></div></form></div> ', '2017-03-02 10:50:28', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C250282492FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_C2502824A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_C2502824C05FB297` (`confirmation_token`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F416A76ED395` (`user_id`);

--
-- Indexes for table `resource_history`
--
ALTER TABLE `resource_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7A1A97A389329D25` (`resource_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `resource_history`
--
ALTER TABLE `resource_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F416A76ED395` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resource_history`
--
ALTER TABLE `resource_history`
  ADD CONSTRAINT `FK_7A1A97A389329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;