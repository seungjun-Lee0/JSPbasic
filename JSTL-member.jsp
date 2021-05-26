<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL-member</title>
</head>
<body>
<h1>JSTL-member</h1>
<c:set var="url">jdbc:mariadb://bigdata.cnuqv3vtwjri.ap-northeast-2.rds.amazonaws.com:3306/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>

<sql:setDataSource var="mariadb" url="${url}" 
driver="${drv}" user="${usr}"
password="${pwd}"/>

<c:set var="userid" value="ad" />
<c:set var="passwd" value="ad" />
<c:set var="name" value="ad" />

<sql:update dataSource="${mariadb}" var="cnt">
	insert into member (userid, passwd, name)
	values (?,?,?)
	<sql:param value="${userid}"/>
	<sql:param value="${passwd}"/>
	<sql:param value="${name}"/>
</sql:update>

<p><c:if test="${cnt gt 0 }"/>데이터 입력완료</p>

</body>
</html>