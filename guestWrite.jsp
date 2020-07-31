<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestWrite.jsp 응용]</title>
<style type="text/css">
	*{font-size:16pt;}
	a{ font-size: 16pt; color:black; text-decoration:none;}
	a:hover{ font-size: 16pt; color:blue; text-decoration:underline;}
</style>
<script type="text/javascript">
    var Gflag=false;
	//중복체크 여부를 알기 위해서
	//아이디 중복체크 하고 돌아오면 Gflag 가 true가 됌
	//int Gflag=0 또는 1로 해도됌 구분만 할 수 있으면 됌
	
	function nullCheck(){
		var flag=false;
		var a = document.myform.sabun.value;
		var b = document.myform.name.value;  
		var c = document.myform.title.value; 
		var d = document.myform.pay.value;
		var e = document.myform.email.value;
		var checkret = myform.duplication_ch.value;
		
		if (a==null || a==""){
			document.getElementById("sabun_ch").innerHTML="<font style='font-size:12pt; color:red'>*사번을 입력하세요*</font>";         
			myform.sabun.focus();
			return false;
		} else {document.getElementById("sabun_ch").innerHTML=""; myform.sabun.focus();} 
		
		if (a.length != 4 || sabun_format.test(a)==false){
			document.getElementById("sabun_ch").innerHTML="<font style='font-size:12pt; color:red'>*사번은 4자리 숫자로만 입력 가능합니다.*</font>";
			myform.sabun.value = a.substring(0,4);
			myform.sabun.focus();
			return false;
		} else {document.getElementById("sabun_ch").innerHTML=""; myform.sabun.focus();}
		
		if (b==null || b==""){
			document.getElementById("name_ch").innerHTML="<font style='font-size:12pt; color:red'>*이름을 입력하세요.*</font>";
			myform.name.focus();
			return;
		} else {myform.name.focus();}
		
		if (c==null || c==""){
			document.getElementById("title_ch").innerHTML="<font style='font-size:12pt; color:red'>*제목을 입력하세요.*</font>";
			myform.title.focus();
			return;
		} else {myform.title.focus();}
		
		if (d==null || d==""){
			document.getElementById("pay_ch").innerHTML="<font style='font-size:12pt; color:red'>*급여를 입력하세요.*</font>";
			myform.pay.focus();
			return;
		} else if (d.length != 2){
			document.getElementById("pay_ch").innerHTML="<font style='font-size:12pt; color:red'>*급여는 2자리입니다.*</font>";
			myform.pay.value = d.substring(0,2);
			myform.pay.focus();
			return;
		} else {myform.title.focus();}
		
		//이메일 체크
		var email_format = /^([a-zA-Z0-9-_\.]{3,15})@([a-zA-Z]{2,15})\.([a-zA-Z]{2,10})$/;
		if (e==null|| e==""){
			document.getElementById("email_ch").innerHTML="<font style='font-size:12pt; color:red'>*이메일을 입력하세요.*</font>";
			myform.email.focus();
			return;
		} else if (email_format.test(e)==false){
			document.getElementById("email_ch").innerHTML="<font style='font-size:12pt; color:red'>*sky@gmail.com형식으로 입력하세요*</font>";
			myform.email.value="";
			myform.email.focus();
			return;
		} else {
			document.getElementById("email_ch").innerHTML="";
			myform.email.focus();
		}
		
		if (Gflag==false) {
			 alert("id 중복체크 하세요");
			 return ; //아래문장수행처리 하지않고 탈출 
		 }
		
		document.myform.submit();
		location.href="guestList.jsp";
	}//end
	
	function info(){
		open("popup.jsp","Bonjour","width=350, height=350"); 
	}//end
	
	function idCheck(){
		Gflag=true;
		var a = document.myform.sabun.value;
		var len_sabun = myform.sabun.value.length;
		if (a!=null || a!=""){
			myform.pay.focus();
			open("openID.jsp?idx="+a,"openID.jsp","width=750, height=300, left=700, top=300");
			return;
		}
	}//end

</script>
</head>
<body>
 <p> guestWrite.jsp <p>
 <form name="myform" method="post" action="guestWriteSave.jsp">
 사번 : <input type="text" name="sabun"  maxlength="4" value="" size="10">
 	  <input type="button" onclick="idCheck();" value="ID중복">
 	  <span id="sabun_ch"></span><br>
 이름 : <input type="text" name="name" value="blue">
 	  <span id="name_ch"></span><br> 
 제목 : <input type="text" name="title" value="blue">
      <span id="title_ch"></span><br>
 급여 : <input type="text" name="pay" value="66">
 	  <span id="pay_ch"></span><br>
 메일 : <input type="text" name="email" value="sky@tis.com">
 	  <span id="email_ch"></span><br>
 
      <input type="submit" onclick="nullCheck();" value="등록하기">
      <input type="reset" value="입력취소">
      <!-- <input type="hidden" name="duplication_ch" id="duplication_ch" value="idUncheck"> -->
 </form>
 
 <p>
 <a href="guestWrite.jsp">[회원등록]</a>
 <a href="index.jsp">[메인화면]</a>
 <a href="guestList.jsp">[전체출력]</a>	
 <p><br>
 <jsp:include page="guest_footer.jsp"/>
</body>
</html>