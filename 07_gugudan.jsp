<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 07_gugudan.jsp ] </title>
 
 <style type="text/css">
   * { font-size:15pt; font-weight:bold;}
   a { font-size: 15pt; color:black; text-decoration:none; border:1px solid black; border-radius:5px;}
   a:hover { font-size: 15pt; color:MediumSeaGreen;}
 </style>
</head>
<body>
		07_gugudan.jsp (347p)<br><hr>
		<!-- 349p 변수선언 set -->
		<%
		int dan = 21;
		%>
		
		<c:set var="dan" value="${3}" scope="page"/>
		dan 변수값 = ${dan} <br><hr>
		
		구구단 : <br>
		<c:catch>
			<c:forEach var="i" begin="1" end="9">
				${dan} * ${i}=${dan*i} <br>
			</c:forEach>
		</c:catch>
		
		<hr>
		<a href="04_researchForm.jsp">SEASON	</a> &nbsp;
		<a href="06_addForm.jsp">	  CALCUL	</a> &nbsp;
		<a href="index.jsp">		  INDEX		</a> &nbsp;
		<a href="guestList.jsp">	  GUESTLIST	</a>
		
</body>
</html>