<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Parqueadero</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet"/>
    <style>
        body { background: #1a1a2e; min-height: 100vh; display: flex; align-items: center; justify-content: center; }
        .card { border: none; border-radius: 16px; box-shadow: 0 8px 32px rgba(0,0,0,0.3); }
        .card-header { background: #16213e; border-radius: 16px 16px 0 0 !important; }
        .btn-primary { background: #0f3460; border: none; }
        .btn-primary:hover { background: #533483; }
    </style>
</head>
<body>
    <div class="card" style="width: 380px;">
        <div class="card-header text-center py-4">
            <i class="bi bi-car-front-fill text-white fs-1"></i>
            <h4 class="text-white mt-2 mb-0">Parqueadero</h4>
            <small class="text-secondary">Sistema de gestión</small>
        </div>
        <div class="card-body p-4">
            <% if(request.getParameter("error") != null) { %>
                <div class="alert alert-danger d-flex align-items-center" role="alert">
                    <i class="bi bi-exclamation-triangle-fill me-2"></i>
                    Usuario o contraseña incorrectos
                </div>
            <% } %>
            <form method="post" action="/login">
                <div class="mb-3">
                    <label class="form-label fw-bold">Usuario</label>
                    <div class="input-group">
                        <span class="input-group-text"><i class="bi bi-person-fill"></i></span>
                        <input type="text" name="username" class="form-control" placeholder="Ingresa tu usuario" required/>
                    </div>
                </div>
                <div class="mb-4">
                    <label class="form-label fw-bold">Contraseña</label>
                    <div class="input-group">
                        <span class="input-group-text"><i class="bi bi-lock-fill"></i></span>
                        <input type="password" name="password" class="form-control" placeholder="Ingresa tu contraseña" required/>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary w-100 py-2">
                    <i class="bi bi-box-arrow-in-right me-2"></i>Ingresar
                </button>
            </form>
        </div>
    </div>
</body>
</html>