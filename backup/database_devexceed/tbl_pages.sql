-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2021 at 01:39 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_devexceed`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `page_id` int(6) UNSIGNED NOT NULL,
  `page_name` varchar(255) NOT NULL DEFAULT '',
  `page_seo_name` varchar(255) NOT NULL,
  `page_content` longtext,
  `page_headertitle` varchar(255) NOT NULL,
  `page_status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`page_id`, `page_name`, `page_seo_name`, `page_content`, `page_headertitle`, `page_status`) VALUES
(1, 'About Us', 'about-us', '<p>\n	&nbsp;</p>\n<p helvetica="" style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(77, 77, 77); font-family: ">\n	<span style="font-size:12px;">Tailem.com&nbsp;is an&nbsp;opinion focused site on the music that matters to you. We provide a platform where users can rate, review and share their thoughts on all of their favorite songs.</span></p>\n<p helvetica="" style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(77, 77, 77); font-family: ">\n	<span style="font-size:12px;">On this site you will find real life experiences and opinions voiced&nbsp;by anyone who enjoys and appreciates music. We provide our users with the tools to easily find and discover songs that you will grow to love, read what others have said about them and share their own experiences. We want the world to know how much value you place on a song and inspire artists to make even greater music&nbsp;for the world to enjoy. &nbsp;</span></p>\n<p helvetica="" style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(77, 77, 77); font-family: ">\n	<span style="font-size:12px;">We believe your opinions are incredibly important and we value each and every contribution made by our users. In the end, we all wish to hear the best songs that inspire us&nbsp;and move us in ways that only music can.</span></p>\n<p helvetica="" style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(77, 77, 77); font-family: ">\n	We are constantly updating our records to give you a complete listing of every artist, every album and every song. If an artist, album or song that you wish to discuss is not available, please let us know and we will add it as soon as possible.&nbsp;</p>\n<p>\n	&nbsp;</p>', 'About Us', 1),
(2, 'Privacy Policy', 'privacy-policy', '<p>\n	&nbsp;</p>\n<p>\n	<em>Last Modified: 1 January 2017</em></p>\n<p>\n	&nbsp;</p>\n<p>\n	1.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Acceptance</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	Your privacy is important to us. This is why we have created this Privacy Policy (the &ldquo;Policy&rdquo;). It describes the types of information we may collect from you, or that you may provide, when you visit Tailem.com (our &quot;Site&quot;), as well as how we collect, maintain, use, protect and disclose your information. This Policy covers the information we collect on or through our Site, or when you contact us for any reason. It does not apply to information collected by any third party, including through any external website that may link to or be accessible from the Site. Third parties, such as our advertisers, have their own privacy policies different from ours. Please check directly with each such third party to avoid unfair surprises and misunderstandings.</p>\n<p>\n	&nbsp;</p>\n<p>\n	Your visits to this Site constitute your acceptance of this Privacy Policy and our Terms of Use <a href="https://www.tailem.com/cms/terms-of-use">[link]</a>. If you do not agree with this Privacy Policy or the Terms of Use <a href="https://www.tailem.com/cms/terms-of-use">[link]</a>, you must exit our Site. This Policy may change from time to time, and the date of last update is indicated at the top of this page. Your continued use of this Site after we revise this Policy is deemed to be acceptance of the revisions, so please check this page from time to time for updates.</p>\n<p>\n	&nbsp;</p>\n<p>\n	2.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>What information we collect</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	We may collect several types of information from and about users of our Site, including the following:</p>\n<p>\n	a. &nbsp; &nbsp; Username, email, and password.</p>\n<p>\n	b. &nbsp; &nbsp; Analytical Site usage information collected via Google Analytics. This data may include the Site pages you view and other similar information about your behaviour on our Site.</p>\n<p>\n	We collect this information:</p>\n<p>\n	c. &nbsp; &nbsp; Directly from you when you provide it to us (e.g. when you contact us for any reason).</p>\n<p>\n	d. &nbsp; &nbsp; Automatically as you navigate through the site. Information collected automatically may include usage details, IP addresses and information collected through cookies and other tracking technologies.</p>\n<p>\n	&nbsp;</p>\n<p>\n	3.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>How we use your information</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	We use information that we collect about you or that you provide to us, including any personal information:</p>\n<p>\n	a. &nbsp; &nbsp; To provide the services you requested.</p>\n<p>\n	b. &nbsp; &nbsp; To notify you about changes to our Site or any services we offer or provide though it.</p>\n<p>\n	c. &nbsp; &nbsp; To allow you to participate in interactive features on our Site.</p>\n<p>\n	d. &nbsp; &nbsp; To send our newsletter but you may opt out of it.</p>\n<p>\n	e. &nbsp; &nbsp; To carry out our obligations and enforce our rights arising from any contracts entered into between you and us, including for billing and collection.</p>\n<p>\n	f. &nbsp; &nbsp; &nbsp;In any other way we may describe when you provide the information.</p>\n<p>\n	&nbsp;</p>\n<p>\n	4.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Disclosure of your information</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	We may disclose personal information that we collect or you provide as described in this Policy:</p>\n<p>\n	a. &nbsp; &nbsp; To fulfil the purpose for which you provide it.</p>\n<p>\n	b. &nbsp; &nbsp; To contractors, service providers and other third parties we use to support our business.</p>\n<p>\n	c. &nbsp; &nbsp; To a buyer or other successor in the event of a merger, divestiture, restructuring, reorganization, dissolution or other sale or transfer of some or all of the Site&#39;s assets, whether as a going concern or as part of bankruptcy, liquidation or similar proceeding, in which personal information about our Site users is among the assets transferred.</p>\n<p>\n	d. &nbsp; &nbsp; We may disclose aggregated information about our users and information that does not identify any individual without restriction.</p>\n<p>\n	e. &nbsp; &nbsp; For any other purpose disclosed by us when you provide the information.</p>\n<p>\n	We may also disclose your personal information:</p>\n<p>\n	f. &nbsp; &nbsp; To comply with any court order, law or legal process, including to respond to any government or regulatory request.</p>\n<p>\n	g. &nbsp; &nbsp; To enforce or apply our Terms of Use <a href="https://www.tailem.com/cms/terms-of-use">[link]</a>.</p>\n<p>\n	h. &nbsp; &nbsp; If we believe disclosure is necessary or appropriate to protect the rights, property, or safety of the Site, our customers or others.</p>\n<p>\n	&nbsp;</p>\n<p>\n	5.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Cookies</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	Cookies are data that a website transfers to an individual&#39;s hard drive for record-keeping purposes. The cookie will help our Site, or another website, to recognize your device the next time you visit. For example, cookies can help us to remember your username and preferences, analyse how well our website is performing, or even allow us to recommend content we believe will be most relevant to you.</p>\n<p>\n	&nbsp;</p>\n<p>\n	We may use cookies for the following reasons and purposes:</p>\n<p>\n	&nbsp;</p>\n<p>\n	a. &nbsp; &nbsp;&nbsp;<em>To provide the services you requested</em>. Some cookies are essential so you can navigate through the website and use its features. Without these cookies, we would not be able to provide the services you&rsquo;ve requested.</p>\n<p>\n	&nbsp;</p>\n<p>\n	b. &nbsp; &nbsp;&nbsp;<em>To improve your browsing experience</em>. These cookies allow the website to remember choices you make, such as your language or region and they provide improved features. These cookies will help remembering your preferences and settings, remembering if you&#39;ve filled in certain forms, so you&#39;re not asked to do it again, remembering if you&#39;ve been to the site before, etc. We might also use these cookies to highlight site services that we think will be of interest to you based on your usage of the website.</p>\n<p>\n	&nbsp;</p>\n<p>\n	c. &nbsp; &nbsp;&nbsp;<em>Analytics</em>. To improve your experience on our Site, we like to keep track of what pages and links are popular and which ones don&#39;t get used so much to help us keep our sites relevant and up to date. It&#39;s also very useful to be able to identify trends of how people navigate through our Site and if they get error messages from web pages. These cookies don&#39;t collect information that identifies you. Analytics cookies only record activity on the Site, and they are only used to improve how the Site works.</p>\n<p>\n	&nbsp;</p>\n<p>\n	Most browsers allow you to turn off cookies. To do this, look at the &ldquo;help&rdquo; menu on your browser. Switching off cookies may restrict your use of the website and/or delay or affect the way in which it operates.</p>\n<p>\n	&nbsp;</p>\n<p>\n	6.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Children&rsquo;s privacy</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	We are committed to respecting the sensitive nature of children&#39;s privacy online. Children under 13 years of age are not allowed to visit our site. We do not knowingly collect personally identifiable information from anyone under the age of 13 and our service is not directed&nbsp;to&nbsp;children. If we learn or have reason to suspect that a Site user is under the age of 13, we will delete any personal information in that user&#39;s account or use that information only to respond directly to that child (or a parent or legal guardian) to inform him or her that he or she cannot use our Site.</p>\n<p>\n	&nbsp;</p>\n<p>\n	7.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Data security</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	Personal information you provide to us is stored on a password protected server accessible only by administrator. We use SSL and adhere to generally accepted industry standards to protect the personal information submitted to us, both during transmission and once we receive it. However, we cannot guarantee the security of your personal information transmitted to our Site because any transmission of information over the Internet has its inherent risks. Any transmission of personal information is at your own risk. We are not responsible for circumvention of any privacy settings or security measures contained on the Site. You are responsible for keeping your login credentials, if any, confidential.</p>\n<p>\n	&nbsp;</p>\n<p>\n	8.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Accessing and correcting your personal information</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	Please send us an e-mail to info@tailem.com to request access to, correct or delete any personal information that you have provided to us or to ask questions about this Privacy Policy. We reserve the right to refuse a request if we believe it would violate any law or cause the information to be incorrect.</p>\n<p>\n	&nbsp;</p>', 'Privacy Policy', 1),
(3, 'Terms of Use', 'terms-of-use', '<p>\n	&nbsp;</p>\n<p>\n	<em>Last Modified: 1 January 2017</em></p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong>1.&nbsp;&nbsp;&nbsp;&nbsp; <u>Your Acceptance</u></strong></p>\n<p style="margin-left:18.0pt;">\n	&nbsp;</p>\n<p>\n	These Terms of Use (the &ldquo;Terms&rdquo;) constitute a legally binding agreement that governs your visits to Tailem.com (the &ldquo;Site,&rdquo; &ldquo;We,&rdquo; &ldquo;Us,&rdquo; or &ldquo;Our&rdquo;). By visiting the Site, you indicate your acceptance of these Terms, as well as the Privacy Policy available at the Site. If you disagree with any provision of the aforementioned documents, you may not visit the Site.</p>\n<p>\n	&nbsp;</p>\n<p>\n	2.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Disclaimers</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	Our site is a neutral platform allows users to discuss, rate and review music.&nbsp; We are not a party to any reviews, transactions and interactions of the site users. Therefore, we disclaim all liability arising out of or related to user content, transactions, conduct and arrangements. We are not liable for any fake reviews, intellectual property rights infringement or defamation committed using our site. Our online venue is provided to be used at your own risk, with no warranties of any kind.</p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong>3.&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong><u>Affiliate Disclosure</u></strong></p>\n<p>\n	&nbsp;</p>\n<p>\n	The Site uses affiliate programs for monetization. So, when you click on links to some external websites, a commission may be credited to the Site.&nbsp; External websites which you are transferred to are not controlled by us and we are not responsible for the quality or their products, services or the information contained on those websites. The provision of a link on our Site does not constitute an endorsement or approval of any external website or any information or products or services on that website. The Site makes no representation or warranty regarding the content of these websites, and no responsibility is taken for the consequences of viewing and relying on that content.</p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong>4.&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong><u>Intellectual Property</u></strong></p>\n<p>\n	&nbsp;</p>\n<p>\n	a.&nbsp;&nbsp;&nbsp;&nbsp; <em>IP Ownership</em>. We own all intellectual property rights to the Site. Site features, look and feel, design, registered and unregistered trademarks are protected by Australian and international copyright, trademark, trade secret, and other intellectual property or proprietary rights laws.</p>\n<p>\n	&nbsp;</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; <em>User Content</em>. All user reviews and other submitted content remain responsibility of the originator of the content. By submitting any content to the Site you hereby grant us a nonexclusive worldwide license to reproduce, use, display, perform, distribute, and create derivative works based upon your content for the purposes of developing and promoting the Site in any reasonable manner we deem appropriate.</p>\n<p>\n	&nbsp;</p>\n<p>\n	c.&nbsp;&nbsp;&nbsp;&nbsp; <em>Takedown Requests</em>. We respect the intellectual property rights of others and require our users to do the same. All claims of copyright infringement committed using our Site will be investigated if reported to our designated Copyright Agent via email: <a href="mailto:_____________@Tailem.com">info@tailem.com</a>. If we believe that any posted material violates any applicable law, we will remove or disable access to any such material and/or terminate or suspend the offending user&rsquo;s account.</p>\n<p>\n	&nbsp;</p>\n<p>\n	d.&nbsp;&nbsp;&nbsp;&nbsp; <em>Indemnification</em>. You agree to defend, indemnify and hold harmless the Site, its affiliates and licensors and their respective officers, directors, employees, contractors, agents, and licensors from and against any claims, liabilities, damages, judgments, awards, losses, costs, expenses or fees (including reasonable attorneys&#39; fees) resulting from your violation of these Terms of Use or your use of the Site, including, without limitation, any content submitted by you.</p>\n<p>\n	&nbsp;</p>\n<p>\n	5.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Your Obligations</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	By accessing the Site, you represent, warrant and agree that:</p>\n<p>\n	a.&nbsp;&nbsp;&nbsp;&nbsp; You are solely responsible for the reviews and all other content you submit to or through the Site. Your reviews will not contain false, misleading or defamatory information.</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; All your reviews will comply with our guidelines.</p>\n<p>\n	c.&nbsp;&nbsp;&nbsp;&nbsp; We may terminate any user account with or without notice using our sole reasonable discretion.</p>\n<p>\n	d.&nbsp;&nbsp;&nbsp;&nbsp; You will treat all your login credentials confidential. Do not disclose them to any third party. You should use particular caution when accessing your account from a public or shared computer so that others are not able to view or record your password or other personal information.</p>\n<p>\n	e.&nbsp;&nbsp;&nbsp;&nbsp; You will treat all Site users and administrators respectfully, online and offline.</p>\n<p>\n	f.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; We may withdraw or change our Site in any way we deem appropriate without prior notice to you. We are not be liable if for any reason all or any part of the Site is unavailable at any time or for any period to registered users or visitors.</p>\n<p>\n	g.&nbsp;&nbsp;&nbsp;&nbsp; We have the right to disable any user identification provided by our Site and disable your whole account on our Site at any time for any reason or no reason without notice or explanation.</p>\n<p>\n	&nbsp;</p>\n<p>\n	6.&nbsp;&nbsp; <u><strong>Prohibited Conduct</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	You must not:</p>\n<p>\n	a.&nbsp;&nbsp;&nbsp;&nbsp; Use the Site for any illegal purpose, upload, post, link to, copy or republish copyrighted material without permission from the rights holder.</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; Post or transmit to other users any defamatory, abusive, obscene, profane, offensive, threatening, harassing, racially offensive, or objectionable content. We reserve the right to judge what constitutes &ldquo;objectionable&rdquo; content.</p>\n<p>\n	c.&nbsp;&nbsp;&nbsp;&nbsp; Take any action that imposes, or may impose, in our sole discretion, an unreasonable or disproportionately large load on our infrastructure.</p>\n<p>\n	d.&nbsp;&nbsp;&nbsp;&nbsp; Deep-link to any portion of this Site for any purpose without our express written permission.</p>\n<p>\n	e.&nbsp;&nbsp;&nbsp;&nbsp; Impersonate any other person or entity.</p>\n<p>\n	f.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transmit, or procure the sending of, any advertising or promotional material and unsolicited mass communication without our prior written consent.</p>\n<p>\n	g.&nbsp;&nbsp;&nbsp;&nbsp; Access the Site to build a competing service.</p>\n<p>\n	h.&nbsp;&nbsp;&nbsp;&nbsp; Introduce any viruses or other harmful material, use any device, software or routine that interferes with the proper working of the Site.</p>\n<p>\n	i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Attempt to gain unauthorized access to, interfere with, damage or disrupt any parts of the Site, the server on which the Site is stored, or any server, computer or database connected to the Site.</p>\n<p>\n	j.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Otherwise attempt to interfere with the proper working of the Site or anyone&rsquo;s use and enjoyment of it.</p>\n<p>\n	&nbsp;</p>\n<p>\n	7.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Monitoring and Enforcement; Termination</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	We have the right to take any action that we deem necessary or appropriate if we believe that a user violates the Terms of Use, infringes any intellectual property right or other right, threatens the personal safety of users of the Site and the public. We may:</p>\n<p>\n	&nbsp;</p>\n<p>\n	a.&nbsp;&nbsp;&nbsp;&nbsp; Fully cooperate with any law enforcement authorities or court order requesting or directing us to disclose the identity of anyone posting any materials on or through the Site.</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; Disclose your identity to any third party who claims that material posted by you violates their rights, including their intellectual property rights or their right to privacy.</p>\n<p>\n	c.&nbsp;&nbsp;&nbsp;&nbsp; Terminate or suspend your access to all or part of the Site for any or no reason, including without limitation, any violation of these Terms of Use.</p>\n<p>\n	d.&nbsp;&nbsp;&nbsp;&nbsp; Block violator&rsquo;s IP address and/or notify his or her Internet Site Provider</p>\n<p>\n	e.&nbsp;&nbsp;&nbsp;&nbsp; Take appropriate legal action.</p>\n<p>\n	&nbsp;</p>\n<p>\n	8.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Disclaimer of Warranty</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	A.&nbsp;&nbsp;&nbsp;&nbsp; Your use of the site and its content is at your own risk. We do not warrant that the site will meet your expectations or requirements. We hereby disclaim all warranties of any kind, either express or implied, statutory or otherwise, including but not limited to any warranties of sellerability, non-infringement and fitness for particular purpose.</p>\n<p>\n	&nbsp;</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; We do not guarantee that the information provided on the Site is complete, accurate or up-to-date. You are responsible for implementing sufficient procedures to satisfy your particular requirements for the safety of your personal information, anti-virus protection and accuracy of data input and output. We will not be liable for any loss or damage caused by a distributed denial-of-service attack, viruses or other technologically harmful material that may infect your computer equipment, computer programs, data or other proprietary material due to your use of the site or any services or items obtained through the site or to your downloading of any material posted on it, or on any service linked to it.</p>\n<p>\n	&nbsp;</p>\n<p>\n	9.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Limitation of Liability</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	In no event will we, our employees, agents, officers or directors be liable for damages of any kind, under any legal theory, arising out of or in connection with your use, or inability to use, the site, any sites linked to it, any content, including any direct, indirect, special, incidental, consequential or punitive damages, including but not limited to, personal injury, pain and suffering, emotional distress, loss of revenue, loss of profits, loss of business or anticipated savings, loss of use, loss of goodwill, loss of data, and whether caused by tort (including negligence), breach of contract or otherwise, even if foreseeable. In no event will our maximum liability exceed one hundred australian dollars (aud&nbsp; $100). No claim, suit or action may be brought against us after six months from the underlying cause of action.</p>\n<p>\n	&nbsp;</p>\n<p>\n	10.&nbsp; <u><strong>Linking to the Site</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	a.&nbsp;&nbsp;&nbsp;&nbsp; You may link to our Site in a way that is legal, fair and does not damage our reputation or take advantage of it, but you must not establish a link in such a way as to suggest any form of association, approval or endorsement on our part where none exists.</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; You must not establish a link from any website that is not owned by you.</p>\n<p>\n	c.&nbsp;&nbsp;&nbsp;&nbsp; You cannot frame our Site on any other site.</p>\n<p>\n	d.&nbsp;&nbsp;&nbsp;&nbsp; You agree to cooperate with us in causing any unauthorized framing or linking immediately to cease. We reserve the right to withdraw linking permission without notice.</p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong>11.&nbsp; </strong><strong><u>Disputes Between Users</u></strong></p>\n<p>\n	&nbsp;</p>\n<p>\n	As a neutral venue, we do not offer mediation, arbitration or any other forms of dispute resolution and do not actively monitor user interactions. Therefore, you are solely responsible for your interactions and disputes with other users. We reserve the right, but have no obligation, to facilitate and resolve disputes between Site users.</p>\n<p>\n	&nbsp;</p>\n<p>\n	12.&nbsp; <u><strong>Assignment</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	You may not assign your rights and obligations under these Terms of Use without our prior written consent. We may transfer, assign or subcontract the rights, interests or obligations under the Terms of Use, at our sole discretion, without obtaining your consent.</p>\n<p>\n	&nbsp;</p>\n<p>\n	13.&nbsp; <u><strong>Severability and Non-Waiver</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	a.&nbsp;&nbsp;&nbsp;&nbsp; Should any part of these Terms of Use be rendered or declared invalid by an appropriate authority, such invalidation of such part or portion of these Terms of Use should not invalidate the remaining portions thereof, and they shall remain in full force and effect.</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; Enforcement of these Terms of Use is solely in our discretion, and failure to enforce the Terms of Use in some instances does not constitute a waiver of our right to enforce them in other instances.</p>\n<p>\n	&nbsp;</p>\n<p>\n	14.&nbsp; <u><strong>Governing Law and Jurisdiction</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	These Terms of Use shall be governed by the laws of the State of Victoria, Australia. You agree that any dispute or legal proceeding in relation to this Site shall be brought exclusively in the courts of the State of Victoria.</p>\n<p>\n	&nbsp;</p>\n<p>\n	15.&nbsp; <u><strong>Changes to the Terms of Use</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	We update these Terms of Use every once in a while as we deem appropriate, without notifying you. We then post the changes on this page. Please check this page from time to time to take notice of any changes we made, as they are binding on you. Your continued use of the Site following the posting of revised Terms of Use constitutes your acceptance of the changes.</p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong>16.&nbsp; </strong><strong><u>Contact</u></strong></p>\n<p>\n	&nbsp;</p>\n<p>\n	All feedback, comments, requests for technical support and other communications relating to the Site should be directed to our customer service representative at info@tailem.com&nbsp;</p>', 'Terms of Use', 1),
(4, 'Welcome', 'welcome', '<p>\n	Thank you for registering with Tailem.com. You can now log in using your email and password.</p>\n<br />\n<p>\n	Kind Regards,<br />\n	Team at Tailem.com</p>', 'Welcome', 1),
(6, 'General Disclaimer', 'general-disclaimer', '<p>\n	Our Site is a neutral platform that allows users to discuss, rate and review various songs.&nbsp; We are not a party to any reviews, transactions and interactions of the site users. Therefore, we disclaim all liability arising out of or related to user content, transactions, conduct and arrangements. We are not liable for any fake reviews, intellectual property rights infringement or defamation committed using our site. our online venue is provided to be used at your own risk, with no warranties of any kind.</p>', 'General Disclaimer', 1),
(7, 'Contact Us help', 'contact-us-help', '<p>\n	Your concerns and feedback is incredibly important to us. If you have any questions or feedback please feel free to use this form to contact us. You can also reach us via email or find us on social media.</p>', 'Contact Us help', 1),
(8, 'Posting Guildelines', 'posting-guildelines', '<div bitstream="" class="knowledge-page-header" style="box-sizing: border-box; padding: 0px 0px 20px;" vera="">\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		<span style="color: rgb(68, 68, 68);">We love hearing about your opinions to the songs that you wish to review and value your contributions to our site! We also want to make sure that Tailem.com is a safe and friendly community for all of our valued members. To help us with this goal, please ensure your reviews are:&nbsp;</span></p>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		&nbsp;</p>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		<span style="font-weight: 700; color: rgb(68, 68, 68);">Family Friendly</span></p>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		&nbsp;</p>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		<span style="color: rgb(68, 68, 68);">To maintain a safe and family friendly environment, Tailem.com values diverse opinions. We do not allow profanity, obscenities or vulgarities in reviews. We also block reviews that include sexually explicit comments, hate speech, prejudiced language, threats or personal insults, inflammatory or discrimination. Please also do not post content that invades other user&#39;s privacy. We want to hear your opinions so please keep it suitable for all ages!&nbsp;</span></p>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		&nbsp;</p>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		&nbsp;</p>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		<span style="font-weight: 700; color: rgb(68, 68, 68);">Easy to Read</span></p>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		&nbsp;</p>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		<span style="color: rgb(68, 68, 68);">Help other music lovers get the most out of your review by using the correct alphabet for your language. Please do not use HTML tags, excessive ALL CAPS or making your reviews hard to read for others.</span></p>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		&nbsp;</p>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		&nbsp;</p>\n	<div style="color: rgb(68, 68, 68);">\n		<em>Tailem.com reserves the right to remove a review for any reason. The reviews posted on Tailem.com are individual and highly subjective opinions. The opinions expressed in reviews are those of Tailem.com members and are not of Tailem.com. We do not endorse any of the opinions expressed by reviewers.</em></div>\n	<div style="color: rgb(68, 68, 68);">\n		&nbsp;</div>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		&nbsp;</p>\n	<div style="color: rgb(68, 68, 68);">\n		<em>In accordance with our Privacy Policy, Tailem.com does not release anyone&#39;s personal contact information.</em></div>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		&nbsp;</p>\n	<p style="color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;">\n		&nbsp;</p>\n	<p style="box-sizing: border-box; font-size: 14px; margin: 0px;">\n		&nbsp;</p>\n</div>\n<div bitstream="" class="article-column" style="box-sizing: border-box; width: 600px; float: left; color: rgb(68, 68, 68); font-family: Arial, Tahoma, " vera="">\n	<div class="article-body" style="box-sizing: border-box; line-height: 1.7; font-size: 14px; word-wrap: break-word;">\n		<div>\n			&nbsp;</div>\n		<div>\n			&nbsp;</div>\n	</div>\n</div>', 'Posting Guildelines', 1),
(9, 'Welcome', 'welcome', '<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; letter-spacing: 0.5px; line-height: 1.5em; word-spacing: 0.5px; text-align: justify; font-size: 13px; color: rgb(68, 68, 68); font-family: Montserrat, sans-serif;">\n	&nbsp;</p>\n<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; letter-spacing: 0.5px; line-height: 1.5em; word-spacing: 0.5px; text-align: justify; font-size: 13px; color: rgb(68, 68, 68); font-family: Montserrat, sans-serif;">\n	Thank you&nbsp;<a style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(230, 0, 0); background: 0px 0px;">{USERNAME}&nbsp;</a>for becoming a member of Tailem.com. We provide a platform where you can rate, review and share your thoughts on all of your favorite songs.&nbsp;</p>\n<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; letter-spacing: 0.5px; line-height: 1.5em; word-spacing: 0.5px; text-align: justify; font-size: 13px; color: rgb(68, 68, 68); font-family: Montserrat, sans-serif; width: 100%;">\n	&nbsp;</p>\n<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; letter-spacing: 0.5px; line-height: 1.5em; word-spacing: 0.5px; text-align: justify; font-size: 13px; color: rgb(68, 68, 68); font-family: Montserrat, sans-serif;">\n	We believe your opinions are incredibly important to our site and we value each and every contribution made by our users. Please use this <a href="https://www.tailem.com/contact-us"><span style="color:#ff0000;">link</span></a><a href="https://www.tailem.com/contact-us" style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(230, 0, 0); text-decoration: none; background: 0px 0px;"> </a>to voice your feedback and concerns.</p>', 'Welcome', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`page_id`,`page_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `page_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
