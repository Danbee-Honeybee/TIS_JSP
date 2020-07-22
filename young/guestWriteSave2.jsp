<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         

<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestWriteSave.jsp] </title>
  <style type="text/css">
	*{ font-size: 26pt; }
	a{ font-size: 26pt; color:green; text-decoration:none; }
	a:hover{ font-size:30pt; color:blue; text-decoration:underline; }
  </style>
	
	<script type="text/javascript">
	</script>
</head>
<body>
  <p>
  
 <%
   //guestWriteSave.jsp 단독실행하면에러발생 
   Gsabun = Integer.parseInt(request.getParameter("sabun"));
   Gname = request.getParameter("name");
   Gtitle = request.getParameter("title") ;
   Gpay = Integer.parseInt(request.getParameter("pay"));
   Gemail = request.getParameter("email");
    
    out.println("사번=" + Gsabun + "<br>");
    out.println("이름=" + Gname + "<br>");
    out.println("제목=" + Gtitle + "<br>");  
    out.println("급여=" + Gpay + "<br>");  
    out.println("메일=" + Gemail + "<br>");  
    
  try{ 
  	//Statement명령어대신 PreparedStatement명령어 수정해서 저장처리
    ST=CN.createStatement();
    
    msg="insert into guest(sabun,name,title,wdate,pay,hit,email) values("+Gsabun+",'"+Gname+"','"+Gtitle+"',sysdate,"+Gpay+",0,'"+Gemail+"')" ;
    msg="insert into guest values("+Gsabun+",'"+Gname+"','"+Gtitle+"',sysdate,"+Gpay+",0,'"+Gemail+"')" ;
    System.out.println(msg);
    out.println(msg);
   ST.executeUpdate(msg);
   System.out.println(Gsabun+" 데이터로 저장성공했습니다.") ;
   }catch(Exception ex){ System.out.println("에러 "+ex); }
   
   response.sendRedirect("guestList.jsp");
 %>	

  <p>
  <a href="guestWrite.jsp">[등록]</a>
  <a href="index.jsp">[index]</a>
  <a href="guestList.jsp">[전체출력]</a><p><br>
</body>
</html>










