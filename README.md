# Parcial 2 — Programación Web
## Sistema de Gestión de Parqueadero
### Anyi Benítez — Ingeniería de Software — USCO 20242229207

---

## Nota importante sobre la estructura del repositorio

Durante el desarrollo del parcial se presentaron errores de compilación en el proyecto original, por lo que fue necesario trabajar en una copia corregida 
del proyecto.

**El proyecto funcional se encuentra en la carpeta:** `parqueadero_2/`

La carpeta raíz contiene una versión anterior con errores de nombres de clases que fue reemplazada. El código fuente correcto, funcional y probado es el que está
dentro de `parqueadero_2/`.

---

## Tecnologías utilizadas

- Spring Boot 4.0.6
- Spring Security
- Spring Data JPA / Hibernate
- MySQL 8
- JSP + JSTL
- Bootstrap 5.3
- Swagger / SpringDoc OpenAPI
- Maven

---

## Cómo ejecutar el proyecto

1. Importar la carpeta `parqueadero_2/` en Eclipse como Maven Project
2. Configurar `application.properties` con contraseña de MySQL
3. Crear la base de datos: `CREATE DATABASE parqueadero_db`
4. Ejecutar la app — JPA crea las tablas automáticamente
5. Ejecutar el script SQL de la carpeta `sql/`
6. Acceder a `http://localhost:8080/login`

---

## Credenciales de prueba en archivo DB_Queries.txt dentro de parqueadero_2

| Usuario | Contraseña | Rol |
|---|---|---|
| admin | 1234 | Administrador |
| acomodador | 1234 | Acomodador |
| cliente | 1234 | Cliente |

---

## URLs del sistema

| URL | Descripción |
|---|---|
| http://localhost:8080/login | Formulario de login |
| http://localhost:8080/admin/vehiculos | Panel administrador |
| http://localhost:8080/acomodador/vehiculos | Panel acomodador |
| http://localhost:8080/cliente/vehiculos | Panel cliente |
| http://localhost:8080/swagger-ui/index.html | Documentación Swagger |
