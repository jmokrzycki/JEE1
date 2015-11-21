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
<jsp:useBean id="rezyser_stary" class="com.example.servletjspdemo.domain.Rezyser" scope="session" />
<jsp:useBean id="rezyser" class="com.example.servletjspdemo.domain.Rezyser" scope="session" />
<form action="updateRezyser.jsp">
      Stary tytul: <input type="text" name="tytul" value="${rezyser_stary.imie}" /><br /><br />
      Tytul: <input type="text" name="tytul" value="${rezyser.imie}" /><br />
      Rok premiery: <input type="text"  name="rok_premiery" value="${rezyser.nazwisko}" /><br />
      <input type="submit" value=" OK ">
</form>
</body>
</html>