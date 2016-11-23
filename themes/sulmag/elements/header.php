<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<!DOCTYPE html>
<html lang="<?php echo LANGUAGE?>" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<?php  
			Loader::element('header_required');
			$URL = "http://cb-web.dyndns.org/sulmag/";
		?>
		<!-- Site Header Content //-->
		<link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" media="screen" type="text/css" href="<?php echo $this->getStyleSheet('typography.css')?>" />
		<link rel="stylesheet" media="screen" type="text/css" href="<?php echo $this->getStyleSheet('main.css') ?>" />
  	<script type="text/javascript" src="<?php echo $this->getThemePath(); ?>/scripts/tools.js"></script>
		<!--[if lt IE 9]>
		   <script>
		   		document.createElement('header');
		      document.createElement('nav');
		      document.createElement('section');
		      document.createElement('article');
		      document.createElement('aside');
		   </script>
		<![endif]-->
	</head>
<body>
	<header>
		<nav>
			<div>
				<a href="<?php echo $URL;?>index.php/ueberuns" title="&Uuml;BER UNS">
					<img src="<?php echo $this->getThemePath(); ?>/images/aboutus.png" />
					&Uuml;BER UNS
				</a>
			</div>
			<div>
				<a href="<?php echo $URL;?>index.php/produktion" title="PRODUKTION">
					<img src="<?php echo $this->getThemePath(); ?>/images/production.png" />
					PRODUKTION
				</a>
			</div>
			<div>
				<a href="<?php echo $URL;?>index.php/kontakt" title="KONTAKT"> 
					<img src="<?php echo $this->getThemePath(); ?>/images/contact.png" />
					KONTAKT
				</a>
			</div>
			<span class="clearfix">
		</nav>
		<aside id="logo">
			<a href="<?php echo $URL;?>" title="HOME">
				<img src="<?php echo $this->getThemePath(); ?>/images/logo.png" title="HOME" />
			</a>
		</aside>
		<span class="clearfix">
	</header>
	