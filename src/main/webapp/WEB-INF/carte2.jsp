<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div id="fullCarte">


	<ul class="mainItems small-block-grid-3">
		<c:forEach var="carte" items="${fullCarte }">
			<!--  Key = ${entry.key}, value = ${entry.value}<br>  -->
			<li class="paneMenu" id="paneMenu${carte.key }">
				<div class="itemThumbnail">
					<img alt="${carte.key}" title="${carte.key}"
						src="img/${fn:toLowerCase(carte.key)}.jpg">
					<div class="description"></div>
				</div>

				<div id="subpaneMenu${carte.key }" class="subPane round-focused">
					<div class="back-head">
						<span class="flaticon-back57 back"></span>
					</div>
					<ul
						class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
						<c:forEach var="item" items="${carte.value}">
							<li class="paneCarte" data-carteItem="${idItemCarte}">
								<div class="itemThumbnail">
									<img src="img/${fn:toLowerCase(carte.key)}.jpg" alt="${carte.key }"></img> <span
										class="hide"><i class="flaticon-shopping40"></i></span>
								</div>
								<div class="description hide">
									<ul class="no-bullet">
										<li><h4>${item.nom}
												<span class="prix"> <fmt:formatNumber type="currency"
														currencySymbol="&euro;" value="${item.prix}" />
												</span>
											</h4></li>
										<li><p>${item.description}</p></li>
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
			</li>

		</c:forEach>
	</ul>



</div>