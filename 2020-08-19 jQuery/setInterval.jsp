<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setInterval.jsp</title>
<script type="text/javascript">
	var addNum=0;
	var subNum=1000;
	
	var auto_1 = setInterval(function() {
		addNum++;
		console.log("addNum:"+addNum);
	}, 3000);
	
	var auto_2 = setInterval(function(){
		subNum--;
		console.log("subNum:"+subNum);
	}, 3000);
</script>
</head>
<body>
		<button onclick="clearINterval(auto_1)">증가 정지</button>
				<button onclick="clearINterval(auto_2)">감소 정지</button>
</body>
</html>