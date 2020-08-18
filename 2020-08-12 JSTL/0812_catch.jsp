<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 0812_catch.jsp ] </title>
 
 <style type="text/css">
   * { font-size:24pt; }
 </style>
</head>
<body>
	<!-- try/catch랑 같은것 -->
	<c:set var="age" value="30" scope="page"></c:set>
	나이:<c:out value="${age}">10</c:out> <br>
	
	<!-- value값이 지정되어 있지 않아서 기본으로 설정되어있는 10이 출력됌 -->
	<c:remove var="age" scope="page"></c:remove>
	나이:<c:out value="${age}">10</c:out> <br>
	
	<c:catch var="errmsg">
	예외발생전<br>
	<%=1/0 %><br>
	예외발생후<br>
	</c:catch>
	
	<c:out value="${errmsg}"></c:out>
</body>
</html>