<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>24단</h1>
	<%
	for(int i=1; i <= 9; i++){
		//array1[i-1] = 24 * i;
		out.println("24 *"+ i + " = " + 24 * i + "<br>");
		
	}
%>
</body>
</html>