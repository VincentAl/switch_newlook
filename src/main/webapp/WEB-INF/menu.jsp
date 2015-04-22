<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div class="menu">
	<div class="listeMenu">
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-2">
			<c:forEach var="menu" items="${listeDesMenus}">
				<li class="panel menu+${menu.idItemCarte}"><a href="/"> <span><img
							src="${menu.img}" alt="image du menu" /></span> <span
						class="flaticon-shopping40"></span>
				</a>
					<div class="detailMenu+${menu.idItemCarte}">
						<ul class="no-bullet">
							<li><span><h3>${menu.nom}</h3></span> <span> soit
									${menu.prix} €</span></li>
							<li>${menu.description}</li>
						</ul>

					</div></li>
			</c:forEach>
		</ul>
	</div>
</div>