<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestReply_delete.jsp] </title>
	<style type="text/css">
	  *{ font-size: 16pt; font-weight: bold; }
	  a{ font-size: 16pt; text-decoration:none; color:blue ; font-family: Comic Sans MS; }
	  a:hover{ font-size: 18pt; text-decoration:underline; color:green ; font-family: Comic Sans MS; }
	  #rsave{
	    font-size: 26pt; font-weight: bold;
	    background:lightgreen;   height:130px;
	  }
	</style>
</head>
<body>
   <%
   //guestReply_delete 단독실행 금지
   String Ddata = request.getParameter("Didx");
   msg = "delete from guestreply where num =" + Ddata;
   ST=CN.createStatement();
   ST.executeUpdate(msg);
   %>
   <script>
   alert("댓글이 삭제되었습니다.");
   location.href="guestDetail.jsp";
   </script>
</body>
</html>






