<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<h3>세션에 설정된 모든 값 얻어오기</h3>
	<%
		Enumeration names = session.getAttributeNames();
		while(names.hasMoreElements()){
			String name  = names.nextElement().toString();
			String value = session.getAttribute(name).toString();
			out.println(name + " : " + value + "<br>");
		}
	%>
		<a href="04_setSession.jsp">돌아가기</a>
</body>
</html>