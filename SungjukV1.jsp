<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! // 변수 선언
	String name;
	int kor, eng, mat;
	int tot;
	double avg;
	char grade;
%>
<%! // 메서드 선언
	void computeSungJuck(){
		tot = kor + eng + mat;
		avg = (double)tot / 3;
	}
%>
<% 
	name = "혜교";
	kor = 65;
	eng = 63;
	mat = 34;
	grade = '가';
%>
<%
	computeSungJuck();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리프로그램</title>
</head>
<body>
<h1>성적 처리 프로그램</h1>
<p>이름= <%=name %></p>
<p>국어= <%=kor %></p>
<p>영어= <%=eng %></p>
<p>수학= <%=mat %></p>
<p>총점= <%=tot %></p>
<p>평균= <%=avg %></p>
<p>학점= <%=grade %></p>
</body>
</html>