<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
		<%
			String id="danbi";
			String pw="1234";
			String name="박단비";
			
			if(id.equals(request.getParameter("id")) && 
				pw.equals(request.getParameter("pw"))) {
				session.setAttribute("loginUser", name);
				response.sendRedirect("09_loginMain.jsp");
			} else {
				response.sendRedirect("09_loginForm.jsp");
			}
		%>
</body>
</html>