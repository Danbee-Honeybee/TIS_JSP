<%@ page language="java" contentType="text/html; charset=UTF-8"      pageEncoding="UTF-8"%>
<jsp:include page="/top.jsp" />

	<h1>쿠키 목록</h1>
<% 
	/*쿠키가 전송되면 웹브라우저는 한번 저장된 쿠키를 매번
	요청이 필요할 때마다 웹서버에 전송한다.
	그러면 서버는 전송한 쿠키를 이용해 필요한 작업을 수행한다.*/
	Cookie[] cks=request.getCookies();
	if(cks!=null){
		for(Cookie c: cks){
			String key=c.getName();//key
			String val=c.getValue();//value
			%>
			<h2><%=key %> :<%=val %> </h2>
			<%
		}//for-----
	}
%>	
</div>
