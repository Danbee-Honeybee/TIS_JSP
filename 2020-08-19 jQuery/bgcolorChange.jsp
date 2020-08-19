<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bgcolorChange.jsp</title>
<style>
	botton{
		border:1px solid black;
		background-color: white;
		width:150px;
		height:70px;
		padding:10px;
		position:absolute;
		left:20px;
		top:20px;
	}
</style>
<script type="text/javascript">
	function changeColor(){
		var arrColor = ["#ff0","#6c0","#fcf","#cf0","#39f"];
		var arrNum = Math.floor(Math.random()*arrColor.length);
		var bodyTag = document.getElementById("theBody");
		bodyTag.style.backgroundColor = arrColor[arrNum];
	}
</script>
</head>
<body id = "theBody">
		<botton onclick="changeColor()" border='1'>Change Background Color</botton>
</body>
</html>