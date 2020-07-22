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
	Gsabun = Integer.parseInt(request.getParameter("sabun"));
	Gname  = request.getParameter("name");
	Gtitle = request.getParameter("title");
	Gpay   = Integer.parseInt(request.getParameter("pay"));
	Gemail = request.getParameter("email");
  
    try{ //수정하는 쿼리
      msg = "update guest set sabun=?, name=?, title=?, pay=?, email=? " 
    	   +" where sabun= "+ Gsabun;
      	PST = CN.prepareStatement(msg);
  		PST.setInt(1, Gsabun);
  		PST.setString(2, Gname);
  		PST.setString(3, Gtitle);
  		PST.setInt(4, Gpay);
  		PST.setString(5, Gemail);
  		PST.executeUpdate();
  	System.out.println("데이터 수정 성공 했습니다.");
    response.sendRedirect("guestList.jsp");
    } catch (Exception e){
  	System.out.println("[guestEidtSave.jsp] 에러 사유 : " + e);}
%>
  
</body>
</html>