<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestEdit.jsp]</title>
</head>
<body>
  EL태그로 데이터 접근하기 <br>
 <form method="get" action="geditpre.do">
 사번 : <input type="text" name="sabun" value="${DTO.sabun}" readonly><br>
 이름 : <input type="text" name="name"  value="${DTO.name}"><br> 
 제목 : <input type="text" name="title" value="${DTO.title}"><br>
 급여 : <input type="text" name="pay"   value="${DTO.pay}"><br> 
 메일 : <input type="text" name="email" value="${DTO.email}"><br>
      <input type="submit" value="수정완료">
      <input type="reset"  value="수정취소">
   </form>
   <p>
   <a href="guestWrite.jsp">[등록]	</a>
   <a href="glist.do">		[전체출력]</a>
   <a href="index.jsp">		[index]	</a>
   </p>
</body>
</html>