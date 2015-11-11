<%@ page import="com.example.servletjspdemo.domain.Film" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="film" class="com.example.servletjspdemo.domain.Film" scope="session" />

<jsp:setProperty name="film" property="*" />

<jsp:useBean id="storage" class="com.example.servletjspdemo.service.StorageService" scope="application" />

<p>Znaleziony film:</p>
<%
        film = storage.searchFilm(film);
        out.println("<p>Tytul: " + film.getTytul() + "; Rok premiery: " + film.getRok_premiery() + "</p>");
%>
<p>
    <p><a href="showAllFilm.jsp">Pokaz wszystkie filmy</a><p>
    <p><a href="searchGetFilmData.jsp">Szukaj innego filmu</a><p>
    <p><a href="index.jsp">Strona glowna</a><p>
</p>
</body>
</html>