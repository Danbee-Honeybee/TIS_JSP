<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String Guser;
	int Gsalary;
%>
<!DOCTYPE html>
<html>
<head> <meta charset="UTF-8">
	<title>AAA</title>
		<style type="text/css">
			*{font-size: 30px;}
			a{font-size: 30px; text-decoration: none; color:blue}
			a:hover{font-size: 32px; text-decoration: underline; color:green}
		</style> 
</head>
<body> <!-- BBB.jsp단독실행금지 -->
	BBB.jsp 문서 데이터 받아요 <p>
	<%
	Guser = request.getParameter("n");
	Gsalary = Integer.parseInt(request.getParameter("p"));
	 %>
	
	넘어온 유저 이름 : <%=Guser%> <br>
	넘어온 유저 급여 : <%=Gsalary%> <br>
	
	<hr>
	<div align="center">
	<a href="AAA.jsp">[AAA]</a>
	<a href="index.jsp">[index]</a>
	<a href="guestWrite.jsp">[등록]</a>
	<a href="guestList.jsp">[출력]</a>
	<p>
	<img src="images/a1.png"> <br>
	</div> <p><br>
</body>
</html>

