<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 04_researchForm.jsp ] </title>
 
 <style type="text/css">
   * { font-size:15pt; font-weight:bold;}
   a { font-size: 15pt; color:black; text-decoration:none; border:1px solid black; border-radius:5px;}
   a:hover { font-size: 15pt; color:MediumSeaGreen;}
 </style>
</head>
<body>
		04_researchForm.jsp (315p)<br>
		<form action="04_researchSave.jsp">
		제목 : <input type="text" name="title" value="snow"> 	<br>
		나이 : <input type="text" name="age"   value="27"> 	<br>
		계절 : 
				<input type="checkbox" name="hobby" value="zebra"> 	얼룩말
				<input type="checkbox" name="hobby" value="pig">  	돼지
				<input type="checkbox" name="hobby" value="crab"> 	크랩
				<input type="checkbox" name="hobby" value="bull"> 	황소
				<br>
				<input type="submit"   value="결과보기">
				<input type="reset"    value="선택취소">
		</form>
		<hr><br>
		<a href="04_researchForm.jsp">SEASON	</a> &nbsp;
		<a href="index.jsp">		  INDEX		</a> &nbsp;
		<a href="guestList.jsp">	  GUESTLIST	</a>
		
</body>
</html>