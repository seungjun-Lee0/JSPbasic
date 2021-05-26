<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - books</title>
</head>
<body>
<h1>JSTL - books</h1>
<c:set var="url">jdbc:mariadb://bigdata.cnuqv3vtwjri.ap-northeast-2.rds.amazonaws.com:3306/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>

<sql:setDataSource var="mariadb" url="${url}" 
driver="${drv}" user="${usr}"
password="${pwd}"/>

<% 
// request.setCharacterEncoding("UTF-8");
%>
<fmt:requestEncoding value="UTF-8" />

<sql:update dataSource="${mariadb}" var="cnt">
	insert into books (bookid,bookname,publisher,price)
	values (?,?,?,?)
	<sql:param value="${param.bookid}"/>
	<sql:param value="${param.bookname}"/>
	<sql:param value="${param.publisher}"/>
	<sql:param value="${param.price}"/>
</sql:update>
<p>${cnt}</p>
<p><c:if test="${cnt gt 0}"/>데이터 입력성공!</p>

</body>
</html>