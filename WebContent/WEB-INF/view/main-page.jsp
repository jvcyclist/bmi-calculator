<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<spring:url value="/resources/style.css" var="styleCss" />
<link href="${styleCss}" rel="stylesheet" />
</head>


<body>
<h1>Witaj w kalkulatorze BMI</h1>


<div id="btn1">
<div id="btn">

<a href="/bmi-calculator/user/userForm">
<button class="button button1">
Rozpocznij mierzenie BMI
</button></a>

</div></div>
</body></html>