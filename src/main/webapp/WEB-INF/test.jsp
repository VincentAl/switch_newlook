<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<ul>
	<c:forEach var="boisson" items="${boissons}">
		<li>
		<h4>${boisson.nom} <span style="color: red;">${boisson.prix }€</span></h4>
		</li>
	</c:forEach>
</ul>