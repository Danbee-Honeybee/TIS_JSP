<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<jsp:useBean id="sql" class="net.tis.sql.GuestSQL"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestWriteSave.jsp]</title>
<style type="text/css">

</style>
</head>
<body>
 <p>
  <%
  Date now = new Date();
  System.out.println("[guestWriteSave] Oracle Connected at "+ now);	 
  
     Gsabun = Integer.parseInt(request.getParameter("sabun"));
     Gname  = request.getParameter("name");
     Gtitle = request.getParameter("title");
     Gpay   = Integer.parseInt(request.getParameter("pay"));
     Gemail = request.getParameter("email");
     
     System.out.println("[guestWriteSave] 사번=" + Gsabun);
     System.out.println("[guestWriteSave] 이름=" + Gname);
     System.out.println("[guestWriteSave] 제목=" + Gtitle);
     System.out.println("[guestWriteSave] 급여=" + Gpay);
     System.out.println("[guestWriteSave] 메일=" + Gemail);
     
     //중복체크
     try{
     msg="select count(*) as cnt from guest where sabun=" + Gsabun;
     ST=CN.createStatement();
     RS=ST.executeQuery(msg);
     } catch (Exception e){
     
     if (Gsabun>0) {
	        %>
	        <script type="text/javascript">
	        alert("<%=Gsabun%>은 이미 사용중인 사번 입니다. 다른 사번을 이용하세요.");
	        location.href="guestWrite.jsp";
	        </script>
	        <%
	       
    } else {
	    	    //guest테이블에 저장하는 코드
	    		sql.dbInsert(Gsabun, Gname, Gtitle, Gpay, Gemail);
	    	%>	<script type="text/javascript">
	    	    location.href="guestList.jsp";
	    	    </script>
	    	<%
	    	}
    	//response.sendRedirect("guestList.jsp");
  	    System.out.println("[guestWriteSave] 에러 사유 : " + e);}
  %>
</body>
</html>