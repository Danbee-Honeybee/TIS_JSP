<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>grade.jsp</title>
<script type="text/javascript">

		function TestScore(name,kor,eng){
			
			this.userName = name;
			this.korNum = kor;
			this.engNum = eng;
			
			this.getTestInfo=function(){
				document.write("이름:" + userName +"<br>");
				document.write("국어:" + korNum +"<br>");
				document.write("영어:" + engNum +"<br>");
			}
		
			this.getAvg = function(){
				return (korNum + engNum)/2;
			}
		}
	
		var kimgun 	= new TestScore("김군", 80, 90);
		var ohgun 	= new TestScore("오군", 100, 80);
		
		kimgun.getTestInfo();
		document.write("평균점수 : " + kimgun.getAvg(), "<br><br>");
		
		ohgun.getTestInfo();
		document.write("평균점수 : " + ohgun.getAvg(), "<br>");
	
</script>
</head>
<body>
		
</body>
</html>