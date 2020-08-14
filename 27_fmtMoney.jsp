<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"   %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 27_fmtMoney.jsp ] </title>
 
 <style type="text/css">
     * { font-size:30pt; font-weight: bold; }
     a { font-size: 30pt; color:green; text-decoration:none; }
	 a:hover { font-size:32pt; color:blue; text-decoration:underline; }
 </style>
</head>
<body>
	27_fmtMoney.jsp   <p>
    <!-- formatNumber -->
	number   =  <fmt:formatNumber value="1234567.89" type="number"/><br>
	currency =  <fmt:formatNumber value="1234567.89" type="currency" currencySymbol="￦"  /> <br>
	percent  =  <fmt:formatNumber type="percent">0.159</fmt:formatNumber><br>
	pattern  =  <fmt:formatNumber value="1234567.1" pattern=".000" /><br>
	pattern  =  <fmt:formatNumber value="1234567.891" pattern="#,#00.0#"/><p>

	<!-- parseNumber  -->
	number   =  <fmt:parseNumber value="1,234,567.89" type="number"/><br>
	currency =  <fmt:parseNumber value="12345abcdef" integerOnly="false" type="number" /><br>
	
	<p>
	<a href="04_researchForm.jsp">[동물화면]</a>
	<a href="06_addForm.jsp">[연산입력]</a>
	<a href="index.jsp">[index]</a>
	<a href="guestList.jsp">[guestList]</a>
</body>
</html>












