<%-- 
    Document   : TelaResultados
    Created on : 24/05/2014, 12:45:05
    Author     : Filipe_2
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="com.fuzuapp.model.resultados.entidades.Resultado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css" />
        <script src="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>Resultados</title>
    </head>
    <body>
        <div class="menu shad">

            <form action="resultados" method="get">
<input id="lat" name="lat" style="width:90px; font-style:italic; " placeholder="lat" >
            <input id="lon" name="lon" style="width:90px; font-style:italic; " placeholder="lon" >
            <input id="raio" name="raio" style="width:90px; font-style:italic; " placeholder="raio km" >
            <input type="submit" value="Pesquisar" />
            </form>
            
        </div>
        <div id="map" style="width: 30%; height: 50em; float: right"></div>
        <ul style="float: left; width: 60%">
            <c:forEach items="${resultados}" var="resultado">
                <li><span style="color: #E74C3C;"> <c:out value="${resultado.horario}"/></span>> -- <c:out value="${resultado.descricao}"/>  </li>
                </c:forEach>
        </ul>


    </body>
    <script>
        // create a map in the "map" div, set the view to a given place and zoom
        var map = L.map('map').setView([<c:out value="${latitude}"/>,<c:out value="${longitude}"/>], 13);

        // add an OpenStreetMap tile layer
        L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map);

        L.circle([<c:out value="${latitude}"/>,<c:out value="${longitude}"/>], <c:out value="${raio}"/>).addTo(map);
        longitudeInput = document.getElementById("lon");
        latitudeInput = document.getElementById("lat");
        raioInput = document.getElementById("raio");

        map.on('move', function(e) {

            refresh();
        });

        function refresh() {
            var ll = map.getCenter();

            longitudeInput.value = ll.lng;
            latitudeInput.value = ll.lat;
            
        }

        refresh();

    </script>

    <style>
        body{
            margin: 0;
            
        }
        .menu{

            margin: 0;
            margin-bottom: 1em;
        }
        .shad {
            border-bottom: 1px solid #999;
            background-color: #fafafa;
            background-image: linear-gradient(to bottom, #fff, #e2e2e2);
            padding:10px;
            text-align: center;
            box-shadow: 0 1px 10px rgba(0, 0, 0, 0.7);
        }
    </style>
</html>
