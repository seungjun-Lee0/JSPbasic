<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 지시자 테스트</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<!-- 정적페이지를 include 할 떄 주로 사용 -->
	<hr>
	<%@ include file="main.jsp" %>
	<hr>
	<%@ include file="footer.jsp" %>
</body>
</html>