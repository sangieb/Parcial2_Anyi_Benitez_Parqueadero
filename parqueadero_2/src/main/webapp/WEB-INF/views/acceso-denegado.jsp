<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Acceso Denegado</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"/>
    <style>body { background: #f0f2f5; }</style>
</head>
<body>
    <div class="min-vh-100 d-flex align-items-center justify-content-center">
        <div class="text-center">
            <i class="bi bi-shield-lock-fill text-danger" style="font-size: 80px;"></i>
            <h2 class="mt-3 fw-bold">Acceso Denegado</h2>
            <p class="text-muted">No tienes permisos para acceder a esta página.</p>
            <a href="/login" class="btn btn-primary mt-2">
                <i class="bi bi-house me-1"></i>Volver al inicio
            </a>
        </div>
    </div>
</body>
</html>