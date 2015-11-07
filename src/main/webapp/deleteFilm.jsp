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

<% 
  storage.delete(film);
%>

<p>Film zostal usuniety:</p>
<p>Tytul: ${film.tytul} </p>
<p>Rok premiery: ${film.rok_premiery}</p>
<p>
    <p><a href="showAllFilm.jsp">Pokaz wszystkie filmy</a><p>
    <p><a href="deleteGetFilmData.jsp">Usun inny film</a><p>
    <p><a href="index.jsp">Strona glowna</a><p>
</p>
</body>
</html>