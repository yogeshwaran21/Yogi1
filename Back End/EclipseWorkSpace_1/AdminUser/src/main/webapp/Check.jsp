<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CheckInfo</title>
</head>
<body>
<%
String username=request.getParameter("uname");
String password=request.getParameter("pass");

//boolean user=username.equals("yogesh")&& password.equals("yogesh");
//boolean admin=username.equals("siva")&& password.equals("siva");

if(username.equals("yogesh")&& password.equals("yogesh")){
response.sendRedirect("userPage");
}
	
else if(username.equals("siva")&& password.equals("siva")){
response.sendRedirect("adminPage.html");	
}
else{
	response.sendRedirect("");
}
%>
</body>
</html>