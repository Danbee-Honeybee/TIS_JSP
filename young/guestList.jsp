<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestList.jsp]  </title>
  <style type="text/css">
    #pline{ margin-top: 35px; }
	*{ font-size: 26pt; }
	a{ font-size: 30pt; color:green; text-decoration:none; }
	a:hover{ font-size:36pt; color:blue; text-decoration:underline; }
  </style>
	
  <script type="text/javascript">
  </script>
</head>
<body>
 

 <%
  msg="select count(*) as cnt from guest " ;
  ST=CN.createStatement();
  RS=ST.executeQuery(msg);
  RS.next(); //if, while 없이 이동
  Gtotal = RS.getInt("cnt");
 
  msg="select rownum,  g.* from guest g " ;
  ST=CN.createStatement();
  RS=ST.executeQuery(msg); //조회한전체결과를 RS기억 
 %>
 
 <p id="pline">
 <table width="900" border="1" cellspacing="0">
   <tr align="right">
   	 <td colspan="6">총레코드갯수: <%=Gtotal %> &nbsp;&nbsp; </td>
   </tr>
   
   <tr bgcolor="yellow">
    <td>행번호</td> <td>사번</td> <td>이름</td> 
    <td>제목</td>   <td>날짜</td> <td>조회수</td>
   </tr>

<%
  //guestList.jsp문서는 단독실행가능 
  while(RS.next()==true) {
    Gsabun = RS.getInt("sabun");
    Gtitle = RS.getString("title");
%>   
   <tr>
     <td> <%= RS.getInt("rownum") %> </td> 
     <td> <%= Gsabun %> </td> 
     <td> <%= RS.getString("name") %> </td> 
     <td> <%= RS.getString("title") %> </td> 
     <td> <%= RS.getDate("wdate") %> </td> 
     <td> <%= RS.getInt("hit") %> </td>  
   </tr>
<% } %>  

 </table>		
 <br>
 <a href="guestWrite.jsp">[등록]</a>
 <a href="index.jsp">[index]</a>
 <a href="guestList.jsp">[전체출력]</a>
 
 <p><br>
</body>
</html>




