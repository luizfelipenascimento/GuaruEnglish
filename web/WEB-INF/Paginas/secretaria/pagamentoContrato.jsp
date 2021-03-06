<%-- 
    Document   : pagamentoContrato
    Created on : 28/06/2016, 14:08:18
    Author     : Luiz Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="/templates/header.jsp"/>
    <body>
        <jsp:include page="/templates/nav_secretaria.jsp"></jsp:include>
        <h1>Pagamento: </h1>
        <p><b>Valor total do módulo: </b> ${turma.modulo.preco}</p>
        <p><b>Valor a pagar: </b> ${valorContrato}</p>
        
        <label>Forma de pagamento:</label>
        <form action="Executa" method="post">
            <select name="qtdParcelas">
                <option value="1" selected> 1x </option>
                <option value="2"> 2x </option>
                <option value="3"> 3x </option>
                <option value="4"> 4x </option>
                <option value="5"> 5x </option>
            </select>
            <br/><br/>
            <button type="submit">Confirmar Contratação</button>
            <input type="hidden" name="tarefa" value="FinalizarContrato">
            <input type="hidden" name="idTurma" value="${turma.id}">
        </form>
        <br/><br/>
        
        <form action="Executa" method="post">
            <button>Cancelar Contratação</button>
            <input type="hidden" name="tarefa" value="CancelarContratacao">
        </form>
        
    </body>
</html>
