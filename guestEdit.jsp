<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestEdit.jsp]</title>
<style type="text/css">
</style>
</head>
<body>
<%
    Gdata= request.getParameter("idx");
    System.out.println("[guestEdit] 넘어온 Gsabun : " + Gdata);
  %>


 <form method="get" action="guestEditSave.jsp">
 사번 : <input type="text" name="sabun" value="<%=Gdata %>"><br>
 이름 : <input type="text" name="name" value=""><br> 
 제목 : <input type="text" name="title" value=""><br>
 급여 : <input type="text" name="pay" value=""><br> 
 메일 : <input type="text" name="email" value=""><br>
      <input type="submit" value="수정완료">
      <input type="reset" value="수정취소">
   </form>
   <p>
   <a href="guestList.jsp">[뒤로가기]</a>
   </p>
</body>
</html>