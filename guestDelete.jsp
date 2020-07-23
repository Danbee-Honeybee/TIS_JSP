<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestDelete.jsp]</title>
<style type="text/css">
</style>
</head>
<body>
<%  //삭제하는 쿼리
	try{ 
        System.out.println("[guestDelete] Body accessed ");
        
		int ret = Integer.parseInt(request.getParameter("idx"));
        msg="delete from guest where sabun =" + ret;
        ST=CN.createStatement();
        ST.executeUpdate(msg);
    
        System.out.println("[guestDelete] Data deleted ");
    } catch (Exception e){}
    response.sendRedirect("guestList.jsp");
%>
</body>
</html>