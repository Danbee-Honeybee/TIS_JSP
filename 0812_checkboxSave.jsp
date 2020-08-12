<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 0812_checkboxSave.jsp ] </title>
 
 <style type="text/css">
   * { font-size:24pt; }
 </style>
</head>
<body>
	0812_checkboxSave.jsp
	<h2>당신이 선택한 항목입니다.</h2>
	<c:catch>
		<c:forEach var="item" items="${paramValues.item}">
			${item}  <c:if test="${not status.last}">,</c:if>
		</c:forEach>
	</c:catch>
</body>
</html>