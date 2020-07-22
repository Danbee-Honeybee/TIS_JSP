
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestWrite.jsp 입력화면]  </title>
  <style type="text/css">
	*{ font-size: 20pt; }
	a{ font-size: 20pt; color:green; text-decoration:none; }
	a:hover{ font-size:30pt; color:blue; text-decoration:underline; }
  </style>
	
	<script type="text/javascript">
	</script>
</head>
<body>
 <p>
 guestWrite.jsp문서 입력화면 <p>
 
 <form method="get" action="guestWriteSave.jsp">
    사번:<input type="text" name="sabun" > <br>
    이름:<input type="text" name="name" > <br>
    제목:<input type="text" name="title" > <br>
    급여:<input type="text" name="pay" value="97"> <br>
    메일:<input type="text" name="email" value="do@ti.org" > <br>
      <input type="submit" value="등록하기">
      <input type="reset" value="입력취소">
 </form>
	
 <br>
 <a href="guestWrite.jsp">[등록]</a>
 <a href="index.jsp">[index]</a>
 <a href="guestList.jsp">[전체출력]</a>
 <p><br>
</body>
</html>



