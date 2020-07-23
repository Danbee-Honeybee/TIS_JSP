<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestDelete.jsp]</title>
<script>
   var flag = false;

   function yes(){
      <%
      try{ //삭제하는 쿼리
         System.out.println("[guestDelete2] accessed to function 'yes'");
         int ret = Integer.parseInt(request.getParameter("idx"));
	        msg="delete from guest where sabun =" + ret;
	        ST=CN.createStatement();
	        ST.executeUpdate(msg);
         System.out.println("[guestDelete2_yes]데이터 삭제 성공 했습니다.");
      } catch (Exception e){}
      //response.sendRedirect("guestList.jsp");
      %>
      return;
   }
   
   function no(){
	      <%System.out.println("[guestDelete2_no] accessed to function 'no' ");%>
	      alert("삭제를 취소 했습니다.");
	      return;
	   }
</script>
<style type="text/css">
</style>
</head>
<body>
 정말 삭제하시겠어요?
<div>
  <form name="myform" action="guestList.jsp">
  <input type="button"  onclick="yes();" name="yes" value="확인">
  <input type="button"  onclick="no();" name="no" value="취소">
  </form>
  </div>
</body>
</html>