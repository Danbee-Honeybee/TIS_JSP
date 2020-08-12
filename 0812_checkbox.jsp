<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 0812_checkbox.jsp ] </title>
 <style type="text/css">
   * { font-size:24pt; }
 </style>
</head>
<body>
	0812_checkbox.jsp
	<h2>악세사리</h2>
	관심항목을 선택하세요.<hr>
	<form method="get" action="0812_checkboxSave.jsp">
	<input type="checkbox" name="item" value="신발"> 		신발
	<input type="checkbox" name="item" value="가방"> 		가방
	<input type="checkbox" name="item" value="벨트">  	벨트 	<hr>
	<input type="checkbox" name="item" value="모자"> 	  	모자
	<input type="checkbox" name="item" value="시계"> 	  	시계
	<input type="checkbox" name="item" value="쥬얼리"> 	쥬얼리 <br>
	<input type="submit" value="전송">
	</form>	
</body>
</html>