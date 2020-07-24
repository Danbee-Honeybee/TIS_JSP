<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="ssi.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[geustList.jsp]</title>
<style type="text/css">
</style>
</head>
<body> <!-- 이 파일은 단독실행 가능 -->
<%
	msg="select count(*) as Record from guest";
	RS=ST.executeQuery(msg);
	RS.next();
	Gtotal = RS.getInt("RECORD");
%>
<p id="Pline">

<table width=900 border="1" cellspacing="0">
<tr align="center">
	<td colspan="8">레코드 갯수 [<%= Gtotal %>]</td>
</tr>

<tr bgcolor="yellow">
<td>행번호</td> <td>사번</td> <td>이름</td> <td>제목</td> <td>이메일</td> <td>날짜</td> <td>조회수</td> <td>삭제</td>
</tr>

<%
    msg="select rownum rn, g.* from guest g";
    RS=ST.executeQuery(msg);
	while(RS.next()){
		//Grownum=RS.getInt("rn");
		Gsabun=RS.getInt("sabun");
		Gtitle=RS.getString("title");
		Gemail=RS.getString("email");
%>
<tr>
  <td><%= RS.getInt("rn") %></td>
  <td><%= RS.getInt("sabun") %></td>
  <td><%= RS.getString("name") %></td> 
  <td><a href="guestDetail.jsp?idx=<%=Gsabun%>"><%= RS.getString("title") %></a></td> 
  <td><%= RS.getString("email") %></td>
  <td><%= RS.getDate("wdate") %></td> 
  <td><%= RS.getInt("hit") %></td>
  <td align="center"><input type="button" value="삭제" onclick="location.href='guestDelete.jsp?idx=<%=Gsabun %>'"></td>
</tr>
<% } %>
</table>
<br>
 <a href="guestWriteCheck.jsp">[회원등록]</a>
 <a href="index.jsp">[메인화면]</a>
 <a href="guestList.jsp">[전체출력]</a>	
	<p><br>
</body>
</html>