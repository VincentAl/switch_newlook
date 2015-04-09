<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!doctype html>
<html class="no-js" lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title></title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="apple-touch-icon" href="apple-touch-icon.png">
		<!-- Place favicon.ico in the root directory -->

		<link rel="stylesheet" href="css/normalize.css">
		<link rel="stylesheet" href="css/foundation.min.css">
		<link rel="stylesheet" href="css/main.css">
		<link rel="stylesheet" href="css/app.css">
		<link rel="stylesheet" type="text/css" href="flaticon/flaticon.css"> 
		<script src="js/vendor/modernizr-2.8.3.min.js"></script>
	</head>
	<body>
		<!--[if lt IE 8]>
			<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
		<![endif]-->

		<!-- Add your site or application content here -->
		<div class="row backframe">
			<nav class="columns large-2 small-12 medium-3 aside">
				<div class="row small-collapse">
					<div class="menu-top small-12 columns">
						<div class="row">
							<div class="logo small-6 medium-12 columns" id="logo">
								<a href="/">
									<img alt="logo Switch" src="img/logoSwitch.png">
								</a>
							</div>
							<ul class="side-nav menu small-6 medium-12 columns" id="menu-1">
								<li><a id="1"href="#">La carte</a></li>
								<li><a id="2"href="#">Les menus</a></li>
								<li><a id="3"href="#">Commander</i></a></li>
								<li><a id="4"href="contact.html">Contact</a></li>
							</ul>
						</div>
					</div>
					
					<div class="menu-bottom small-12 columns">
						<ul class="side-nav menu" id="menu-2">
							<li><a href="plan.html">Plan d'accès</a></li>
							<li><a href="termes.html">Termes et conditions</a></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="columns large-10 small-12">
				<div class="row">
					<div class="columns large-12" id="orderbar">
						<div class="dot-frame orderbar-hide">
							<div class="dot"></div>
							<div class="dot-fixed"></div>
							<div class="tube"></div>
						</div>
						<div id="ordericon">
							
						</div>
					</div>
				</div>
				<div class="row" id="contentPane">
					<div class="pane"><!-- Première balise pierro-->
						<div class="columns large-8">
							<img src="img/pane1.jpg" alt="oldPane" width="500px" height="200px"/>
							<a href="#" id="slideMe" class="small radius button">Slide Me</a>
						</div>
					</div><!-- fin du .pane -->
				</div>
			</div>
		</div>

	<!--
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
	-->
		<script src="js/plugins.js"></script>
		<script src="js/main.js"></script>
		<script src="js/jquery.js"></script>
		<script src="js/app.js"></script>

		<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
	<!--    
		<script>
			(function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
			function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
			e=o.createElement(i);r=o.getElementsByTagName(i)[0];
			e.src='//www.google-analytics.com/analytics.js';
			r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
			ga('create','UA-XXXXX-X','auto');ga('send','pageview');
		</script>
	-->
	</body>
</html>
