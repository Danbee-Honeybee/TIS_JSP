<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestDelete.jsp]</title>
<style type="text/css">
</style>
</head>
<body>
<%  //삭제하는 쿼리
	String temp = (String)session.getAttribute("naver"); //LoginList에서 naver에 a값을 넣었음 
	if (temp==null || temp==""){
		%>
		<script type="text/javascript">
		alert("삭제 권한이 없습니다. 로그인하세요.");
		location.href="login.jsp"
		</script>
		<%
	}else{
      System.out.println("[guestDelete] Body accessed ");
	  int ret = Integer.parseInt(request.getParameter("idx"));
      msg="delete from guest where sabun =" + ret;
      ST=CN.createStatement();
      ST.executeUpdate(msg);
      System.out.println("[guestDelete] Data deleted ");
  	//response.sendRedirect("guestList.jsp");
	
  	//1) index 실행 후 제목 클릭
	//2) guestDetail.jsp 에서 한건 삭제해보기

  	%>
	<script type="text/javascript">
	alert("데이터가 삭제되었습니다. 복귀작업은 안됩니다.");
	location.href="guestList.jsp";
	</script>
  	<%}%>
</body>
</html>