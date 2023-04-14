<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.servico.ControleServico" %>
<%@page import="com.servico.MensagemServico" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente WEB Serviço Mensagem</title>
    </head>
    <body>
        <h1>Cliente WEB Serviço Mensagem</h1>
        <%
            ControleServico servico = new ControleServico();
            MensagemServico mensagemServico = servico.getMensagemServico();
        %>
        Mensagem anterior: <%= mensagemServico.getMensagem()%>       
        <br>
        <br>
        <form name="FrmMensagem" method="post" action="MensagemServlet">	
            Nova mensagem: <input type=text name="mensagem"> <p>
            <input type="reset" value="Limpar">
            <input type="submit" name="Enviar" value="Enviar"> <p>		
        </form>
        
    </body>
</html>
