<%-- 
    Document   : read
    Created on : Jun 17, 2023, 2:19:05 PM
    Author     : JuaN
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Actualizar Contacto</title>
        <link rel="stylesheet" href="<%=request.getContextPath() %>/webjars/bootstrap/5.3.0-alpha3/dist/css/bootstrap.min.css"/>
        <script defer src="<%= request.getContextPath() %>/webjars/bootstrap/5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body class="d-flex flex-column min-vh-100">

        <jsp:include page="../templates/header.jsp"></jsp:include>

            <div class="container">

                <h1 class="text-center text-primary">Actualizar Contacto</h1>

                <form action="<%= request.getContextPath() %>/ContactoServlet?action=update" method="POST">
                <input type="hidden" name="id" required placeholder="idContacto" value='<c:out value="${contacto.id}"></c:out>'>
                    <div class="mb-3">
                        <label for="nombre" class="form-label"> Nombre:</label> 
                        <input type="text" class="form-control"  name="nombre" id="nombre" required minlength="1" maxlength="100" placeholder="Nombre del Contacto" value='<c:out value="${contacto.nombre}"></c:out>'/>
                    </div>
                    <div class="mb-3">
                        <label for="apellido" class="form-label">Apellido:</label>
                        <input type="text" class="form-control" name="apellido" id="apellido" required minlength="1" maxlength="100" placeholder="Apellido del Contacto" value='<c:out value="${contacto.apellido}"></c:out>'/>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email:</label>
                        <input type="text" class="form-control" name="email" id="email" required minlength="6" maxlength="50" placeholder="micorreo@mail.com" value='<c:out value="${contacto.email}"></c:out>'/>
                    </div>
                    <div class="mb-3">
                        <label for="descripcion" class="form-label" >Descripción:</label>
                        <input type="text" class="form-control" name="descripcion" id="descripcion" required minlength="1" maxlength="100" placeholder="Breve descripción" value='<c:out value="${contacto.descripcion}"></c:out>'/>
                    </div>
                    <button type="submit" class="btn btn-primary">Actualizar</button>
                </form>
            </div>

        <jsp:include page="../templates/footer.jsp"></jsp:include>

    </body>
</html>
