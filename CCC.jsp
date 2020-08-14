<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> CCC.jsp </title>
	<style type="text/css">
	  *{ font-size: 20pt; font-weight: bold; }
	  a{ font-size: 24pt; text-decoration:none; color:blue ; font-family: Comic Sans MS; }
	  a:hover{ font-size: 30pt; text-decoration:underline; color:green ; font-family: Comic Sans MS; }
	</style>
</head>
<body>
	현재문서 CCC.jsp <p>
	세션값 확인 : <%=session.getId()%>
	<hr>
	<a href="AAA.jsp">[AAA.jsp]</a>
	<a href="index.jsp">[index.jsp]</a>
	<a href="guestList.jsp">[guestList.jsp]</a>
</body>
</html>