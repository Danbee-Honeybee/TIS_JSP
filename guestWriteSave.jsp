<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="sql" class="net.tis.sql.GuestSQL" />
<jsp:useBean id="dto" class="net.tis.sql.GuestDTO" />
<jsp:useBean id="now" class="java.util.Date"/>
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
  	 System.out.println("[guestWriteSave] Oracle Connected at "+ now);	 
  
     int Gsabun = Integer.parseInt(request.getParameter("sabun"));
     String Gname  = request.getParameter("name");
     String Gtitle = request.getParameter("title");
     int Gpay   = Integer.parseInt(request.getParameter("pay"));
     String Gemail = request.getParameter("email");
     
     dto.setSabun(Gsabun);
     dto.setName(Gname);
     dto.setTitle(Gtitle);
     dto.setPay(Gpay);
     dto.setEmail(Gemail);
     
     sql.dbInsert(Gsabun, Gname, Gtitle, Gpay, Gemail);
     response.sendRedirect("guestList.jsp");
  %>
</body>
</html>