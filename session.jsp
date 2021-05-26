<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
		// 세션객체에 uid 변수 생성 후 아이디를 저장
		session.setAttribute("uid", uid);
		
		System.out.println(session.getId());
		System.out.println(session.getCreationTime());
		System.out.println(session.getLastAccessedTime());
		
		// 숫자형태의 시간을 현실세계의 시간으로 변환
		SimpleDateFormat sdf = new SimpleDateFormat(
				"yyyy/MM/dd hh:mm:ss");
		long ctime = session.getCreationTime();
		long latime = session.getLastAccessedTime();
		
		System.out.println(sdf.format(new Date(ctime)));
		System.out.println(sdf.format(new Date(latime)));
		
		response.sendRedirect("myinfo.jsp");
	}
	else{
		response.sendRedirect("loginFail.jsp");
	}
	
	//response.sendRedirect("http://google.co.kr");
%>
</body>
</html>