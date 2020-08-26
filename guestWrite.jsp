<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestWrite.jsp 응용]</title>
<style type="text/css">
	*{font-size:16pt;}
	a{ font-size: 16pt; color:black; text-decoration:none;}
	a:hover{ font-size: 16pt; color:blue; text-decoration:underline;}
</style>
</head>
<body>
 <p> guestWrite.jsp & ginsert.do 연결 <p>
 <form name="myform" action="ginsert.do">
 사번 : <input type="text" name="sabun"  maxlength="4" value="" size="10"> <br>
 이름 : <input type="text" name="name" value="blue"> <br>
 제목 : <input type="text" name="title" value="blue"><br>
 급여 : <input type="text" name="pay" value="97"><br>
 메일 : <input type="text" name="email" value="sky@tis.com"><br>
 
      <input type="submit" value="MVC2서브밋등록하기">
      <input type="reset" value="입력취소">
      <!-- <input type="hidden" name="duplication_ch" id="duplication_ch" value="idUncheck"> -->
 </form>
 
 <p>
 <a href="ginsert.do">[회원등록]</a>
 <a href="index.jsp">[메인화면]</a>
 <a href="glist.do">[전체출력]</a>	
 <p><br>
 <jsp:include page="guest_footer.jsp"/>
</body>
</html>