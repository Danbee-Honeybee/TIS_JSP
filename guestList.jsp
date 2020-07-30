<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ include file ="ssi.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[geustList.jsp]</title>
	<style type="text/css">
		*{font-size:16pt;}
		a{ font-size: 16pt; color:black; text-decoration:none;}
		a:hover{ font-size: 16pt; color:blue; text-decoration:underline;}
		#span_rcnt { font-size: 16pt; color:red; }
	</style>
	
	<script type="text/javascript">
	    function clearText(){
		   document.sform.keyword.value="";
		   document.sform.keyword.focus();
		}
  	</script>
</head>
<body> <!-- 이 파일은 단독실행 가능 -->
<%
	int pageNUM, pagecount;
	int start, end;
	int startpage, endpage;
	int tmp;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	Date dt = new Date();
//=========================================================================================================
							msg="select count(*) as cnt from guest";
							ST=CN.createStatement();
							RS=ST.executeQuery(msg);
							RS.next();
							GGtotal = RS.getInt("cnt"); //Gtotal 은 지금 316을 가지고 있다. 레코드 갯수니까.
							System.out.println("[guestList] GGtotal : " + GGtotal);
//=========================================================================================================

	String sqry=""; String skey=""; String sval="";
	
	skey= request.getParameter("keyword");
	sval= request.getParameter("keyfield");
	
	if(skey==null || skey=="" || sval==null || sval==""){
		skey="";
		sval="";
		sqry=" where name like '%%' "; //null 이면 모두 출력
	} else { sqry=" where "+sval+" like '%"+skey+"%'"; }
	
	System.out.println("[guestList] sqry : " + sqry);
	String returnpage = "&keyfield="+sval+"&keyword="+skey;
	System.out.println("[guestList] returnpage : " + returnpage);

//=========================================================================================================
							 msg="select count(*) as cnt from guest "  + sqry;
							 ST=CN.createStatement();
							 RS=ST.executeQuery(msg);
							 RS.next();
							 Gtotal = RS.getInt("cnt");
							 System.out.println("[guestList] Gtotal \t: " + Gtotal);
//=========================================================================================================
	String pnum = request.getParameter("pageNum"); 
	if (pnum==null||pnum==""){pnum="1";}
	pageNUM = Integer.parseInt(pnum);
	System.out.println("[guestList] 클릭한 페이지 : " + pageNUM);
	
	start = (pageNUM-1)*10+1;	
	end   = (pageNUM*10);  	 	
	tmp 	  = (pageNUM-1)%10; 
	startpage = (pageNUM-tmp);	
	endpage   = (startpage+9);	
	
	if(Gtotal%10==0){pagecount=Gtotal/10;}
	else {pagecount=(Gtotal/10)+1;}

	String a="select * from ( ";
	String b=" select rownum rn, sabun,name,title,wdate,pay,hit, email from ( ";
	String y=" select * from guest "+ sqry +" order by sabun ) "; 
	String d=" ) where rn between " + start + " and " + end ;
	msg = a + b + y + d;
	ST=CN.createStatement();
	RS=ST.executeQuery(msg);

%>
<p id="Pline">

<table width=900 border="1" cellspacing="0">
<tr align="center">
	<td colspan="8">guestList 총 레코드 갯수 [<%= Gtotal %> / <%= GGtotal %>]</td>
</tr>

<tr align="center" bgcolor="yellow">
<td>행번호</td> <td>사번</td> <td>이름</td> <td>제목</td> <td>이메일</td> <td>날짜</td> <td>조회수</td> <td>삭제</td>
</tr>

<%
	while(RS.next()){
		Gsabun=RS.getInt("sabun");
		Gtitle=RS.getString("title");
		Gemail=RS.getString("email");
		
//=========================================================================================================
		 String msg3; Statement ST3; ResultSet RS3; int RGtotal;
		 msg3="select count(*) as rcnt from guestreply where sabun=" + Gsabun; //Gsabun
		 ST3=CN.createStatement();
		 RS3=ST3.executeQuery(msg3);
		 if(RS3.next()==true) {   
 			RGtotal = RS3.getInt("rcnt");   
	  		if(RGtotal != 0) {
	  			RGtotal=RS3.getInt("rcnt");
	  			R_msg= "["+ RGtotal + "]";
	  		} else {
	  			R_msg= "";
	  		}
 		}
//=========================================================================================================
			
%>
<tr align="center" onmouseover="style.backgroundColor='rgb(0,200,200)'" onmouseout="style.backgroundColor=''">
  <td><%= RS.getInt("rn") %></td>
  <td><%= RS.getInt("sabun") %></td>
  <td><%= RS.getString("name") %></td> 
  <td><a href="guestDetail.jsp?idx=<%=Gsabun%>"><%= RS.getString("title") %>
  	<span id="span_rcnt"><%=R_msg %></span></a></td> 
  <td><%= RS.getString("email") %></td>
  <td><%= RS.getDate("wdate") %></td> 
  <td><%= RS.getInt("hit") %></td>
  <td align="center"><input type="button" value="삭제" onclick="location.href='guestDelete.jsp?idx=<%=Gsabun %>'"></td>
</tr>
<% } %>

	<tr>
		<td colspan="8" align="center"><p>
		<%
		if(startpage > 10){
			out.println("<a href=guestList.jsp?pageNum="+(startpage-10)+returnpage+">[이전]</a>");
			}
		
		for (int i=startpage; i<=endpage; i++){ 
			
			if(i == pageNUM){out.println("<font style='font-size:17pt; color:red;'>["+i+"]</font>");} 
			else {out.println("<a href=guestList.jsp?pageNum="+i+returnpage+">["+i+"]</a>");}
			if(i == pagecount){ break; }
			
		}
		
		if(endpage < pagecount){ 
			out.println("<a href=guestList.jsp?pageNum="+(startpage+10)+returnpage+">[다음]</a>");
		}
		%><p>
		</td>
	</tr>

	<tr>
		<td colspan="8" align="center">
		<a href="guestWrite.jsp">[회원등록]</a>
	 	<a href="index.jsp">[index]</a>
 		<a href="login.jsp">[로그인]</a>
 		<a href="guestList.jsp">[전체출력]</a>
 		[현재페이지 : <%=pageNUM %>]
		</td>
	</tr>
	<tr>
	<td colspan="8" align="center">
		<form name="searchform">
			<select name = "keyfield" onchange="clearText();">
				<option value="">==검색==</option>
				<option value="sabun" 	<%if(skey.equals("sabun")){out.println("selected");}%>>		사번검색</option>
				<option value="name" 	<%if(skey.equals("name")){out.println("selected");} %>>		이름검색</option>
				<option value="title" 	<%if(skey.equals("title")){out.println("selected");} %>>	제목검색</option>
			</select>
			 <input type="text" name="keyword" id="keyword" placeholder="검색어 입력" value="<%=skey%>">
			 <input type="submit" value="검색">
		</form>
	</td>
	</tr>

</table>
</body>
</html>