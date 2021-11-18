<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="material-icons">menu</span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<a class="navbar-brand mt-2 mt-lg-0" href="${ pageContext.request.contextPath }">
				<img src="${ pageContext.request.contextPath }/img/icons/emilima_128.webp" height="25" alt="Logo" loading="lazy">
			</a>
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" role="button" data-mdb-toggle="dropdown" aria-expanded="false">Entidades</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li>
							<a class="dropdown-item" href="${ pageContext.request.contextPath }/pension">Pensión</a>
						</li>
						<li>
							<a class="dropdown-item" href="${ pageContext.request.contextPath }/position">Cargo</a>
						</li>
						<li>
							<a class="dropdown-item" href="${ pageContext.request.contextPath }/worker">Trabajador</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="d-flex align-items-center">
			<c:choose>
				<c:when test="${ empty sessionScope.user }">
					<a class="text-reset me-3" href="${ pageContext.request.contextPath }/views/entities/worker/login.jsp" data-mdb-toggle="tooltip" title="Iniciar sesión">
						<span class="material-icons">login</span>
					</a>
				</c:when>
				<c:otherwise>
					<div class="container">
						<strong class="d-none d-sm-block ms-1">${ sessionScope.user }</strong>
					</div>
					<a class="text-reset me-3" href="${ pageContext.request.contextPath }/logout" data-mdb-toggle="tooltip" title="Cerrar sesión">
						<span class="material-icons">logout</span>
					</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</nav>