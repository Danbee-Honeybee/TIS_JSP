<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestWriteSave2.jsp]</title>
<style type="text/css">

</style>
</head>
<body>
 <p>
  <%
  Date now = new Date();
  System.out.println("[guestWriteSave2.jsp_PST used] Oracle Connected at "+ now);	 
  
     Gsabun = Integer.parseInt(request.getParameter("sabun"));
     Gname  = request.getParameter("name");
     Gtitle = request.getParameter("title");
     Gpay   = Integer.parseInt(request.getParameter("pay"));
     Gemail = request.getParameter("email");
     
     System.out.println("사번=" + Gsabun + "<br>");
     System.out.println("이름=" + Gname + "<br>");
     System.out.println("제목=" + Gtitle + "<br>");
     System.out.println("급여=" + Gpay + "<br>");
     System.out.println("메일=" + Gemail + "<br>");
     //중복체크
     try{
     msg="select count(*) as cnt from guest where sabuin ="+ Gsabun;
     ST=CN.createStatement();
     RS=ST.executeQuery(msg);
     if(RS.next()){Gtotal=RS.getInt("cnt");}
     if (Gtotal>0) {
        %>
        <div>
        <img src="images/a1.png"> <br>
        </div>
        <script type="text/javascript">
        alert("이미 있는 사번 입니다. 다른 사번을 이용하세요.");
        location.href="guestWrite.jsp";
        //response.sendRedirect("guestWrite.jsp"); return 못쓰니까 금지
        //history.back();
        </script>
        <%
    } else {
    msg="insert into guest values(?, ?, ?, sysdate, ?, 0, ?)"; // 물음표 갯수가 순서임
    PST=CN.prepareStatement(msg);
       PST.setInt(1, Gsabun);
       PST.setString(2, Gname);
       PST.setString(3, Gtitle);
       PST.setInt(4, Gpay);
       PST.setString(5, Gemail);
        PST.executeUpdate();
    System.out.println("데이터 저장 성공 했습니다.\n" + msg);
    out.println(msg);
    response.sendRedirect("guestList.jsp");
    } //else end
    } catch (Exception e){
  	System.out.println("[guestWriteSave.jsp] 에러 사유 : " + e);}
  %>

 <br>
 <a href="guestWrite.jsp">[회원등록]</a>
 <a href="index.jsp">[메인화면]</a>
 <a href="guestList.jsp">[전체출력]</a>   
</body>
</html>