<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head><title>Dashboard</title></head>
<body>
    <h2>Bienvenido</h2>
    <sec:authorize access="hasRole('ADMIN')">
        <a href="/admin/vehiculos">Ir al panel Admin</a>
    </sec:authorize>
    <sec:authorize access="hasRole('ACOMODADOR')">
        <a href="/acomodador/vehiculos">Ir al panel Acomodador</a>
    </sec:authorize>
    <sec:authorize access="hasRole('CLIENTE')">
        <a href="/cliente/vehiculos">Ir al panel Cliente</a>
    </sec:authorize>
    <br/><a href="/logout">Cerrar sesión</a>
</body>
</html>