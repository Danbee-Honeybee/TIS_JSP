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
</style>
</head>
<body> <!-- 이 파일은 단독실행 가능 -->
<%
	//오늘 숙제 페이지갯수 32 나오게 하기
	msg="select count(*) as cnt from guest";
	ST=CN.createStatement();
	RS=ST.executeQuery(msg);
	RS.next();
	Gtotal = RS.getInt("cnt"); //Gtotal 은 지금 316을 가지고 있다. 레코드 갯수니까.
	
	//페이징, 검색, 댓글
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	Date dt = new Date();
	//제목 옆에 60분 = 1시간 전에 올라온 글에 new 또는 깃발 또는 빨간색 글씨로 표시해주기
	
	int pageNUM, pagecount;
	//pageNUM = 숫자 13으로 변환을 해
	//pagecount = 32개야. 지금 데이터가 316개 인데 페이지 수가 32가 되어야하니까.

	
	int start, end; //시작행 261 끝행 270 [이전] [21] ~27 ~ [30] [다음]   이건 행이야.
	int startpage, endpage; //시작페이지 21, 끝페이지 30   이건 페이지야.
	int tmp; //임시 계산식 21 부터 30까지 밑에 뜨고 있을때 21과 30은 이동할때마다 10씩 더해주면 된다.

	String sqry=""; // 조건
	String skey="", sval=""; //검색필드, 검색키워드
	String returnpage="검색페이징할때";
	
	sval= request.getParameter("keyfield");
	skey= request.getParameter("keyword");
	search(sval, skey);
	
	
	String pnum = request.getParameter("pageNum"); 
	//request로 받았으니까 클릭하면 문자로 12을 기억한다
	//13이라는 숫자를 String 타입으로 받는다. <a href="guestList.jsp?pageNum=7">[7]</a>
	//<a href="guestList.jsp?pageNum=i">[i]</a>
	if (pnum==null||pnum==""){pnum="1";} //만약에 pnum 값이 없거나 비어있다면, 1페이지를 출력해라
	pageNUM = Integer.parseInt(pnum);
	System.out.println("[guestList] 클릭한 페이지 : " + pageNUM);
	
	start = (pageNUM-1)*10+1;	//121;  [13] 을 클릭했을때 	시작행
	end   = (pageNUM*10);  	 	//130;  [13] 을 클릭했을때 	끝행
	tmp 	  = (pageNUM-1)%10; //2; 	[13]을 클릭했을때 	임시 공간 13에서 1 빼고 10으로 나눈 나머지 (13-1)%10= 2
	startpage = pageNUM-tmp;	//11;
	endpage   = startpage+9;	//20;
	
	//내일은 총 페이지갯수를 구해야 이전, 다음 이동이 가능합니다.
	//총페이지수 Gtotal 316개일때 총 페이지수 pagecount = 32 페이지다.
	//총페이지수 Gtotal 261개일때 총 페이지수 pagecount = 27 페이지다.
	//총페이지수 Gtotal 310개일때 총 페이지수 pagecount = 31 페이지다.
	if(Gtotal%10==0){pagecount=Gtotal/10;} //10으로나눠서 딱딱 떨어짐 
	else {pagecount=(Gtotal/10)+1;}
	// if(endpage>pagecount){endpage=pagecount;} 40>32 면 endpage를 32로 만든다.
	
	String a="select * from (";
	String b=" select rownum rn, sabun, name, title, wdate, pay, hit, email from guest ";
	String c=") where rn between " + start + " and " + end; //and 에 항상 공백 주기 안그러면 SQLsystaxError 뜸
	System.out.println("[guestList] " + c);
	msg = a+b+c;
	ST=CN.createStatement();
	RS=ST.executeQuery(msg);
%>
	

<p id="Pline">

<table width=900 border="1" cellspacing="0">
<tr align="center">
	<td colspan="8">레코드 갯수 [<%= Gtotal %>]</td>
</tr>

<tr align="center" bgcolor="yellow">
<td>행번호</td> <td>사번</td> <td>이름</td> <td>제목</td> <td>이메일</td> <td>날짜</td> <td>조회수</td> <td>삭제</td>
</tr>

	<script type="text/javascript">
		var Gflag = false;
		function searching(){
			<%  
				if(skey==null || skey=="" || sval==null || sval==""){
					skey="title";
					sval="p";
					System.out.println("[guestList] 넘어온 keyfield : "+ sval);
					System.out.println("[guestList] 넘어온 keyword : " + skey);
				} else { // null이 아닌 경우
				String searching_msg = "select * from (select rownum rn, "
									  +"g.* from guest g where "+ sval +" like '%"+skey+"%' order by rn) "
									  +" where rn between 11 and 20 ";
				ST=CN.createStatement();
				RS=ST.executeQuery(msg);
				}
		%>
	 }
	</script>

<%
	while(RS.next()){
		Gsabun=RS.getInt("sabun");
		Gtitle=RS.getString("title");
		Gemail=RS.getString("email");
%>
<tr align="center" onmouseover="style.backgroundColor='rgb(0,200,200)'" onmouseout="style.backgroundColor=''">
  <td><%= RS.getInt("rn") %></td>
  <td><%= RS.getInt("sabun") %></td>
  <td><%= RS.getString("name") %></td> 
  <td><a href="guestDetail.jsp?idx=<%=Gsabun%>"><%= RS.getString("title") %></a></td> 
  <td><%= RS.getString("email") %></td>
  <td><%= RS.getDate("wdate") %></td> 
  <td><%= RS.getInt("hit") %></td>
  <td align="center"><input type="button" value="삭제" onclick="location.href='guestDelete.jsp?idx=<%=Gsabun %>'"></td>
</tr>
<% } %>

	<tr>
		<td colspan="8" align="center"><p>
		<%
		//이전 : [1]~[10] 페이지 말고는 다 나와야돼
		if(startpage > 10){
			out.println("<a href=guestList.jsp?pageNum="+(startpage-10)+">[이전]</a>");
		}
		
		//출력
		for (int i=startpage; i<=endpage; i++){ //i 는 1부터고 11보다는 작다.
			if(i == pagecount){ break; }
			if(i == pageNUM){
				out.println("<font style='font-size:17pt; color:red;'>["+i+"]</font>");
			} else {
				out.println("<a href=guestList.jsp?pageNum="+i+">["+i+"]</a>");
			}
		}// for end
		
		//다음
		if(endpage < pagecount){ //[10] < 32 크면 10이 32보다 클수없으니 적으면!!!! 으로 적어야한다. 
			out.println("<a href=guestList.jsp?pageNum="+(startpage+10)+">[다음]</a>");
		}
		%>
			<p>
		</td>
	</tr>

	<tr>
		<td colspan="8" align="center">
		<a href="guestWriteCheck.jsp">[회원등록]</a>
	 	<a href="index.jsp">[index]</a>
 		<a href="Login.jsp">[로그인]</a>
 		<a href="guestList.jsp">[전체출력]</a>
 		[현재페이지 : <%=pageNUM %>]
		</td>
	</tr>
	<tr>
	<td colspan="8" align="center">
		<form action="guestList.jsp"> 
			<select name="keyfield"> 
				<option value=""> ==검색==</option>
				<option value="name"> 이름 </option>
				<option value="title"> 제목 </option>
				<option value="contents"> 내용 </option>
			</select>
			 <input type="text" name="keyword" placeholder="검색어 입력">
			 <input type="submit" value="검색" onclike="searching();">
		</form>
	</td>
	</tr>

</table>
</body>
</html>