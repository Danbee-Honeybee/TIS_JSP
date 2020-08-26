<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[geustDetail.jsp]</title>
<style type="text/css">
	*{font-size:10pt;}
	a{ font-size: 10pt; color:black; text-decoration:none; border:0px; 
	   padding:3px; border-radius:5px;}
	a:hover{ font-size: 10pt; color:LightCoral; text-decoration:underline;}
	#span_rcnt { font-size: 10pt; color:red; }
</style>
</head>
<body> <!-- 이 파일은 단독실행 가능 -->

<p>

  <Table width=400 border="1" cellspacing="0">
	<tr align="center">
		<td colspan="2" bgcolor="skyblue"><p>사번 [${DTO.sabun}]</p></td>
	</tr>
	<tr>
		<td rowspan="4" width=100>
		<img src="images/pic_5.jpg" width=100></td>
		<td> 이름 : ${DTO.name} </td>
	</tr>
	<tr>
		<td> 제목 : ${DTO.title}</td>
	</tr>
	<tr>
		<td> 급여 : ${DTO.pay}</td>
	</tr>
	<tr>
		<td> 메일 : ${DTO.email}</td>
	</tr>
	<tr>
		<td colspan="2" align="center"><p>
		 <a href="geditpre.do?idx=${DTO.sabun}">[수정]</a>
		 <a href="guestWrite.jsp">[등록]</a>
		 <a href="gdelete.do?idx=${DTO.sabun}">[삭제]</a>
		 <a href="index.jsp">[index]]</a>
		 <a href="glist.do">[전체출력]</a>
	 	</p><br>
		</td>
	</tr>
  </Table>
  <!-- 댓글 문서 여기에 붙일거야요 guestReply.jsp -->
  <br>
  <jsp:include page="guestReply.jsp">
  	<jsp:param name="Gidx" value="${DTO.sabun}"/>
  </jsp:include>
  
  </body>
</html>