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
        <form action="CadastroServlet" method="post"> 
 Nome: <input type="text" name="nome"/> </br> 
 Login: <input type="text" name="login"/> </br>
 Email: <input type="text" name="email"/> </br> 
 Senha: <input type="text" name="senha"/> </br> 
 <input type="submit" value="Cadastrar"/> 
 </form> 
    </body>
</html>
