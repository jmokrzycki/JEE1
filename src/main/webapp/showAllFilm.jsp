<%@page import="com.example.servletjspdemo.domain.Film"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="storage" class="com.example.servletjspdemo.service.StorageService" scope="application" />
<%
  for (Film film : storage.getAllFilm()) {
	  out.println("<p>First name: " + film.getTytul() + "; Year of birth: " + film.getRok_premiery() + "</p>");
  }
%>
<p>
  <a href="getFilmData.jsp">Add another film</a>
</p>

</body>
</html>