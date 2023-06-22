

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Registrar Contacto</title>
        <link rel="stylesheet" href="<%=request.getContextPath() %>/webjars/bootstrap/5.3.0-alpha3/dist/css/bootstrap.min.css"/>
        <script defer src="<%= request.getContextPath() %>/webjars/bootstrap/5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body class="d-flex flex-column min-vh-100">

        <jsp:include page="../templates/header.jsp"></jsp:include>

            <div class="container">

                <h1 class="text-center text-primary">Registrar Contacto</h1>

                <form action="<%= request.getContextPath() %>/ContactoServlet?action=create" method="POST">
                <div class="mb-3">
                    <label for="nombre" class="form-label"> Nombre:</label> 
                    <input type="text" class="form-control"  name="nombre" id="nombre" required minlength="1" maxlength="100" placeholder="Nombre del Contacto">
                </div>
                <div class="mb-3">
                    <label for="apellido" class="form-label">Apellido:</label>
                    <input type="text" class="form-control" name="apellido" id="apellido" required minlength="1" maxlength="100" placeholder="Apellido del Contacto"/>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="text" class="form-control" name="email" id="email" required minlength="6" maxlength="50" placeholder="micorreo@mail.com"/>
                </div>
                <div class="mb-3">
                    <label for="descripcion" class="form-label" >Descripción:</label>
                    <input type="text" class="form-control" name="descripcion" id="descripcion" required minlength="1" maxlength="100" placeholder="Breve descripción"/>
                </div>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>

        <jsp:include page="../templates/footer.jsp"></jsp:include>

    </body>
</html>
