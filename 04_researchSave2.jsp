<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 04_researchSave2.jsp ] </title>
<style>
   * { font-size:15pt; font-weight:bold;}
   a { font-size: 15pt; color:black; text-decoration:none; border:1px solid black; border-radius:5px;}
   a:hover { font-size: 15pt; color:MediumSeaGreen;}
</style>
</head>
<body>
		04_researchSave2.jsp 단독실행하면 에러 <br>
		<%
			String title  = request.getParameter("title");
			int    age    = Integer.parseInt(request.getParameter("age"));
			String season = request.getParameter("season");
			
			out.println("넘어온제목 : " + title +"<br>");
			out.println("넘어온나이 : " + age +"<br>");
			out.println("넘어온계절 : " + season);
			
			String[] data = request.getParameterValues("hobby");
			for (String dt:data){
				//out.println(dt + "<br>");
				out.println("<br><img src=images/" + dt + ".png width=200; height=200px;>");
			}
		%>
		<hr><br>
		<a href="04_researchForm.jsp">SEASON	</a> &nbsp;
		<a href="index.jsp">		  INDEX		</a> &nbsp;
		<a href="guestList.jsp">	  GUESTLIST	</a>
</body>
</html>