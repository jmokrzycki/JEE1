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
<jsp:useBean id="film" class="com.example.servletjspdemo.domain.Rezyser" scope="session" />

<form action="addPerson.jsp">

  First name :<input type="text" name="imie" value="${film.imie}" /><br />
  Year of birth :<input type="text"  name="nazwisko" value="${film.nazwisko}" /><br />
  <input type="submit" value=" OK ">
  
</form>

</body>
</html>