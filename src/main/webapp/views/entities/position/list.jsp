<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../../partials/head.jsp" />
    <title>Cargo - Proyecto LP2</title>
</head>
<body>
    <jsp:include page="../../partials/nav.jsp" />
    <jsp:include page="../../partials/messages.jsp" />
    <main class="container mt-4">
        <a href="${ pageContext.request.contextPath }/views/entities/position/save.jsp" class="btn btn-primary btn-rounded ripple-surface mb-4" role="button">Añadir</a>
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Cargo</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${ positionsList }" var="position">
                    <tr>
                        <td>${ position.code }</td>
                        <td>${ position.name }</td>
                        <td><a href="${ pageContext.request.contextPath }/position/edit?code=${ pension.code }" class="btn btn-info" role="button">Editar</a></td>
	                    <td><a class="btn btn-danger" data-mdb-toggle="modal" data-mdb-target="#deleteModal" data-mdb-id="${ position.code }" data-mdb-entity="position" role="button">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </main>
    <jsp:include page="../../partials/delete-modal.jsp" />
</body>
<script src="https://cdn.datatables.net/1.11.0/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.0/js/dataTables.bootstrap4.min.js"></script>
<script src="${ pageContext.request.contextPath }/dist/js/init-datatable.js"></script>
<script src="${ pageContext.request.contextPath }/dist/js/delete-modal.js"></script>
</html>