<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AAA.jsp</title>
	<style type="text/css">
	  *{font-size: 26pt;}
	  a{font-size: 26pt; text-decoration: none; color:green}
	   a:hover{font-size: 30pt;  color:blue}
	</style>

</head>
<body>
   
  <div align="center">
    AAA문서 <br>
 	<img src="images/bar.gif"><br>
 	<img src="images/bar.gif"><br>
  </div>
	<hr color=red size=5>
	<jsp:include page="BBB.jsp">
	 <jsp:param name="" value=""/>
	 </jsp:include>
 <p><br>   
</body>
</html>