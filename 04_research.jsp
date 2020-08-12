<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 04_research.jsp ] </title>
 
 <style type="text/css">
   * { font-size:20pt; }
   a { font-size: 20pt; color:black; text-decoration:none;}
   a:hover { font-size: 20pt; color:MediumSeaGreen; text-decoration:underline;}
 </style>
</head>
<body>
		04_research.jsp<br>
		<form action="04_researchSave.jsp">
		좋아하는 계절:
		<input type="checkbox" name="season" value="spring"> 봄
		<input type="checkbox" name="season" value="summer"> 여름
		<input type="checkbox" name="season" value="fail"> 가을
		<input type="checkbox" name="season" value="winter"> 겨울
		</form>
</body>
</html>