<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Carte</title>
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
    
    <!-- ICI LE MENU PRINCIPAL -->
    
        <c:import url="navBar.jsp">
			<c:param name="pageSelectionnee" value="carte" />
		</c:import>

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
            
            <!-- LE PANE PRINCIPAL COMPORTANT TOUTES LES PAGES -->
            
            <div class="row" id="contentPane">
             <!-- PARTIE POUR LA CARTE -->
             	<div class="pane" id="pane1">
               		<c:import url="carte.jsp"></c:import>
                </div>			
                
                <!-- ICI LA PARTIE POUR LES MENUS -->
                
                 <div class="pane" id="pane2">
                	<c:import url="menu.jsp"></c:import>
                </div>
                
                <!-- ICI CA COMMANDE -->
                <div class="pane" id="pane3">
                	<c:import url="commander.jsp"></c:import>
                </div>
                
                <!-- ICI CA CONTACT -->
                <div class="pane" id="pane4">
                	<c:import url="contact.jsp"></c:import>
                </div>
                
                <!-- ICI POUR LE PLAN -->
                
                <div class="pane" id="pane5">
						<c:import url="plan.jsp"></c:import>
				</div>
					
					<!-- ICI POUR LES TERMES -->
					
					<div class="pane" id="pane6">
						<c:import url="termes.jsp"></c:import>
					</div>
            </div>
        </div>
    </div>

    <!--
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
	-->
    <script src="js/plugins.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/vendor/jquery.js" type="text/javascript"></script>
    <script src="js/app.js" type="text/javascript"></script>

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