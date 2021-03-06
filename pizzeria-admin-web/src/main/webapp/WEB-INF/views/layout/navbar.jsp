
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Static navbar -->
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button"
              class="navbar-toggle collapsed"
              data-toggle="collapse"
              data-target="#navbar"
              aria-expanded="false"
              aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span> <span
          class="icon-bar"></span> <span class="icon-bar"></span> <span
          class="icon-bar"></span>
      </button>
      <a class="navbar-brand"
         href=<c:url value='/.'/>>Pizzeria Administration</a>
    </div>
	<c:if test="${sessionScope.utilisateur != null}">
	    <div id="navbar"
	         class="navbar-collapse collapse">
	      <ul class="nav navbar-nav">
	        <li><a href="<c:url value='/utilisateurs/liste'/>">Utilisateurs</a></li>
	        <li><a href=<c:url value='/pizzas/liste'/>>Pizzas</a></li>
	        <li><a href=<c:url value='/ouiches/liste'/>>Ouiches</a></li>
	        <!-- <li><a href="#">Menus</a></li> -->
	        <li><a href=<c:url value='/desserts/liste'/>>Desserts</a></li>
	        <li><a href=<c:url value='/commandesNonLivrees/liste'/>>Commandes</a></li>
	        <li><a href=<c:url value='/boissons/liste'/>>Boissons</a></li>
	        <li><a href=<c:url value='/clients/liste'/>>Clients</a></li>
	        <li><a href=<c:url value='/livreurs/liste'/>>Livreurs</a></li>
	        <li><a href=<c:url value='/ingredients/liste'/>>Ingrédients</a></li>
	        <li><a href=<c:url value='/technique'/>>Statistiques</a></li>
	        <!-- <li><a href="#">Promotions</a></li> -->
	      </ul>
	
	      <!--/.nav-collapse -->
	    </div>
    </c:if>
    <!--/.container-fluid -->
  </div>
</nav>
