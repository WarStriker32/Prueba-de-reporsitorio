<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <jsp:include page="../../partials/head.jsp" />
    <title>Inicio de Sesión</title>
</head>
<body>
    <jsp:include page="../../partials/nav.jsp" />
    <jsp:include page="../../partials/messages.jsp" />
    <div class="container p-4">
        <div class="row">
            <div class="col-md-4 mx-auto">
                <div class="card text-center">
                    <div class="card-header">
                        <h3>Inicio de sesión</h3>
                    </div>
                    <div class="card-body">
                        <form action="${ pageContext.request.contextPath }/worker/login" method="POST">
                            <div class="form-outline mb-4">
                                <input type="text" name="username" id="usernameId" maxlength="30" autocomplete="username" autofocus required class="form-control">
                                <label for="usernameId" class="form-label">Nombre de usuario</label>
                            </div>
                            <div class="form-outline mb-2">
                                <input type="password" name="password" id="passwordId" maxlength="18" autocomplete="current-password" required class="form-control">
                                <label for="passwordId" class="form-label">Contraseña</label>
                            </div>
                            <div class="form-outline">
                                <button type="submit" class="btn btn-primary btn-block">Iniciar sesión</button>
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
<script src="${ pageContext.request.contextPath }/dist/js/validations/loginValidation.js"></script>
</html>