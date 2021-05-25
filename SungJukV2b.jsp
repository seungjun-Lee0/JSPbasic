<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- SungJuk sj = new SungJuk(); --%>
<jsp:useBean id="sj" class="lsj.SungJuk"/>   

<jsp:setProperty name="sj" property="*" />
<%--
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String mat = request.getParameter("mat");
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리프로그램 v2b</title>
</head>  
<body>
<h1>성적 처리 프로그램</h1>
<p>이름= <jsp:getProperty property="name" name="sj"/></p>
<p>국어= <jsp:getProperty property="kor" name="sj"/></p>
<p>영어= <jsp:getProperty property="eng" name="sj"/></p>
<p>수학= <jsp:getProperty property="mat" name="sj"/></p>
<p>총점= <jsp:getProperty property="tot" name="sj"/></p>
<p>평균= <jsp:getProperty property="avg" name="sj"/></p>
</body>
</html>