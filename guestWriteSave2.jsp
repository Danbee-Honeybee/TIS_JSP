<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestWriteSave.jsp]</title>
<style type="text/css">
	*{font-size:16pt;}
	a{ font-size: 16pt; color:black; text-decoration:none;}
	a:hover{ font-size: 16pt; color:blue; text-decoration:underline;}
</style>
</head>
<body>
<!-- 자바코드기술한 페이지 -->

 <p>
  <%
  Gsabun=Integer.parseInt(request.getParameter("sabun"));
  Gname=request.getParameter("name");
  Gtitle=request.getParameter("title");
  Gpay=Integer.parseInt(request.getParameter("pay"));
  Gemail=request.getParameter("email");
  
  //웹페이지에 출력
  out.println("사번=" + Gsabun + "<br>");
  out.println("이름=" + Gname + "<br>");
  out.println("제목=" + Gtitle + "<br>");
  out.println("급여=" + Gpay + "<br>");
  out.println("메일=" + Gemail + "<br>");
  
  try{
  	Class.forName("oracle.jdbc.driver.OracleDriver"); //드라이브로드
    String url="jdbc:oracle:thin:@127.0.0.1:1521:XE" ;
    CN=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","1234");
    System.out.println("[guestWriteSave2.jsp] Oracle Connected at 07-21");
    
  	//Statement 명령어 대신 PreparedStatement 명령어로 수정하기
    //msg="insert into guest values(Gsabun, Gname, Gtitle, sysdate, Gpay, Ghit, Gemail)";
    msg="insert into guest values(?, ?, ?, sysdate, ?, 0, ?)"; // 물음표 갯수가 순서임
    PST=CN.prepareStatement(msg);
    	PST.setInt(1, Gsabun);
    	PST.setString(2, Gname);
    	PST.setString(3, Gtitle);
    	PST.setInt(4, Gpay);
    	PST.setString(5, Gemail);
  		//ST.executeUpdate(msg); 데이터를 오라클에 넣어주는 역할
  	PST.executeUpdate();
  	System.out.println("데이터 저장 성공 했습니다.\n" + msg);
	out.println(msg);
  } catch (Exception e){}
  response.sendRedirect("guestList.jsp");
  %>

 <br>
 <a href="guestWrite.jsp">[회원등록]</a>
 <a href="index.jsp">[메인화면]</a>
 <a href="guestList.jsp">[전체출력]</a>	
</body>
</html>