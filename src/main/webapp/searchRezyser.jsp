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
<jsp:useBean id="rezyser" class="com.example.servletjspdemo.domain.Rezyser" scope="session" />
<jsp:setProperty name="rezyser" property="*" />
<jsp:useBean id="storage" class="com.example.servletjspdemo.service.StorageService" scope="application" />
<p>Znaleziony rezyser:</p>
<%
    try{
        rezyser = storage.searchRezyser(rezyser);
        out.println("<p>Tytul: " + rezyser.getImie() + "; Rok premiery: " + rezyser.getNazwisko() + "</p>");
    }
    catch(Exception e) {
        request.getRequestDispatcher("notFoundElement.jsp").forward(request, response);
    }
%>
<p>
    <p><a href="showAllRezyser.jsp">Pokaz wszystkich rezyserow</a><p>
    <p><a href="searchGetRezyserData.jsp">Szukaj innego rezysera</a><p>
    <p><a href="index.jsp">Strona glowna</a><p>
</p>
</body>
</html>