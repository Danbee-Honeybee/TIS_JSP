<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestReply_insert.jsp] </title>
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
     //guestReply_insert.jsp 단독실행하면 에러발생
  
	  String Ewriter = request.getParameter("newWriter");
	  String Econtent = request.getParameter("newContent");
	  String Esabun = request.getParameter("newSabun");
  
	   msg = "INSERT INTO GUESTREPLY VALUES(guestreply_seq.nextval, '"+Ewriter+"', '"+Econtent+"', "+Esabun+")";
	   ST=CN.createStatement();
	   ST.executeUpdate(msg);
	   System.out.println("[guestReply_insert] 댓글저장 성공했습니다");
	   /* response.sendRedirect("guestDetail.jsp?idx=" + Esabun); */
 %>
 
	   	<script type="text/javascript">
  		alert("댓글이 등록 되었습니다.");
  		location.href="guestList.jsp";
  		</script>

</body>
</html>






