<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestWrite.jsp 입력 화면]</title>
<style type="text/css">
	*{font-size:16pt;}
	a{ font-size: 16pt; color:black; text-decoration:none;}
	a:hover{ font-size: 16pt; color:blue; text-decoration:underline;}
</style>
</head>
<body>
<!-- 주석 -->
 <p>
  guestWrite.jsp문서 입력화면<p>
 <form method="get" action="guestWriteSave2.jsp">
 사번 : <input type="text" name="sabun" value="6666"><br>
 이름 : <input type="text" name="name" value="yuk"><br> 
 제목 : <input type="text" name="title" value="yuyu"><br>
 급여 : <input type="text" name="pay" value="66"><br> 
 메일 : <input type="text" name="email" value="yy@tis.com"><br>
      <input type="submit" value="등록하기">
      <input type="reset" value="입력취소">
 </form>
 
 <p>
 <a href="guestWrite.jsp">[회원등록]</a>
 <a href="index.jsp">[메인화면]</a>
 <a href="guestList.jsp">[전체출력]</a>	
 <p><br>
</body>
</html>