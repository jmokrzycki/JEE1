<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Demo application</title>
    </head>
    <body>
        <h2>Baza filmow</h2>
        <p><a href="addGetFilmData.jsp">Dodaj film</a></p>
        <p><a href="deleteGetFilmData.jsp">Usun film</a></p>
        <p><a href="showAllFilm.jsp">Pokaz wszystkie filmy</a></p>
        <p><a href="searchGetFilmData.jsp">Szukaj filmu</a></p>
        <p><a href="updateGetFilmData.jsp">Aktualizuj film</a></p>
        <br/>
        <p><a href="addGetRezyserData.jsp">Dodaj rezysera</a></p>
        <p><a href="deleteGetRezyserData.jsp">Usun rezysera</a></p>
        <p><a href="showAllRezyser.jsp">Pokaz wszystkich rezyserow</a></p>
        <p><a href="searchGetRezyserData.jsp">Szukaj rezysera</a></p>
        <p><a href="updateGetRezyserData.jsp">Aktualizuj rezysera</a></p>
        <br/>
        <p><a href="generatorGatunkow">Wylosuj film do obejrzenia na dziś:</a></p>


        <jsp:useBean id="msg" class="com.example.servletjspdemo.web.GatunkiFimow" scope="request" />
        <p>Wylosowano: <jsp:getProperty name="msg" property="data"/></p>
    </body>
</html>
