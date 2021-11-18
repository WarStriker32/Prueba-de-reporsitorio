<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<jsp:include page="../partials/head.jsp" />
	<title>Error 404 - Proyecto LP2</title>
</head>
<body>
	<main class="container">
		<div class="row h-100">
			<h1 class="text-center">Error 404</h1>
			<p class="text-center">Página no encontrada</p>
			<a class="text-center" href="${ pageContext.request.contextPath }">Ir al índice</a>
		</div>
	</main>
</body>
</html>