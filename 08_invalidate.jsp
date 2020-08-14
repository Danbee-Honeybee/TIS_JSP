<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<%
	session.setAttribute("s_name1", "저는 세션에 저장된 첫번째 값이에요");
	session.setAttribute("s_name2", "저는 세션에 저장된 두번째 값이에요");
	session.setAttribute("s_name3", "저는 세션에 저장된 세번째 값이에요");
	
	out.println("<h3> >> 세션값을 삭제하기 전 << </h3>");
	Enumeration names;
	names = session.getAttributeNames();
	while(names.hasMoreElements()){
		String name = names.nextElement().toString();
		String value=session.getAttribute(name).toString();
		out.println(name + " : " + value + "<br>");
	}
	
	//모든 세션 값 삭제
	session.invalidate();
	
	out.print("<hr> <h3> >>세션값을 삭제한 후 << </h3>");
	out.print("Q : 과연 세션 아이디가 유효할까요? <br>");
	if(request.isRequestedSessionIdValid()==true){
		out.print("A : 세션 아이디가 유효합니다.");
	} else {
		out.print("A : 세션 아이디가 유효하지 않습니다.");
	}
	%>
</body>
</html>