<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.servletjspdemo.domain.Rezyser" %>
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
<p>Lista wszystkich rezyserow:</p>
<%
  for (Rezyser rezyser : storage.getAllRezyser()) {
	  out.println("<p>Imie: " + rezyser.getImie() + "; Nazwisko: " + rezyser.getNazwisko() + "</p>");
  }
%>
JSLT:<br>
<c:forEach var="rezyser" items="${storage.getAllRezyser()}">
    Imie: ${rezyser.getImie() }; Nazwisko: ${rezyser.getNazwisko() }
</c:forEach>
<p>
    <a href="index.jsp">Strona glowna</a>
</p>
</body>
</html>