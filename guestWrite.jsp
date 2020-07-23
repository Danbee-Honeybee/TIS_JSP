<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestWrite.jsp 입력 화면]</title>
<style type="text/css">
	*{font-size:16pt;}
	a{ font-size: 16pt; color:black; text-decoration:none;}
	a:hover{ font-size: 16pt; color:blue; text-decoration:underline;}
</style>
<script type="text/javascript">
	var Gflag=false;
	//함수명은 대소문자 구분 한다.
	function nullCheck(){ //공백인지 아닌지 체크하는 function
		//document는 생략가능
		//돔=dom모델객체 document, window, location, history
		var a = document.myform.sabun.value; //사번이 4자릿수인지 체크
		var b = document.myform.name.value;  
		var c = document.myform.title.value; 
		var d = document.myform.pay.value;   //급여가 2자릿수인지 체크
		if (a==null || a==""){
			alert("사번은 공백일 수 없습니다.");
			myform.sabun.focus();
			return; //이 뒤로는 수행 안한다.
		} else if (a.length != 4){
			alert("사번은 4자리 숫자여야합니다.");
			//myform.sabun.value=""; 입력되어 있던 데이터 다 지우기
			myform.sabun.value = a.substring(0,4);
			myform.sabun.focus();
			return;
		} else {myform.sabun.focus();}
		
		if (b==null || b==""){
			alert("이름은 공백일 수 없습니다.");
			myform.name.focus();
			return; //이 뒤로는 수행 안한다.
		} else {myform.name.focus();}
		
		if (c==null || c==""){
			alert("제목은 공백일 수 없습니다.");
			myform.title.focus();
			return; //이 뒤로는 수행 안한다.
		} else {myform.title.focus();}
		
		if (d==null || d==""){
			alert("급여는 공백일 수 없습니다.");
			myform.pay.focus();
			return; //이 뒤로는 수행 안한다.
		} else if (d.length != 2){
			alert("급여는 2자리 숫자여야합니다.");
			myform.pay.value = d.substring(0,2);
			myform.pay.focus();
			return;
		} else {myform.title.focus();}
		
		//모든 입력란이 잘 채워졌다면, 등록하기 클릭시 action="guestWriteSave2.jsp" 이 실행되어야함.
		document.myform.submit(); //action="guestWriteSave2.jsp" 과 연결되게 끔 하는 문장입니다.
		location.href="guestList.jsp";
	}//end
	
	function info(){
		//window.open(1 팝업에 띄울 파일명 , 2 이 창의 이름, 3 크기 및 위치); window 는 생략 가능
		open("popup.jsp","Bonjour","width=350, height=350"); //left 랑 top 생략 
	}//end
	
	function idCheck(){
		var a = document.myform.sabun.value;
		var len_sabun = myform.sabun.value.length;
		if (a!=null || a!=""){
			alert("중복확인 버튼을 눌러주세요.");
			myform.pay.focus();
			open("openID.jsp?idx="+a,"openID.jsp","width=500, height=200, left=700, top=300");
			return; //이 뒤로는 수행 안한다.
		}
	}//end
</script>
</head>
<body> 
<!-- 바디 안에 이거 넣으면 팝업창 나옴 onload="info();" -->
 <p>
  guestWrite.jsp문서 입력화면<p>
 <form name="myform" method="post" action="guestWriteSave2.jsp">
 사번 : <input type="text" name="sabun" maxlength="4" value="7792" size="10">
 	  <input type="button" onclick="idCheck();" value="ID중복체크"> <br>
 이름 : <input type="text" name="name" value="blue"> <br> 
 제목 : <input type="text" name="title" value="blue"> <br>
 급여 : <input type="text" name="pay" value="66"> <br> 
 메일 : <input type="text" name="email" value="@tis.com"> <br>
      <input type="button" onclick="nullCheck();" value="등록하기">
      <input type="reset" value="입력취소">
 </form>
 
 <p>
 <a href="guestWrite.jsp">[회원등록]</a>
 <a href="index.jsp">[메인화면]</a>
 <a href="guestList.jsp">[전체출력]</a>	
 <p><br>
</body>
</html>