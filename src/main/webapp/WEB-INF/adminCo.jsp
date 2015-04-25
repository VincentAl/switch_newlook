<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Switch - Administration</title>
	<meta name="description" content="page de connexion admin">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="apple-touch-icon" href="apple-touch-icon.png">
	<!-- Place favicon.ico in the root directory -->

	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/foundation.min.css">
	<link rel="stylesheet" href="css/admin.css">
</head>
<body>

	<div class="row small-collapse">
		<div class="columns small-10 small-offset-1 medium-8 medium-offset-2 large-6 large-offset-3">
			<div class="panel admin-co">
				<h3 class="text-center">Connexion</h3>
				<hr/>
				<form action="admin" method="post" id="amdin-co">
					<label>Nom d'utilisateur
						<input name="admin-co-pseudo" type="text" placeholder="pseudo" />
					</label>

					<label>Mot de passe 
						<input name="admin-co-pwd" type="password" placeholder="password" />
					</label>
					<c:if test="${error }">
						<small class="error">Couple login / mot de passe incorrect !</small>
					</c:if>
					<div class="text-center">
						<input type="submit" class="button small" value="Connexion"/>
					</div>
					</form>
				
			</div>
		</div>
	</div>
</body>
</html>