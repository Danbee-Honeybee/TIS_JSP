<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 04_researchSave.jsp ] </title>
<style>
   * { font-size:15pt; font-weight:bold;}
   a { font-size: 15pt; color:black; text-decoration:none; border:1px solid black; border-radius:5px;}
   a:hover { font-size: 15pt; color:MediumSeaGreen;}
</style>
</head>
<body>
		04_researchSave.jsp 단독실행하면 에러 <br>
		<%
			String title  = request.getParameter("title");
			int    age    = Integer.parseInt(request.getParameter("age"));
			
			out.println("넘어온제목 : " + title +"<br>");
			out.println("넘어온나이 : " + age   +"<br>");
		%>
		<hr> param사용<br>
		넘어온제목 = ${param.title}<br>
		넘어온나이 = ${param["age"]}  <br>
		넘어온동물 = ${param.hobby}
		<c:forEach items="${paramValues.hobby}" var="ss">
		    ${ss}
		</c:forEach>
		<hr><br>
		<a href="04_researchForm.jsp"> SEASON	</a> &nbsp;
		<a href="index.jsp">		   INDEX		</a> &nbsp;
		<a href="guestList.jsp">	   GUESTLIST	</a>
</body>
</html>