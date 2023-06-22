<%-- 
    Document   : list
    Created on : Jun 14, 2023, 9:07:06 PM
    Author     : JuaN
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Lista de Contactos</title>
        <link rel="stylesheet" href="<%=request.getContextPath() %>/webjars/bootstrap/5.3.0-alpha3/dist/css/bootstrap.min.css"/>
        <script defer src="<%= request.getContextPath() %>/webjars/bootstrap/5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body class="d-flex flex-column min-vh-100">

        <jsp:include page="../templates/header.jsp"></jsp:include>

            <div class="container">

                <h1 class="text-center text-primary">Lista de Contactos</h1>

                <table class="table">
                    <tr>
                        <td>ID</td>
                        <td>NOMBRE</td>
                        <td>APELLIDO </td>
                        <td>EMAIL</td>
                        <td>DESCRIPCIÓN</td>
                        <td colspan=2 align="center">ACCIONES</td>
                    </tr>

                <c:forEach var="datosBD" items="${lista}">
                    <tr>
                        <td><c:out value="${datosBD.id}" /></td>
                        <td><c:out value="${datosBD.nombre}"/></td>
                        <td><c:out value="${datosBD.apellido}"/></td>
                        <td><c:out value="${datosBD.email}"/></td>
                        <td><c:out value="${datosBD.descripcion}"/></td>
                        <td align="right"><button type="button" class="btn btn-warning"><a href="<%= request.getContextPath()%>/ContactoServlet?action=read&id=<c:out value="${datosBD.id}"/>" style="text-decoration: none; color: black">Actualizar</a></button></td>
                        <td align="left"><button type="button" class="btn btn-danger"><a href="<%= request.getContextPath()%>/ContactoServlet?action=delete&id=<c:out value="${datosBD.id}"/>" style="text-decoration: none; color: white">Eliminar</a></button> </td>
                    </tr>
                </c:forEach>
            </table>
            <section>
                <button type="button" class="btn btn-secondary"><a href="<%= request.getContextPath() %>/ContactoServlet?action=report" style="text-decoration: none; color: white">Reporte</a></button>
                <button type="button" class="btn btn-success"><a href="<%= request.getContextPath() %>/ContactoServlet?action=export" style="text-decoration: none; color: white">Exportar</a></button>
            </section>
        </div>

        <jsp:include page="../templates/footer.jsp"></jsp:include>

    </body>
</html>
