<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         

<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [openIDSave.jsp] </title>
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
   //openIDSave.jsp 단독실행하면에러발생 
 try{
	 String Gdata = request.getParameter("userid");
	 System.out.println("[openIDSave] 넘어온 userid : " + Gdata);
	 msg = "select count(*) as cnt from guest where sabun = "+ Gdata;
	 ST = CN.createStatement();
	 RS=ST.executeQuery(msg);
	 if (RS.next()){
		if(RS.getInt("cnt") > 0 ){
				%>
		       <script type="text/javascript">
			       alert("<%=Gdata%>은 이미 있는 사번 입니다. 다른 사번을 이용하세요.");
			       location.href='openID.jsp?idx='+"";
		       </script>
     <% } else { %>
			  <script type="text/javascript">
			        alert("<%=Gdata%>은 사용가능합니다.");
			        opener.myform.sabun.value=<%= Gdata%>; 
			        //opener는 자식창이 부모창의 값을 가져올때 사용하는것이다. 따라서 사용 가능한 사번을 guesetWrite에 보내준다.
			        self.close();
		      </script>
		      <%
			}
	      }
 }catch(Exception ex){ System.out.println("에러 "+ex); }
%>	
</body>
</html>










