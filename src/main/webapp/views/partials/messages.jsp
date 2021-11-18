<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<c:if test="${ requestScope.INFO != null }">
    <div class="container">
        <div class="alert alert-info alert-dismissible fade show d-flex align-items-center" role="alert">
            <span class="material-icons p-2">info</span>
            <div>${ requestScope.INFO }</div>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" data-mdb-toggle="tooltip" title="Cerrar"></button>
        </div>
    </div>
</c:if>

<c:if test="${ requestScope.SUCCESS != null }">
    <div class="container">
        <div class="alert alert-success alert-dismissible fade show d-flex align-items-center" role="alert">
            <span class="material-icons p-2">check_circle</span>
            <div>${ requestScope.SUCCESS }</div>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" data-mdb-toggle="tooltip" title="Cerrar"></button>
        </div>
    </div>
</c:if>

<c:if test="${ requestScope.ERROR != null }">
    <div class="container">
        <div class="alert alert-danger alert-dismissible fade show d-flex align-items-center" role="alert">
            <span class="material-icons p-2">error</span>
            <div>${ requestScope.ERROR }</div>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" data-mdb-toggle="tooltip" title="Cerrar"></button>
        </div>
    </div>
</c:if>