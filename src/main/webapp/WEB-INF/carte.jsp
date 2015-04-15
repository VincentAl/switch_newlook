<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div class="grilleCarte">
	<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-2">
		<c:forEach var="itemPrincipal" items="${listeDesItems}">
			<li class="panel"><a href="/"> <img
					alt="${itemPrincipal.img}" src="img/sandwichs.jpg">
			</a></li>
		</c:forEach>
	</ul>

</div>

<div class="grilleArticle">
	<div class="grilleSandwichs">
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
			<c:forEach var="sandwich" items="${listeDesSandwiches}">
				<li class="panel panCarte" data-carteItem="${idItemCarte}">
					<div class="description">
						<ul class="no-bullet">
							<li><span><img src="${sandwich.img}"
								alt="une image du sandwich"></img></span><span class="hide"><i class="flaticon-shopping40"></i></span></li>
							<li class="hide"><span><h3>${sandwich.nom}</h3></span> <span>
									soit ${sandwich.prix} €</span></li>
							<li class="hide">${sandwich.description}</li>
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
	<div class="grillePizzas">
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
			<c:forEach var="pizza " items="${listeDesPizzas}">
				<li class="panel panCarte" data-carteItem="${idItemCarte}">
					<div class="description">
						<ul class="no-bullet">
							<li><span><img src="${pizza.img}" alt="une image du sandwich"></img></span><span class="hide"><i class="flaticon-shopping40"></i></span></li>
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
	<div class="grilleSalades">
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
			<c:forEach var="salade" items="${listeDesSalades}">
				<li class="panel panCarte" data-carteItem="${idItemCarte}">
					<div class="description">
						<ul class="no-bullet">
							<li><img src="${salade.img}" alt="une image du sandwich"></img><span class="hide"><i class="flaticon-shopping40"></i></span></li>
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
	<div class="grillePaninis">
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
			<c:forEach var="panini" items="${listeDesPaninis}">
				<li class="panel panCarte" data-carteItem="${idItemCarte}">
					<div class="description">
						<ul class="no-bullet">
							<li><img src="${panini.img}" alt="une image du sandwich"></img><span class="hide"><i class="flaticon-shopping40"></i></span></li>
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
	<div class="grilleBoissons">
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
			<c:forEach var="boisson" items="${listeDesBoissons}">
				<li class="panel panCarte" data-carteItem="${idItemCarte}">
					<div class="description">
						<ul class="no-bullet">
							<li><img src="${boisson.img}" alt="une image du sandwich"></img><span class="hide"><i class="flaticon-shopping40"></i></span></li>
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
	<div class="grilleDesserts">
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
			<c:forEach var="dessert" items="${listeDesDesserts}">
				<li class="panel panCarte" data-carteItem="${idItemCarte}">
					<div class="description">
						<ul class="no-bullet">
							<li><img src="${dessert.img}" alt="une image du sandwich"></img><span class="hide"><i class="flaticon-shopping40"></i></span></li>
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
