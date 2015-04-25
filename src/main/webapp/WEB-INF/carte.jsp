<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div id="grilleMenu">
	<ul class="small-block-grid-3">
		<c:forEach var="itemPrincipal" items="${listeDesItems}">
			<li class="paneMenu" id="paneMenu${itemPrincipal }">
				<div class="itemThumbnail"> 
					<img alt="Une image d'un ${itemPrincipal}" title="${itemPrincipal}" src="img/sandwichs.jpg">
				</div>
				<div class="description">
					
				</div>
			</li>
		</c:forEach>
	</ul>

</div>

<div id="grilleArticle">
	<div id="subpaneMenuSandwiches" class="subPane round-focused">
		<div class="back-head">
			<span class="flaticon-back57 back"></span>
		</div>
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
			<c:forEach var="sandwich" items="${listeDesSandwiches}">
				<li class="paneCarte" data-carteItem="${idItemCarte}">
					<div class="itemThumbnail">
						<img src="img/sandwichs.jpg" alt="une image du sandwich"></img>
						<span class="hide"><i class="flaticon-shopping40"></i></span>
					</div>
					<div class="description hide">
						<ul class="no-bullet">
							<li><h4>${sandwich.nom}<span class="prix"><fmt:formatNumber type="currency" currencySymbol="&euro;" value="${sandwich.prix}"/></span></h4></li>
							<li><p>${sandwich.description}</p></li>
						</ul>
						<span class="flaticon-star47"></span> <span
							class="flaticon-star47"></span> <span class="flaticon-star47"></span>
						<span class="flaticon-star47"></span> <span
							class="flaticon-star47"></span>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
	<div id="subpaneMenuPizzas" class="subPane round-focused">
		<div class="back-head">
			<span class="flaticon-back57 back"></span>
		</div>
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
			<c:forEach var="pizza " items="${listeDesPizzas}">
				<li class="panel paneCarte" data-carteItem="${idItemCarte}">
					<div class="description">
						<ul class="no-bullet">
							<li><span><img src="img/pizza.jpg" alt="une image de pizza"></img></span><span class="hide"><i class="flaticon-shopping40"></i></span></li>
							<li class="hide"><span><h3>${pizza.nom}</h3></span> <span> soit
									${pizza.prix} €</span></li>
							<li class="hide">${pizza.description}</li>
						</ul>
						<span class="flaticon-star47"></span> <span
							class="flaticon-star47"></span> <span class="flaticon-star47"></span>
						<span class="flaticon-star47"></span> <span
							class="flaticon-star47"></span>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
	<div id="subpaneMenuSalades" class="subPane round-focused">
		<div class="back-head">
			<span class="flaticon-back57 back"></span>
		</div>
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
			<c:forEach var="salade" items="${listeDesSalades}">
				<li class="panel paneCarte" data-carteItem="${idItemCarte}">
					<div class="description">
						<ul class="no-bullet">
							<li><img src="img/salades.jpg" alt="une image de salade"></img><span class="hide"><i class="flaticon-shopping40"></i></span></li>
							<li class="hide"><span><h3>${salade.nom}</h3></span> <span> soit
									${salade.prix} €</span></li>
							<li class="hide">${salade.description}</li>
						</ul>
						<span class="flaticon-star47"></span> <span
							class="flaticon-star47"></span> <span class="flaticon-star47"></span>
						<span class="flaticon-star47"></span> <span
							class="flaticon-star47"></span>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
	<div id="subpaneMenuPaninis" class="subPane round-focused">
		<div class="back-head">
			<span class="flaticon-back57 back"></span>
		</div>
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
			<c:forEach var="panini" items="${listeDesPaninis}">
				<li class="panel paneCarte" data-carteItem="${idItemCarte}">
					<div class="description">
						<ul class="no-bullet">
							<li><img src="img/panini.jpg" alt="une image de panini"></img><span class="hide"><i class="flaticon-shopping40"></i></span></li>
							<li class="hide"><span><h3>${panini.nom}</h3></span> <span> soit
									${panini.prix} €</span></li>
							<li class="hide">${panini.description}</li>
						</ul>
						<span class="flaticon-star47"></span> <span
							class="flaticon-star47"></span> <span class="flaticon-star47"></span>
						<span class="flaticon-star47"></span> <span
							class="flaticon-star47"></span>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
	<div id="subpaneMenuBoissons" class="subPane round-focused">
		<div class="back-head">
			<span class="flaticon-back57 back"></span>
		</div>
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
			<c:forEach var="boisson" items="${listeDesBoissons}">
				<li class="panel paneCarte" data-carteItem="${idItemCarte}">
					<div class="description">
						<ul class="no-bullet">
							<li><img src="img/boissons.jpg" alt="une image de boisson"></img><span class="hide"><i class="flaticon-shopping40"></i></span></li>
							<li class="hide"><span><h3>${boisson.nom}</h3></span> <span> soit
									${boisson.prix} €</span></li>
							<li class="hide">${boisson.description}</li>
						</ul>
						<span class="flaticon-star47"></span> <span
							class="flaticon-star47"></span> <span class="flaticon-star47"></span>
						<span class="flaticon-star47"></span> <span
							class="flaticon-star47"></span>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
	<div id="subpaneMenuDesserts" class="subPane round-focused">
		<div class="back-head">
			<span class="flaticon-back57 back"></span>
		</div>
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
			<c:forEach var="dessert" items="${listeDesDesserts}">
				<li class="panel paneCarte" data-carteItem="${idItemCarte}">
					<div class="description">
						<ul class="no-bullet">
							<li><img src="img/raw-dessert.jpg" alt="une image de dessert"></img><span class="hide"><i class="flaticon-shopping40"></i></span></li>
							<li class="hide"><span><h3>${dessert.nom}</h3></span> <span> soit
									${dessert.prix} €</span></li>
							<li class="hide">${dessert.description}</li>
						</ul>
						<span class="flaticon-star47"></span> <span
							class="flaticon-star47"></span> <span class="flaticon-star47"></span>
						<span class="flaticon-star47"></span> <span
							class="flaticon-star47"></span>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>

</div>
