<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestDelete.jsp]</title>
<style type="text/css">
	*{font-size:16pt;}
	a{ font-size: 16pt; color:black; text-decoration:none;}
	a:hover{ font-size: 16pt; color:blue; text-decoration:underline;}
</style>
</head>
<body>
  <%
  try{ //삭제하는 쿼리
  	int ret = Integer.parseInt(request.getParameter("idx"));
    msg="delete from guest where sabun =" + ret;
    ST=CN.createStatement();
    ST.executeUpdate(msg);
  	System.out.println("데이터 삭제 성공 했습니다.");
  } catch (Exception e){}
  response.sendRedirect("guestList.jsp");
  %>
</body>
</html>