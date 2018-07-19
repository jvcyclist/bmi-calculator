<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>


<spring:url value="/resources/style.css" var="styleCss" />
<link href="${styleCss}" rel="stylesheet" />


</head>

<body>
	
	<h1>Kalkulator BMI</h1>


	
	<div id="field"> 
	<form:form action="bmiResult" modelAttribute="user">
	
	
	<div id="f1">Imie :</div>
	<div id="f2"><form:input path="firstName" /></div>
	<div style="clear:both"></div>
	
	<div id="f1">Nazwisko: </div>
	<div id="f2"><form:input path="lastName" /></div>
	<div style="clear:both"></div>
	
	<div id="f1">Wzrost(cm): </div>
	<div id="f2"><form:input path="height" /><form:errors path="height" cssClass="error">  </form:errors></div>
	<div style="clear:both"></div>
	
	
	<div id="f1">Waga(kg): </div>
	<div id="f2"><form:input path="weight" /><form:errors path="weight" cssClass="error">  </form:errors>
	</div>
	<div style="clear:both"></div>
	<input type="submit" value="Oblicz" />
	</form:form>
	</div>
	
	
	
	




</body>



</html>