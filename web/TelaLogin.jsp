<%-- 
    Document   : TelaLogin
    Created on : 24/05/2014, 12:43:17
    Author     : Filipe_2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <form action="login" method="post">
            Login: <input type="text" name="login" value="<%= request.getParameter("login") != null ? request.getParameter("login") : ""%>"/></br> 
            Senha: <input type="text" name="senha" /> </br>
            <span class="erro"> ${erro} </span></br>
            <input type="submit" value="Entrar"/> 
          </form>
    </body>
</html>
