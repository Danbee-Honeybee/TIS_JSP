<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 06_addFormSave.jsp ] </title>
<style>
   * { font-size:15pt; font-weight:bold;}
   a { font-size: 15pt; color:black; text-decoration:none; border:1px solid black; border-radius:5px;}
   a:hover { font-size: 15pt; color:MediumSeaGreen;}
</style>
</head>
<body>
		06_addFormSave.jsp (324p 21라인참고) 단독실행하면 에러 <br>
		<!-- 377p 17번라인 참고 -->
		<c:catch>
		  ${param.num1 + $param.num2 = ${param.num1+$param.num2}}<br>
		  ${param.num1 - $param.num2 = ${param.num1-$param.num2}}<br>
		  ${param.num1 * $param.num2 = ${param.num1*$param.num2}}<br>
		  ${param.num1 / $param.num2 = ${param.num1/$param.num2}}<br>
		  ${param.num1 % $param.num2 = ${param.num1%$param.num2}}<br>
		</c:catch>
		
		
		<hr><br>
		<a href="04_researchForm.jsp">SEASON	</a> &nbsp;
		<a href="06_addForm.jsp">	  CALCUL	</a> &nbsp;
		<a href="index.jsp">		  INDEX		</a> &nbsp;
		<a href="guestList.jsp">	  GUESTLIST	</a>
</body>
</html>