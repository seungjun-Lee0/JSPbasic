<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response 내장객체</title>
</head>
<body>
<%	
	String uid = request.getParameter("uid");
	String pwd = request.getParameter("pwd");
	
	if(uid.equals("abc123") && pwd.equals("987xyz")){
		response.sendRedirect("loginOK.jsp");
	}
	else{
		response.sendRedirect("loginFail.jsp");
	}
	
	//response.sendRedirect("http://google.co.kr");
%>
</body>
</html>