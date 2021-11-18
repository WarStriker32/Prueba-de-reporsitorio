<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../../partials/head.jsp" />
    <title>Trabajador - Proyecto LP2</title>
</head>
<body>
    <jsp:include page="../../partials/nav.jsp" />
    <jsp:include page="../../partials/messages.jsp" />
    <main class="container mt-4">
        <a href="${ pageContext.request.contextPath }/worker/save" class="btn btn-primary btn-rounded ripple-surface mb-4" role="button">Añadir</a>
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Número de DNI</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Edad</th>
                    <th>Género</th>
                    <th>Fecha de nacimiento</th>
                    <th>Número de móvil</th>
                    <th>Dirección</th>
                    <th>Fecha de ingreso</th>
                    <th>Fecha de cese</th>
                    <th>Puesto</th>
                    <th>Salario</th>
                    <th>Pensión</th>
                    <th>Cantidad de hijos menores</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${ workersList }" var="worker">
                    <tr>
                        <td>${ worker.idNum }</td>
                        <td>${ worker.names }</td>
                        <td>${ worker.surname }</td>
                        <td>${ worker.age }</td>
                        <td><c:out default="None" escapeXml="true" value="${ worker.gender == 'Male' ? 'Masculino' : 'Femenino' }" /></td>
                        <fmt:formatDate value="${ worker.birthday }" var="formattedBday" type="date" pattern="dd/MM/yyyy" />
                        <td>${ formattedBday }</td>
                        <td><a href="tel:${ worker.mobileNum }">${ worker.mobileNum }</a></td>
                        <fmt:formatDate value="${ worker.entryDate }" var="formattedEntry" type="date" pattern="dd/MM/yyyy" />
                        <td>${ formattedEntry }</td>
                        <fmt:formatDate value="${ worker.terminationDate }" var="formattedTermination" type="date" pattern="dd/MM/yyyy" />
                        <td>${ formattedTermination }</td>
                        <td>${ worker.position }</td>
                        <td>${ worker.salary }</td>
                        <td>${ worker.pension }</td>
                        <td>${ worker.minorChildren }</td>
                        <td><a href="${ pageContext.request.contextPath }/worker/edit?code=${ pension.code }" class="btn btn-info" role="button">Editar</a></td>
	                    <td><a class="btn btn-danger" data-mdb-toggle="modal" data-mdb-target="#deleteModal" data-mdb-id="${ worker.code }" data-mdb-entity="worker" role="button">Eliminar</a></td>
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