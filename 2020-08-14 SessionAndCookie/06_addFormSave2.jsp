<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 06_addFormSave2.jsp ] </title>
<style>
   * { font-size:15pt; font-weight:bold;}
   a { font-size: 15pt; color:black; text-decoration:none; border:1px solid black; border-radius:5px;}
   a:hover { font-size: 15pt; color:MediumSeaGreen;}
</style>
</head>
<body>
		06_addFormSave2.jsp (324p 21라인참고) 단독실행하면 에러 <br>
		<%
			try{
			int a  = Integer.parseInt(request.getParameter("num1"));
			int b  = Integer.parseInt(request.getParameter("num2"));
			
			out.println("넘어온 num1 : " + a +"<br>");
			out.println("넘어온 num2 : " + b +"<br><hr>");
			
			out.println(a + " + " + b +" = " + (a+b) + "<br>");
			out.println(a + " - " + b +" = " + (a-b) + "<br>");
			out.println(a + " * " + b +" = " + (a*b) + "<br>");
			out.println(a + " / " + b +" = " + (a/b) + "<br>");
			out.println(a + " % " + b +" = " + (a%b) + "<br>");
			} catch(Exception ex){System.out.println("[에러]" + ex);}
		%>
		<hr><br>
		<a href="04_researchForm.jsp">SEASON	</a> &nbsp;
		<a href="06_addForm.jsp">	  CALCUL	</a> &nbsp;
		<a href="index.jsp">		  INDEX		</a> &nbsp;
		<a href="guestList.jsp">	  GUESTLIST	</a>
</body>
</html>