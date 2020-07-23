<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         

<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [openIDSave.jsp] </title>
  <style type="text/css">
   *{ font-size: 17pt; }
   a{ font-size: 17pt; color:green; text-decoration:none; }
   a:hover{ font-size:20pt; color:blue; text-decoration:underline; }
  </style>
   
   <script type="text/javascript">
   </script>
</head>
<body bgcolor="yellow">
  <p>
   <img src="images/bar.gif" width=400><br>
   <img src="images/bar.gif" width=400><br>
   <img src="images/bar.gif" width=400><br>
 <%
   //openIDSave.jsp 단독실행하면에러발생 
 try{
   Gsabun = Integer.parseInt(request.getParameter("userid")); 
   msg = "select count(*) as cnt from guest where sabun= "+Gsabun;
   ST = CN.createStatement();
   RS = ST.executeQuery(msg);
   if(RS.next()){
     Ghit = RS.getInt("cnt"); 
     if(Ghit>0){
       %>
         <script type="text/javascript">
            alert("이미 등록된 사번입니다");
            location.href='openID.jsp?idx='+"";  //openID.jsp?idx=
         </script>
       <%
     }else{
       %>
         <script type="text/javascript">
            alert("사용 가능한 사번입니다");
            opener.myform.sabun.value=<%= Gsabun %>;
            self.close();
         </script>
       <% 
     }
   }  
 }catch(Exception ex){ System.out.println("에러 "+ex); }
%>   
</body>
</html>









