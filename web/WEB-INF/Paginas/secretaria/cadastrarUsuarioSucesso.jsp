<%-- 
    Document   : cadastrarUsuarioSucesso
    Created on : 26/06/2016, 15:47:12
    Author     : Luiz Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="/templates/nav_secretaria.jsp"></jsp:include>
        <h1>Usuario Cadastrado Com sucesso.</h1>
        <form action="Acessa" method="post">
            <button type="submit">Ok</button>
            <input type="hidden" name="tarefa" value="RouteAcessa">
            <input type="hidden" name="action" value="Secretaria">
        </form>
    </body>
</html>
