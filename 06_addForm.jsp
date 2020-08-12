<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 06_addForm.jsp ] </title>
 
 <style type="text/css">
   * { font-size:15pt; font-weight:bold;}
   a { font-size: 15pt; color:black; text-decoration:none; border:1px solid black; border-radius:5px;}
   a:hover { font-size: 15pt; color:MediumSeaGreen;}
 </style>
</head>
<body>
		06_addForm.jsp (323p)<br>
		<form action="06_addFormSave.jsp">
		숫자1 : <input type="text" name="num1" value="30"> 	<br>
		숫자2 : <input type="text" name="num2"   value="2"> 	<br>
			   <br>
			   <input type="submit"   value="결과보기">
			   <input type="reset"    value="선택취소">
		</form>
		<hr><br>
		<a href="04_researchForm.jsp">SEASON	</a> &nbsp;
		<a href="06_addForm.jsp">	  CALCUL	</a> &nbsp;
		<a href="index.jsp">		  INDEX		</a> &nbsp;
		<a href="guestList.jsp">	  GUESTLIST	</a>
		
</body>
</html>