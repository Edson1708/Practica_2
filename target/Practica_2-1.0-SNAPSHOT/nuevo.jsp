

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nueva Tarea</h1>
        <form action="ProcesaServlet2" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="number" name="id" value="" size="2"></td>
                </tr>
                <tr>
                    <td>TAREA</td>
                    <td><input type="text" name="tarea" value="" ></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Procesar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
