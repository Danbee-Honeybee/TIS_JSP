<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.File" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> BBB.jsp </title>
	<style type="text/css">
	  *{ font-size: 20pt; font-weight: bold; }
	  a{ font-size: 24pt; text-decoration:none; color:blue ; font-family: Comic Sans MS; }
	  a:hover{ font-size: 30pt; text-decoration:underline; color:green ; font-family: Comic Sans MS; }
	</style>

	<script type="text/javascript">
		
	</script>
</head>
<body>
<%
 String path = application.getRealPath("storage");
 System.out.println(path);
 
 int size=1024*1024*7;
 DefaultFileRenamePolicy DFRP = new DefaultFileRenamePolicy();
 //MultipartRequest MPR = new MultipartRequest(request내장개체,2경로,3크기,4인코딩,5문서 덮어씌우기);
 //MultipartRequest MPR = new MultipartRequest(request,path,size,"UTF-8",DFRP);
 MultipartRequest MPR = new MultipartRequest(request,path,size,"UTF-8");
 
 String a = MPR.getParameter("num");
 String b = MPR.getParameter("title");
 String c = MPR.getFilesystemName("file1");

  out.println("mr넘어온번호 = " + a  + "<br>");
  out.println("mr넘어온제목 = " + b  + "<br>");
  out.println("mr넘어온파일 = " + c  + "<p>");
  
  File ff = MPR.getFile("file1");
  long fsize = ff.length();
  out.println(c + "파일의 크기는" + fsize + "Byte<br>");
%>	
	<br>
	<a href="BBBdownload.jsp?fname=<%=c%>"><img src="<%=request.getContextPath()%>/storage/<%=c%>" width="300" height="120"></a>
	<a href="BBBdownload.jsp?fname=<%=c%>"><img src="./storage/<%=c%>" width="300" height="120"></a><br>
	<a href="AAA.jsp">[AAA.jsp]</a>
	<a href="index.jsp">[index.jsp]</a>
	<a href="guestList.jsp">[guestList.jsp]</a>
</body>
</html>