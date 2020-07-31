<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ page import="java.text.SimpleDateFormat"%>      
<%@ page import="java.util.Date" %> 

<%@ page import="java.util.Vector" %>
<%@ page import="java.util.ArrayList" %>
<jsp:useBean id="GT" class="net.tis.sql.Guesttest"/>
<%@ page import="net.tis.sql.GuestSQL" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestTest.jsp]  </title>
  <style type="text/css">
   
	*{ font-size: 20pt; }
	a{ font-size: 18pt; color:blue; text-decoration:none; }
	a:hover{ font-size:20pt; color:green;  text-decoration:none;  }
  </style>

</head>
<body>
	<%! GuestSQL GS = new GuestSQL(); %>
	<% 
	    Vector VT = GS.dbTest();
	  //2400 "스프링"  3.14  true  'F' ;
		for(int i=0; i<=VT.size(); i++){
		out.println(GT.getCode());
		out.println(GT.getName());
		out.println(GT.getPoint());
		out.println(GT.getGender());
		out.println(GT.getGrade());
		}
%>

		
</body>
</html>












