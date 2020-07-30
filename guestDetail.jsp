<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[geustDetail.jsp]</title>
<style type="text/css">
	*{font-size:16pt;}
	a{ font-size: 16pt; color:black; text-decoration:none;}
	a:hover{ font-size: 16pt; color:blue; text-decoration:underline;}
</style>
</head>
<body align = "center"> <!-- 이 파일은 단독실행 가능 -->

<%
    Gdata = request.getParameter("idx");
	System.out.println("[guestDetail] 넘어온 Gsabun : " + Gdata);
    msg="select * from guest where sabun = " + Gdata;
    ST=CN.createStatement();
    RS=ST.executeQuery(msg); // 조회한 한건의 결과를 RS가 기억하는중
%>
	<p>
<table width=600 border="1" cellspacing="0">
	<tr bgcolor="yellow">
		<td>사번</td> <td>이름</td> <td>제목</td> <td>이메일</td><td>날짜</td> <td>조회수</td>
	</tr>
<%
	if (RS.next()){
		Gsabun=RS.getInt("sabun");
		Gtitle=RS.getString("title");
		Gemail=RS.getString("email");
		Gpay=RS.getInt("pay");
%>
<tr>
  <td><%= Gsabun %></td>
  <td><%= RS.getString("name") %></td> 
  <td><%= RS.getString("title") %></td> 
  <td><%= RS.getString("email") %></td>
  <td><%= RS.getDate("wdate") %></td> 
  <td><%= RS.getInt("hit") %></td>
</tr>

<% } %>
</table>

<p>

  <Table width=600 border="1" cellspacing="0">
	<tr align="center">
		<td colspan="2" bgcolor="skyblue"><p>사번 [<%= Gsabun %>]</p></td>
	</tr>
	<tr>
		<td rowspan="4" width=300>
		<img src="images/pic_5.jpg" width=300></td>
		<td> 이름 : <%= RS.getString("name") %> </td>
	</tr>
	<tr>
		<td> 제목 : <%= RS.getString("title") %></td>
	</tr>
	<tr>
		<td> 메일 : <%= RS.getString("email") %></td>
	</tr>
	<tr>
		<td> 날짜 : <%= RS.getDate("wdate") %></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><p>
		 <a href="guestWrite.jsp">[등록]</a>
		 <a href="guestEdit.jsp?sa=<%=Gsabun%>&na=<%=Gname%>&ta=<%=Gtitle%>&pa=<%=Gpay%>&ea=<%=Gemail%>">[수정]</a>
		 <a href="guestDelete222.jsp?idx=<%=Gsabun%>">[삭제]</a>
		 <a href="index.jsp">[메인화면]</a>
		 <a href="guestList.jsp">[전체출력]</a>
	 </p>
		</td>
	</tr>
  </Table>
  <!-- 댓글 문서 여기에 붙일거야요 guestReply.jsp -->
  
  </body>
</html>