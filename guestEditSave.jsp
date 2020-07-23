<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestEditSave.jsp]</title>
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
  	
	System.out.println("넘어온 수정 사번값 : " + Gsabun);
	System.out.println("넘어온 수정 사번값 : " + Gname);
	System.out.println("넘어온 수정 사번값 : " + Gtitle);
	System.out.println("넘어온 수정 사번값 : " + Gpay);
	System.out.println("넘어온 수정 사번값 : " + Gemail);
	
    try{ //수정하는 쿼리
      msg = "update guest set name=?, title=?, pay=?, email=? " 
    	   +" where sabun=? ";
      	PST = CN.prepareStatement(msg);
  		PST.setString(1, Gname);
  		PST.setString(2, Gtitle);
  		PST.setInt(3, Gpay);
  		PST.setString(4, Gemail);
      	PST.setInt(5, Gsabun);
  		PST.executeUpdate();
  	System.out.println("[guestEditSave] 데이터 수정 성공 했습니다.");
    response.sendRedirect("guestList.jsp");
    } catch (Exception e){
  	System.out.println("[guestEidtSave] 에러 사유 : " + e);}
%>
  
</body>
</html>