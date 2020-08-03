<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import="net.tis.sql.GuestSQL" %>
<%@ page import="net.tis.sql.GuestDTO" %>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestReply_editSave.jsp] </title>
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
    String Gnum = request.getParameter("num");
    String Gwriter= request.getParameter("writer");
    String Gcontent= request.getParameter("content");
    int Gsabun = Integer.parseInt(request.getParameter("sabun"));
		    
      msg = " update guestreply set WRITER= '" 
   				+ Gwriter + "', CONTENT= '" 
   				+ Gcontent + "' where NUM= " 
   				+ Gnum;
      		ST=CN.createStatement();
			ST.executeUpdate(msg);
  %>
  		<script type="text/javascript">
  		alert("데이터가 수정 되었습니다.");
  		location.href="guestList.jsp";
  		</script>
  		
</body>
</html>






