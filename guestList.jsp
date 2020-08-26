<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ include file ="ssi.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestList.jsp]</title>
	<style type="text/css">
		*{font-size:10pt;}
		a{ font-size: 10pt; color:black; text-decoration:none; border:0px; 
		    padding:3px; border-radius:5px;}
		a:hover{ font-size: 10pt; color:LightCoral; text-decoration:underline;}
		#span_rcnt { font-size: 10pt; color:red; }
		td{padding:10px;}
		table{border:1px solid black;}
	</style>
	
	<script type="text/javascript">
	    function clearText(){
		   document.sform.keyword.value="";
		   document.sform.keyword.focus();
		}
  	</script>
</head>
<body>
<table width=400 border='0.5' cellspacing="0">
	<tr align="center">
	<td colspan="8"> 회원조회</td>
</tr>

<tr>
	<td colspan="8" align="center">
	<a href="guestWrite.jsp">회원등록</a>
 	<a href="index.jsp">index</a>
		<a href="login.jsp">로그인</a>&nbsp;
		총 레코드 :${Gtotal} &nbsp;&nbsp;
	</td>
</tr>
	
<tr align="center" bgcolor="DarkSalmon">
<td>행번호</td> <td>사번</td> <td>이름</td> 
<td>제목</td> <td>날짜</td> <td>조회수</td>
</tr>

<c:forEach var="DTO" items="${LG}">

<tr align="center" onmouseover="style.backgroundColor='Cornsilk'" onmouseout="style.backgroundColor=''">
  <td>${DTO.rn}		</td>
  <td>${DTO.sabun}	</td>
  <td>${DTO.name}	</td>
  <td><a href="gdetail.do?idx=${DTO.sabun}">${DTO.title}</a></td> 
  <td>${DTO.wdate}	</td>
  <td>${DTO.hit}	</td>
</tr>
</c:forEach>

<tr>
	<td colspan="8" align="center">
		<c:forEach var="i" begin="${startpage}" end="${endpage}" step="1">
			<a href="glist.do?pageNum=${i}">[${i}]</a>
		</c:forEach>
	</td>
</tr>

	<tr>
	<td colspan="8" align="center">
		<form name="searchform">
			<select name = "keyfield" onchange="clearText();">
				<option value="">	 ==검색==</option>
				<option value="sabun">사번검색</option>
				<option value="name"> 이름검색</option>
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