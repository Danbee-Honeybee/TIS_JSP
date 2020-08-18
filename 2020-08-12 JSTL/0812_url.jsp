<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 0812_url.jsp ] </title>
 
 <style type="text/css">
   * { font-size:24pt; }
 </style>
</head>
<body>
	<!-- 이후에 여러번 반복되어 사용할 주소가 있다면 변수에 저장하기 위해 사용된다. -->
	<c:url value="images/pig.png" var="data"></c:url>
	<h3>${data}</h3>
	<img src="${data}" width='150' height='150'>
</body>
</html>