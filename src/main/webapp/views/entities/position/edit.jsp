<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <jsp:include page="../../partials/head.jsp" />
    <title>Actualizar cargo</title>
</head>
<body>
    <jsp:include page="../../partials/nav.jsp" />
    <jsp:include page="../../partials/messages.jsp" />
    <div class="container p-4">
        <div class="row">
            <div class="col-md-4 mx-auto">
                <div class="card text-center">
                    <div class="card-header">
                        <h3>Actualizar cargo</h3>
                    </div>
                    <div class="card-body">
                        <form action="${ pageContext.request.contextPath }/pension/save" method="post">
                            <div class="form-outline mb-4">
                                <input type="number" name="code" id="codeId" class="form-control" required value="${ position.code }">
                                <label for="codeId" class="form-label">Código</label>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="text" name="name" id="nameId" class="form-control" minlength="3" maxlength="3" autofocus required data-mdb-showcunter="true" value="${ position.name }">
                                <label for="nameId" class="form-label">Cargo</label>
                                <div class="form-helper"></div>
                            </div>
                            <div class="form-outline mb-2">
                                <button type="submit" class="btn btn-primary btn-block">Actualizar</button>
                            </div>
                            <div class="form-outline mb-2">
                                <button type="reset" class="btn btn-secondary btn-block">Restablecer</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<jsp:include page="../../partials/scripts.jsp" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js" integrity="sha512-Vp2UimVVK8kNOjXqqj/B0Fyo96SDPj9OCSm1vmYSrLYF3mwIOBXh/yRZDVKo8NemQn1GUjjK0vFJuCSCkYai/A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/language/es_ES.min.js" integrity="sha512-YAIQeBJK2/5jeCzWHMK2GFcrwcAlm+QDsbPkaqpowHpZiYDsxPMSluQGBAIb0a7SOlCX21G6HarKd6YrOR6Meg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="${ pageContext.request.contextPath }/dist/js/validations/positionValidation.js"></script>
</html>