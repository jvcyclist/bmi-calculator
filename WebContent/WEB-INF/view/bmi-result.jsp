<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<spring:url value="/resources/style.css" var="styleCss" />
<link href="${styleCss}" rel="stylesheet" />
</head>

<body>

<h1>Wyniki !</h1>

<br><br>


<div id="field"> 


	<div id="f1">Imie :</div>
	<div id="f3">${user.firstName}</div>
	<div style="clear:both"></div>
	
	<div id="f1">Nazwisko: </div>
	<div id="f3">${user.lastName}</div>
	<div style="clear:both"></div>
	
	<div id="f1">Wzrost: </div>
	<div id="f3">${user.height} cm</div>
	<div style="clear:both"></div>
	
	
	<div id="f1">Waga: </div>
	<div id="f3">${user.weight} kg
	</div>
	<div style="clear:both"></div>

	<div id="f1">BMI: </div>
	<div id="f3">${user.ratio}
	</div>
	<div style="clear:both"></div>
	
	<div id="f1">Oznaczenie BMI: </div>
	<div id="f3">${user.result}
	</div>
	<div style="clear:both"></div>
	



</body>



</html>