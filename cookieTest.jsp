<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"  %>
<%@ page import="java.util.*, java.text.*" %>
<jsp:include page="/top.jsp" />

<!-- cookieTest.jsp -->
<%--
	사용자의 간단한 정보들을 쿠키에 저장해보자.
	쿠키는 클라이언트쪽 메모리나 파일로 저장된다.
	1. 쿠키 저장단계
		[1] 쿠키 생성단계 (key, value)
		[2] 쿠키 속성 설정 단계(유효시간, path, secure,...)
		[3] 쿠키 전송 단계=> 응답(response)에 쿠키를 포함시켜 전송
	2. 쿠키 꺼내오기 

--%>
<%
	//[1] 쿠키 생성단계 (String key, String value)
	 Cookie ck1=new Cookie("visitId","LEE");

	 Date time=new Date();
	 SimpleDateFormat sdf=new SimpleDateFormat("yyyy/MM/dd/hh:mm:ss");
	 String str=sdf.format(time);
	 System.out.println("time="+time);
	 Cookie ck2=new Cookie("visitTime",str);
	
	//[2] 쿠키 속성 설정 단계
	ck1.setMaxAge(3*24*60*60);//3일간 유효함 
	ck2.setMaxAge(7*24*60*60);//7일간 유효함
	//쿠키는 유효시간이 지나면 자동으로 삭제 된다.
	//쿠키를 강제로 삭제하고자 하면 setMaxAge(0)을 준다.
	//ck1.setPath("/cookie");
	
	//[3] 쿠키 전송 단계
	response.addCookie(ck1);
	response.addCookie(ck2);
%>

<div class="container text-center">
	<h1>쿠키 테스트</h1>
	<h2>쿠키 저장 완료 <a href="cookieList.jsp">쿠키 목록 보러 가기</a></h2>	
</div>





