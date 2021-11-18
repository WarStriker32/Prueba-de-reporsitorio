<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <jsp:include page="./partials/head.jsp" />
    <title>Proyecto LP2</title>
</head>
<body>
    <jsp:include page="./partials/loader.html" />
    <jsp:include page="./partials/nav.jsp" />
    <main>
        <h1 class="text-center mt-4 h2">Sistema de Elaboración de Planilla de Pagos</h1>
        <c:choose>
	        <c:when test="${ empty user }">
		        <!-- No user -->
	        </c:when>
	        <c:otherwise>
		        <div class="d-flex justify-content-center mt-4">
	        		<h5>Bienvenido, ${ user }</h5>
	        	</div>
	        </c:otherwise>
        </c:choose>
    </main>
</body>
<jsp:include page="./partials/messages.jsp" />
<jsp:include page="./partials/scripts.jsp" />
<script src="./dist/js/loader.js"></script>
</html>