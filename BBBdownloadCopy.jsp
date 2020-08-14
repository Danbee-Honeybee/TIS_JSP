<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>

<%@ page import="java.io.File" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.FileInputStream" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> BBBdownloadCopy.jsp </title>
	</head>
<body>
<%
	 String path = application.getRealPath("storage");
	 String data = request.getParameter("fname");
	 File file = new File( path, data) ;

  	 response.setHeader("Content-Disposition","attachment;filename="+ data);
 try{
	   InputStream is = new FileInputStream(file);
	   OutputStream os = response.getOutputStream();
	   
	   byte[] bt = new byte[(int)file.length()] ;
	   is.read(bt,0,bt.length);
	   os.write(bt); 
	   
	   is.close(); os.close();
}catch(Exception e){ }
%>	
</body>
</html>









