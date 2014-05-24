<%-- 
    Document   : TelaCadastro
    Created on : 24/05/2014, 12:44:50
    Author     : Filipe_2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
    </head>
    <body>
        <form action="cadastro" method="post"> 
            Nome: <input type="text" name="nome" value="<%= request.getParameter("nome") != null ? request.getParameter("nome") : ""%>"/> <span class="erro">${nome_erro}</span></br> 
            Login: <input type="text" name="login" value="<%= request.getParameter("login") != null ? request.getParameter("login") : ""%>"/> <span class="erro">${login_erro}</span></br>
            Email: <input type="text" name="email" value="<%= request.getParameter("email") != null ? request.getParameter("email") : ""%>"/> <span class="erro">${email_erro}</span></br> 
            Senha: <input type="text" name="senha" value="<%= request.getParameter("senha") != null ? request.getParameter("senha") : ""%>"/> <span class="erro">${senha_erro}</span></br> 
            <input type="submit" value="Cadastrar"/> 
        </form> 
    </body>
</html>
