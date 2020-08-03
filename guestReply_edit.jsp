<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<%@ page import="net.tis.sql.GuestSQL"%>
<%@ page import="net.tis.sql.GuestDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestReply_edit.jsp] </title>
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
<body> <!-- 단독실행 금지 -->
<%! GuestSQL SQL = new GuestSQL(); %>
    <%
    String Gnum = request.getParameter("Enum");
    String Gwriter= request.getParameter("Ewriter");
    String Gcontent= request.getParameter("Econtent");
    int Gsabun = Integer.parseInt(request.getParameter("Esabun"));
    %>

 <form method="get" action="guestReply_editSave.jsp">
 	  <input type="hidden" name="num" value="<%=Gnum%>">
 이름 : <input type="text" name="writer" value="<%=Gwriter%>"> <br> 
 제목 : <input type="text" name="content" value="<%=Gcontent%>"> <br>
 	  <input type="hidden" name="sabun" value="<%=Gsabun%>">
      <input type="submit" value="수정완료">
      <input type="reset" value="수정취소">
   </form>
   <p>
   <a href="guestDetail.jsp">[뒤로가기]</a>
   </p>
</body>
</html>






