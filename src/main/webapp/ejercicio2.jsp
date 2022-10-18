<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.practica_2.Tarea"%>
<%
if (session.getAttribute("tareas")==null) {
        ArrayList<Tarea> lista = new ArrayList<Tarea>();
        session.setAttribute("tareas", lista);
    }
    ArrayList<Tarea> tareas = (ArrayList<Tarea>)session.getAttribute("tareas");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tareas Pendientes</h1>
        <a href="nuevo.jsp">Nuevo</a>
        <table border="1" width="1" cellspacing="10" cellpadding="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tarea</th>
                    <th>Completado</th>
                    <th>Eliminar</th>
                </tr>
            </thead>
            <tbody>
                <%
                if (tareas !=null) {
                        for(Tarea t: tareas){
                    
                %>
                <tr>
                    <td><%= t.getId() %></td>
                    <td><%= t.getTarea() %></td>
                    <td><input type="checkbox" name="completado" value=""></td>
                    <td><a href="ProcesaServlet2?op=eliminar&id=<%= t.getId() %>">X</a></td>
                </tr>
                <%
                    }
                }
                %>
            </tbody>
        </table>
            <a href="index.jsp">Volver</a>
    </body>
</html>
