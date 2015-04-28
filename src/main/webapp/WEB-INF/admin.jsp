<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
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
	<link rel="stylesheet" href="css/admin.css">
	<link rel="stylesheet" type="text/css" href="flaticon/flaticon.css">
	<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>

	<div class="row admin-main small-collapse">
		<div class="column small-12">

			<!-- row titre -->
			<div class="row small-collapse admin-title">
				<div class="columns small-12">
					<h4>Pizzas</h4>
				</div>
			</div>

			<div class="row admin-items">
				<div class="columns small-2 admin-icon">
					<i class="flaticon-pencils6"></i>
				</div>
				<div class="columns small-10 admin-name">
					<span>chorizo</span>
				</div>
				<div class="columns small-12 admin-form">
					<form class="amdin-modif" action="">
						
						<!-- row : nom, prix, dispo -->
						<div class="row">

							<div class="large-4 columns">

								<div class="row collapse prefix-radius">
									<div class="small-2 columns">
										<span class="prefix">Nom</span>
									</div>
									<div class="small-10 columns">
										<input type="text" placeholder="Modifier le nom">
									</div>
								</div>
							</div>
							
							<div class="large-4 columns">
								<div class="row collapse prefix-radius">
									<div class="small-2 columns">
										<span class="prefix">Prix</span>
									</div>
									<div class="small-10 columns">
										<input type="text" placeholder="Modifier le prix">
									</div>
								</div>
							</div>
							
							<div class="large-4 columns">
								<div class="row collapse">
									<div class="small-3 columns">
										<div class="switch radius">
											<label for="admin-dispo-X">Disponible
												<input id="admin-dispo-X" type="checkbox">
											</label>
										</div>
									</div>
									<div class="small-9 columns">
										<span class="">Disponible</span>
									</div>
								</div>
							</div>
						</div>

						<!-- row : image -->
						<div class="row">
								
							<div class="columns small-12 medium-6">
								<div class="row collapse prefix-radius">
									<div class="small-2 columns">
										<span class="prefix">Image</span>
									</div>
									<div class="small-10 columns">
										<input type="text" placeholder="Enter un nom pour la nouvelle image">
									</div>
								</div>
							</div>

							<div class="columns small-12 medium-6">
								<input type="file" placeholder="Nouvelle image">	
							</div>
							
						</div>

						<!-- row :description -->
						<div class="row">
								
							<div class="column small-12">
								<label>Description
									<textarea class="error" placeholder="Modifier la description"></textarea>
								</label>
							</div>

						</div>


					</form>
				</div>
			</div>

			<div class="row admin-items">
				<div class="columns small-2 admin-icon">
					<i class="flaticon-pencils6"></i>
				</div>
				<div class="columns small-10 admin-name">
					<span>chorizo</span>
				</div>
				<div class="columns small-12 admin-form hide">
					<form class="amdin-modif" action="">
						<div class="row">
							<div class="large-6 columns">
								<div class="row collapse prefix-radius">
									<div class="small-3 columns">
										<span class="prefix">nom</span>
									</div>
									<div class="small-9 columns">
										<input type="text" placeholder="Entrez un nouveau nom">
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>

			<div class="row admin-items">
				<div class="columns small-2 admin-icon">
					<i class="flaticon-pencils6"></i>
				</div>
				<div class="columns small-10 admin-name">
					<span>chorizo</span>
				</div>
				<div class="columns small-12 admin-form hide">
					<form class="amdin-modif" action="">
						<div class="row">
							<div class="large-6 columns">
								<div class="row collapse prefix-radius">
									<div class="small-3 columns">
										<span class="prefix">nom</span>
									</div>
									<div class="small-9 columns">
										<input type="text" placeholder="Entrez un nouveau nom">
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			
			<!-- colomn-12 exterieur -->
			</div>
		</div>
	
	<script type="text/javascript" src="js/vendor/jquery.js"></script>
	<script type="text/javascript" src="js/foundation.min.js"></script>
	<script type="text/javascript" src="js/admin.js"></script>
</body>
</html>