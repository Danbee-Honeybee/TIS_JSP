<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
		<jsp:useBean id="info" class="com.mission.javabeans.MovieBean"></jsp:useBean>
		<jsp:setProperty name="info" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movieWriteSave</title>
</head>
<body>
		<h1>입력한 영화 정보</h1>
		<table>
				<tr>
						<td>제목</td>
						<td><jsp:getProperty name="info" property="title"/></td>
				</tr>
				<tr>
						<td>가격</td>
						<td><jsp:getProperty name="info" property="price"/></td>
				</tr>
				<tr>
						<td>감독</td>
						<td><jsp:getProperty name="info" property="director"/></td>
				</tr>
				<tr>
						<td>배우</td>
						<td><jsp:getProperty name="info" property="actor"/></td>
				</tr>
				<tr>
						<td>후기</td>
						<td><jsp:getProperty name="info" property="synopsis"/></td>
				</tr>
				<tr>
						<td>장르</td>
						<td><jsp:getProperty name="info" property="genre"/></td>
				</tr>
		</table>
</body>
</html>