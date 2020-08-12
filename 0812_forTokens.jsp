<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 0812_forTokens.jsp ] </title>
 
 <style type="text/css">
   * { font-size:24pt; }
 </style>
</head>
<body>
	<!-- 문자열 쪼개기 -->
	
	<c:forTokens var="city" items="서울.인천,대구.부산" delims=",">
	${city} <br>
	</c:forTokens>
	
	<hr>
	
	<c:forTokens var="city" items="서울,인천,대구,부산" delims=",">
	${city} <br>
	</c:forTokens>
</body>
</html>