<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin - Vehículos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"/>
    <style>
        body { background: #f0f2f5; }
        .navbar { background: #0f3460 !important; }
        .card { border: none; border-radius: 12px; box-shadow: 0 2px 12px rgba(0,0,0,0.08); }
        .table thead { background: #0f3460; color: white; }
        .badge-tipo { background: #e8f4fd; color: #0f3460; padding: 4px 10px; border-radius: 20px; font-size: 12px; }
    </style>
</head>
<body>
    <nav class="navbar navbar-dark px-4 py-3">
        <span class="navbar-brand fw-bold"><i class="bi bi-car-front-fill me-2"></i>Parqueadero</span>
        <div class="d-flex align-items-center gap-3">
            <span class="text-white"><i class="bi bi-person-circle me-1"></i>Administrador</span>
            <a href="/logout" class="btn btn-outline-light btn-sm"><i class="bi bi-box-arrow-right me-1"></i>Salir</a>
        </div>
    </nav>

    <div class="container-fluid py-4 px-4">
        <div class="card">
            <div class="card-body">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h5 class="mb-0 fw-bold"><i class="bi bi-list-ul me-2"></i>Gestión de Vehículos</h5>
                    <a href="/admin/vehiculos/nuevo" class="btn btn-primary">
                        <i class="bi bi-plus-circle me-1"></i>Nuevo Vehículo
                    </a>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover align-middle">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Placa</th>
                                <th>Hora Entrada</th>
                                <th>Hora Salida</th>
                                <th>Ubicación</th>
                                <th>Tipo</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="v" items="${vehiculos}">
                            <tr>
                                <td><span class="text-muted">#${v.id}</span></td>
                                <td><strong>${v.placa}</strong></td>
                                <td><i class="bi bi-clock me-1 text-success"></i>${v.horaEntrada}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${v.horaSalida != null}">
                                            <i class="bi bi-clock me-1 text-danger"></i>${v.horaSalida}
                                        </c:when>
                                        <c:otherwise>
                                            <span class="badge bg-success">En parqueadero</span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td><i class="bi bi-geo-alt me-1"></i>${v.ubicacion}</td>
                                <td><span class="badge-tipo">${v.tipoVehiculo.nombre}</span></td>
                                <td>
                                    <a href="/admin/vehiculos/editar/${v.id}" class="btn btn-sm btn-outline-primary me-1">
                                        <i class="bi bi-pencil"></i>
                                    </a>
                                    <a href="/admin/vehiculos/eliminar/${v.id}" class="btn btn-sm btn-outline-danger"
                                       onclick="return confirm('¿Eliminar este vehículo?')">
                                        <i class="bi bi-trash"></i>
                                    </a>
                                </td>
                            </tr>
                            </c:forEach>
                            <c:if test="${empty vehiculos}">
                                <tr>
                                    <td colspan="7" class="text-center text-muted py-4">
                                        <i class="bi bi-inbox fs-3 d-block mb-2"></i>No hay vehículos registrados
                                    </td>
                                </tr>
                            </c:if>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>