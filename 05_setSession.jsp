<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<%
		session.setAttribute("id", "jinju");
		session.setAttribute("pw", "test1234");
		session.setAttribute("age", "24");
	%>
	<a href="04_getSession.jsp"><h3>세션 설정</h3></a>
</body>
</html>