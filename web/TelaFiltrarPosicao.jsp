<%-- 
    Document   : TelaFiltrarPosicao
    Created on : 24/05/2014, 12:45:16
    Author     : Filipe_2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Escolha um lugar</title>
    </head>
    <body>

        <button>Minha posição</button>
        <button>Ponto no Mapa</button>
        <input type="text" placeholder="Escolha um lugar"></input>
    </body>


    <script>
        
        
        navigator.geolocation.getCurrentPosition(GetLocation);
        function GetLocation(location) {
            alert(location.coords.latitude);
            alert(location.coords.longitude);
            alert(location.coords.accuracy);
        }
    </script>
</html>
