<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Formulario Vehículo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"/>
    <style>
        body { background: #f0f2f5; }
        .navbar { background: #0f3460 !important; }
        .card { border: none; border-radius: 12px; box-shadow: 0 2px 12px rgba(0,0,0,0.08); }
    </style>
</head>
<body>
    <nav class="navbar navbar-dark px-4 py-3">
        <span class="navbar-brand fw-bold"><i class="bi bi-car-front-fill me-2"></i>Parqueadero</span>
        <a href="/logout" class="btn btn-outline-light btn-sm"><i class="bi bi-box-arrow-right me-1"></i>Salir</a>
    </nav>

    <div class="container py-4" style="max-width: 600px;">
        <div class="card">
            <div class="card-body p-4">
                <h5 class="fw-bold mb-4">
                    <i class="bi bi-car-front me-2"></i>
                    ${vehiculo.id == null ? 'Registrar Vehículo' : 'Editar Vehículo'}
                </h5>
                <form method="post" action="${vehiculo.id == null ? '/admin/vehiculos/guardar' : '/admin/vehiculos/actualizar'}">
                    <input type="hidden" name="id" value="${vehiculo.id}"/>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Placa <span class="text-danger">*</span></label>
                        <input type="text" name="placa" class="form-control" maxlength="6"
                               value="${vehiculo.placa}" placeholder="Ej: ABC123" required/>
                        <small class="text-muted">Máximo 6 caracteres</small>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label fw-bold">Hora de entrada <span class="text-danger">*</span></label>
                            <input type="time" name="horaEntrada" class="form-control"
                                   value="${vehiculo.horaEntrada}" required/>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label fw-bold">Hora de salida</label>
                            <input type="time" name="horaSalida" class="form-control"
                                   value="${vehiculo.horaSalida}"/>
                            <small class="text-muted">Solo al salir</small>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">Ubicación <span class="text-danger">*</span></label>
                        <input type="text" name="ubicacion" class="form-control"
                               value="${vehiculo.ubicacion}" placeholder="Ej: A-2, B-41" required/>
                    </div>

                    <div class="mb-4">
                        <label class="form-label fw-bold">Tipo de vehículo <span class="text-danger">*</span></label>
                        <select name="tipoVehiculo.id" class="form-select">
                            <c:forEach var="t" items="${tipos}">
                                <option value="${t.id}" ${vehiculo.tipoVehiculo != null && vehiculo.tipoVehiculo.id == t.id ? 'selected' : ''}>${t.nombre}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="d-flex gap-2">
                        <button type="submit" class="btn btn-primary flex-fill">
                            <i class="bi bi-check-circle me-1"></i>Guardar
                        </button>
                        <a href="/admin/vehiculos" class="btn btn-outline-secondary flex-fill">
                            <i class="bi bi-x-circle me-1"></i>Cancelar
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>