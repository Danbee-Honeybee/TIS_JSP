<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[MovieWrite]</title>
</head>
<body>
		<h1>정보 등록</h1>
		<form method="post" action="movieWriteSave.jsp">
		제목 : <input type="text" name="title" value="설국열차"> <br>
		가격 : <input type="text" name="price" value="7000">원  <br>
		감독 : <input type="text" name="director" value="봉준호">   <br>
		배우 : <input type="text" name="actor" value="송강호">   <br>
		시놉시스 : <input type="text" name="synopsis" value=""> <br>
		<select name="genre">
			<option value="로맨스">로맨스</option>
			<option value="스릴러">스릴러</option>
			<option value="미스터리">미스터리</option>
			<option value="액션" selected="selected">액션</option>
			<option value="코미디">코미디</option>
			<option value="애니메이션">애니메이션</option>
		</select>
		
		<input type="submit" value="확인">
		<input type="button" value="취소">
		</form>
</body>
</html>