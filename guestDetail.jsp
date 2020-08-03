<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="net.tis.sql.GuestSQL" %>
<%@ page import="net.tis.sql.GuestDTO" %>
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
<%! GuestSQL GS= new GuestSQL(); %>
<%
    String Gdata = request.getParameter("idx");
	GuestDTO bean = (GuestDTO) GS.dbDetail(Gdata);
	int Gsabun = bean.getSabun();
%>
	<p>
<table width=900 border="0" cellspacing="0">
	<tr align="center">
	  <td>[<%= Gsabun %>] 의 상세페이지</td>
	</tr>
</table>

<p>

  <Table width=900 border="1" cellspacing="0">
	<tr align="center">
		<td colspan="2" bgcolor="skyblue"><p>사번 [<%= Gsabun %>]</p></td>
	</tr>
	<tr><td rowspan="4" width=300><img src="images/pic_5.jpg" width=300></td>
		<td> 이름 : <%= bean.getName() %> </td></tr>
	<tr><td> 제목 : <%= bean.getTitle() %></td></tr>
	<tr><td> 메일 : <%= bean.getEmail() %></td></tr>
	<tr><td> 날짜 : <%= bean.getWdate() %></td></tr>
	<tr>
		<td colspan="2" align="center"><p>
		 <a href="guestWrite.jsp">[등록]</a>
		 <a href="guestEdit.jsp?sa=<%=Gsabun%>&na=<%=bean.getName()%>&ta=<%=bean.getTitle()%>&pa=<%= bean.getPay()%>&ea=<%= bean.getEmail() %>">[수정]</a>
		 <a href="guestDelete.jsp?idx=<%=Gsabun%>">[삭제]</a>
		 <a href="index.jsp">[메인화면]</a>
		 <a href="guestList.jsp">[전체출력]</a>
	 	</p><br>
		</td>
	</tr>
  </Table>
  <!-- 댓글 문서 여기에 붙일거야요 guestReply.jsp -->
  <br>
  <jsp:include page="guestReply.jsp">
  	<jsp:param name="Gidx" value="<%=Gsabun %>"/>
  </jsp:include>
  
  </body>
</html>