<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body>
	AAA.jsp 문서 데이터 던져요 <p>
	<%
		String Gname="길동";
		int Gpay=96; //pay는 무조건 두자리로 맞추기
	%>
	<hr>
	<div align="center">
	<a href="BBB.jsp?n=<%=Gname %>&p=<%=Gpay%>">[BBB]</a>
	<a href="index.jsp">[index]</a>
	<a href="guestWrite.jsp">[등록]</a>
	<a href="guestList.jsp">[출력]</a>
	<p>
	<img src="images/bar.gif"> <br>
	<img src="images/bar.gif"> <br>
	<img src="images/bar.gif"> <br>
	</div> <p><br>
</body>
</html>