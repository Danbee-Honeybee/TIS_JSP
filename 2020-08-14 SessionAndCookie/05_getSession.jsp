<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("id");
		String pw = (String) session.getAttribute("pwd");
		String age = (String) session.getAttribute("age");
	%>
		id : <%=id %> <br>
		pw : <%=pw %> <br>
		age : <%=age %> <br>
		<a href="04_setSession.jsp">돌아가기</a>
</body>
</html>