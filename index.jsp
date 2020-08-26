<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[ Index.jsp ]</title>
<script type="text/javascript">
	/* index 는 사용자를 glist.do 로 보내고 
	   glist.do 는 사용자를 또 guestList.jsp로 보낸다. */
	setTimeout("location.href='glist.do'", 1000); 
</script>
<style type="text/css">
	#pline{ margin-top : 70px; }
	*{ font-size:24pt; }
</style>
</head>
<body>
	 <div align="center">
        <br>
        <video width="400" autoplay muted loop controls="controls">
        <source src="images/scuba.mp4"></source>
        </video>
        <p></p>
    </div>
</body>
</html>
