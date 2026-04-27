<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Acomodador - Vehículos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"/>
    <style>
        body { background: #f0f2f5; }
        .navbar { background: #1b4332 !important; }
        .card { border: none; border-radius: 12px; box-shadow: 0 2px 12px rgba(0,0,0,0.08); }
        .table thead { background: #1b4332; color: white; }
    </style>
</head>
<body>
    <nav class="navbar navbar-dark px-4 py-3">
        <span class="navbar-brand fw-bold"><i class="bi bi-car-front-fill me-2"></i>Parqueadero</span>
        <div class="d-flex align-items-center gap-3">
            <span class="text-white"><i class="bi bi-person-circle me-1"></i>Acomodador</span>
            <a href="/logout" class="btn btn-outline-light btn-sm"><i class="bi bi-box-arrow-right me-1"></i>Salir</a>
        </div>
    </nav>

    <div class="container-fluid py-4 px-4">
        <div class="card">
            <div class="card-body">
                <h5 class="fw-bold mb-4"><i class="bi bi-geo-alt me-2"></i>Gestión de Ubicaciones</h5>
                <div class="table-responsive">
                    <table class="table table-hover align-middle">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Placa</th>
                                <th>Hora Entrada</th>
                                <th>Ubicación</th>
                                <th>Tipo</th>
                                <th>Acción</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="v" items="${vehiculos}">
                            <tr>
                                <td><span class="text-muted">#${v.id}</span></td>
                                <td><strong>${v.placa}</strong></td>
                                <td>${v.horaEntrada}</td>
                                <td><i class="bi bi-geo-alt me-1"></i>${v.ubicacion}</td>
                                <td>${v.tipoVehiculo.nombre}</td>
                                <td>
                                    <a href="/acomodador/vehiculos/editar/${v.id}" class="btn btn-sm btn-warning">
                                        <i class="bi bi-geo me-1"></i>Actualizar ubicación
                                    </a>
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>