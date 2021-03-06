<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/layout/entete.jsp">
	<jsp:param name="title" value="Accueil" />
</jsp:include>

<jsp:include page="/WEB-INF/views/layout/navbar.jsp" />
<div class="container">
	<!-- Main component for a primary marketing message or call to action -->
	<div class="row">
		<div class="col-md-9">
			<div class="jumbotron">
				<div class="container">
					<h1>Pizzeria Administration</h1>
					<p>Site web pour administrer la pizzeria</p>
					<c:if test="${sessionScope.utilisateur == null}">
						<p>
							<a class="btn btn-lg btn-primary" href="./login" role="button">S'identifier
								&raquo;</a>
						</p>
					</c:if>
				</div>
			</div>

		</div>
		<!-- /container -->

		<jsp:include page="WEB-INF/views/layout/footer.jsp" />