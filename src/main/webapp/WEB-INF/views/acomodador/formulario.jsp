<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Actualizar Ubicación</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"/>
    <style>
        body { background: #f0f2f5; }
        .navbar { background: #1b4332 !important; }
        .card { border: none; border-radius: 12px; box-shadow: 0 2px 12px rgba(0,0,0,0.08); }
    </style>
</head>
<body>
    <nav class="navbar navbar-dark px-4 py-3">
        <span class="navbar-brand fw-bold"><i class="bi bi-car-front-fill me-2"></i>Parqueadero</span>
        <a href="/logout" class="btn btn-outline-light btn-sm"><i class="bi bi-box-arrow-right me-1"></i>Salir</a>
    </nav>

    <div class="container py-4" style="max-width: 500px;">
        <div class="card">
            <div class="card-body p-4">
                <h5 class="fw-bold mb-4"><i class="bi bi-geo me-2"></i>Actualizar Ubicación</h5>
                <div class="alert alert-info">
                    <i class="bi bi-car-front me-2"></i>Vehículo: <strong>${vehiculo.placa}</strong>
                </div>
                <form method="post" action="/acomodador/vehiculos/actualizar">
                    <input type="hidden" name="id" value="${vehiculo.id}"/>
                    <input type="hidden" name="placa" value="${vehiculo.placa}"/>
                    <input type="hidden" name="horaEntrada" value="${vehiculo.horaEntrada}"/>
                    <input type="hidden" name="tipoVehiculo.id" value="${vehiculo.tipoVehiculo.id}"/>

                    <div class="mb-4">
                        <label class="form-label fw-bold">Nueva Ubicación</label>
                        <input type="text" name="ubicacion" class="form-control form-control-lg"
                               value="${vehiculo.ubicacion}" placeholder="Ej: A-2, B-41" required/>
                    </div>

                    <div class="d-flex gap-2">
                        <button type="submit" class="btn btn-warning flex-fill">
                            <i class="bi bi-check-circle me-1"></i>Actualizar
                        </button>
                        <a href="/acomodador/vehiculos" class="btn btn-outline-secondary flex-fill">
                            <i class="bi bi-x-circle me-1"></i>Cancelar
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>