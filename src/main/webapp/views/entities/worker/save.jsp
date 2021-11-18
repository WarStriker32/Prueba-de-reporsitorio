<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <jsp:include page="../../partials/head.jsp" />
    <title>Registrar trabajador</title>
</head>
<body>
    <jsp:include page="../../partials/nav.jsp" />
    <jsp:include page="../../partials/messages.jsp" />
    <div class="container p-4">
        <div class="row">
            <div class="col-md-4 mx-auto">
                <div class="card text-center">
                    <div class="card-header">
                        <h3>Registrar trabajador</h3>
                    </div>
                    <div class="card-body">
                        <form action="${ pageContext.request.contextPath }/pension/save" method="post">
                            <div class="form-outline mb-4">
                                <input type="number" name="idNum" id="numId" class="form-control" minlength="8" maxlength="8" autofocus required data-mdb-showcounter="true">
                                <label for="numId" class="form-label">Número de DNI</label>
                                <div class="form-helper"></div>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="text" name="names" id="namesId" class="form-control" minlength="3" maxlength="40" required autocomplete="name" autocapitalize="words" data-mdb-showcounter="true">
                                <label for="namesId" class="form-label">Nombres</label>
                                <div class="form-helper"></div>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="text" name="surname" id="surnameId" class="form-control" minlength="3" maxlength="40" required autocomplete="family-name" autocapitalize="words" data-mdb-showcounter="true">
                                <label for="surnameId" class="form-label">Apellidos</label>
                                <div class="form-helper"></div>
                            </div>
                            <div class="mb-4">
                                <p class="form-label">Sexo</p>
                                <div class="form-check form-check-inline">
                                    <input type="radio" name="gender" id="genderId" value="male" class="form-check-input">
                                    <label for="genderId" class="form-check-label">Masculino</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input type="radio" name="gender" id="genderId2" value="female" class="form-check-input">
                                    <label for="genderId2" class="form-check-label">Femenino</label>
                                </div>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="date" name="bDay" id="bDayId" class="form-control" required>
                                <label for="bDayId" class="form-label">Fecha de nacimiento</label>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="tel" name="mobileNum" id="mobileNumId" class="form-control" minlength="9" maxlength="9" required autocomplete="tel" data-mdb-showcounter="true">
                                <label for="mobileNumId" class="form-label">Número de móvil</label>
                                <div class="form-helper"></div>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="text" name="address" id="addressId" class="form-control" minlength="10" maxlength="40" required data-mdb-showcounter="true">
                                <label for="addressId" class="form-label">Dirección</label>
                                <div class="form-helper"></div>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="date" name="entryDate" id="entryDateId" class="form-control" required>
                                <label for="entryDateId" class="form-label">Fecha de entrada</label>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="date" name="terminationDate" id="terminationDateId" class="form-control" required>
                                <label for="terminationDateId" class="form-label">Fecha de cese</label>
                            </div>
                            <div class="form-outline mb-4">
                                <select name="position" id="positionCode" required class="mdb-select md-form md-outline colorful-select dropdown-primary form-select">
                                    <option value="" disabled selected>Selecciona cargo</option>
                                    <c:forEach items="${ positionsList }" var="position">
                                        <option value="${ position.code }">${ position.name }</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="number" name="salary" id="salaryId" class="form-control" step="0.1" minlength="4" maxlength="4" required data-mdb-showcounter="true">
                                <label for="salaryId" class="form-label">Salario</label>
                                <div class="form-helper"></div>
                            </div>
                            <div class="form-outline mb-4">
                                <select name="pension" id="pensionCode" required class="mdb-select md-form md-outline colorful-select dropdown-primary form-select">
                                    <option value="" disabled selected>Selecciona pensión</option>
                                    <c:forEach items="${ pensionsList }" var="pension">
                                        <option value="${ pension.code }">${ pension.name }</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="number" name="minorChildren" id="minorChildrenId" class="form-control" minlength="1" max="4" required data-mdb-showcounter="true">
                                <label for="minorChildrenId" class="form-label">Cantidad de hijos menores</label>
                                <div class="form-helper"></div>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="text" name="username" id="usernameId" class="form-control" minlength="3" maxlength="30" required autocomplete="username" data-mdb-showcounter="true">
                                <label for="usernameId" class="form-label">Nombre de Usuario</label>
                                <div class="form-helper"></div>
                            </div>
                            <div class="form-outine mb-4">
                                <input type="password" name="password" id="passwordId" class="form-control" minlength="3" maxlength="18" required autocomplete="new-password" data-mdb-showcounter="true">
                                <label for="passwordId" class="form-label">Contraseña</label>
                                <div class="form-helper"></div>
                            </div>
                            <div class="form-outline mb-2">
                                <button type="submit" class="btn btn-primary btn-block">Registrar</button>
                            </div>
                            <div class="form-outline mb-2">
                                <button type="reset" class="btn btn-secondary btn-block">Limpiar</button>
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
<script src="${ pageContext.request.contextPath }/dist/js/validations/workerValidation.js"></script>
</html>