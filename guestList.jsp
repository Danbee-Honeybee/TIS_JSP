<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Vector" %>
<%@ page import="net.tis.sql.GuestSQL" %>
<%@ page import="net.tis.sql.GuestDTO" %>
<%@ include file ="ssi.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[geustList.jsp]</title>
	<style type="text/css">
		*{font-size:16pt;}
		a{ font-size: 16pt; color:black; text-decoration:none;}
		a:hover{ font-size: 16pt; color:blue; text-decoration:underline;}
		#span_rcnt { font-size: 16pt; color:red; }
	</style>
	
	<script type="text/javascript">
	    function clearText(){
		   document.sform.keyword.value="";
		   document.sform.keyword.focus();
		}
  	</script>
</head>
<body> <!-- 이 파일은 단독실행 가능 -->
<%! GuestSQL GS= new GuestSQL(); %>
<table width=900 border="1" cellspacing="0">
	<tr align="center">
	<td colspan="8">
	<a href="guestWrite.jsp">[회원등록]</a>
 	<a href="index.jsp">[index]</a>
	<a href="login.jsp">[로그인]</a>
	</td>
</tr>

<tr align="center" bgcolor="yellow">
<td>행번호</td> <td>사번</td> <td>이름</td> 
<td>제목</td> <td>날짜</td> <td>조회수</td>
</tr>

<%	int j=0;
	ArrayList<GuestDTO> LG = GS.dbSelect(); 
	for(GuestDTO bean : LG){
		int Gsabun    = bean.getSabun();
		String Gtitle = bean.getTitle();
%>
<tr align="center" onmouseover="style.backgroundColor='rgb(0,200,200)'" onmouseout="style.backgroundColor=''">
  <td><%= bean.getRn()  %></td>
  <td><%= bean.getSabun() %></td>
  <td><%= bean.getName() %></td>
  <td><a href="guestDetail.jsp?idx=<%=Gsabun%>"><%=Gtitle%></a></td> 
  <td><%= bean.getWdate() %></td>
  <td><%= bean.getHit() %></td>
</tr>
<% } %>
	<tr>
		<td colspan="8" align="center">
		<a href="guestWrite.jsp">[회원등록]</a>
	 	<a href="index.jsp">[index]</a>
 		<a href="login.jsp">[로그인]</a>&nbsp;
 		총레코드갯수:<%=GS.dbGtotal() %> &nbsp;&nbsp;
		</td>
	</tr>
	<tr>
	<td colspan="8" align="center">
		<form name="searchform">
			<select name = "keyfield" onchange="clearText();">
				<option value="">==검색==</option>
				<option value="sabun">사번검색</option>
				<option value="name">이름검색</option>
				<option value="title">제목검색</option>
			</select>
			 <input type="text" name="keyword" size="10">
			 <input type="submit" value="검색">
		</form>
	</td>
	</tr>

</table>
</body>
</html>