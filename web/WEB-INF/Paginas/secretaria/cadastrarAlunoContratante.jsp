<%-- 
    Document   : cadastrarAluno
    Created on : 27/06/2016, 17:53:47
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
        <h1>Cadastro do aluno:</h1>
        <form action="Executa" method="post" id="formCadastra">
            <label>Nome: </label><input type="text" name="nome"><br/><br/>
            <label>User Name: </label><input type="text" name="userName"><br/><br/>
            <label>Senha Default: </label><input type="password" name="senha"><br/><br/>
            <label>CPF: </label><input type="text" name="cpf"><br/><br/>
            <input type="hidden" name="tarefa" value="CadastrarAlunoContratante">
            <input type="submit" value="Cadastrar">
        </form>
    </body>
</html>
