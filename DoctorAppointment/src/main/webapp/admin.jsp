<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

.form-popup {
	display: none;
	right: 15px;
	border: 3px solid #f1f1f1;
	z-index: 9;
	padding: 10px;
}

.popup {
	display: none;
	right: 15px;
	border: 3px solid #f1f1f1;
	z-index: 9;
	padding: 10px;
}
.close {
	position:absolute;
	right:0;
	padding:5px;
	font-size:x-large;
	font-weight:bold;
	margin-right: 15px;

}
</style>
</head>
<body>


<form action="/admin" method="post">
<button type="submit" onclick="patientopen()">Doctor</button>
</form>
<button type="submit" onclick="doctorOpen()">Patient</button>

<div class="form-popup" id="myForm">
<div class="close" onclick="patientClose()">&times;</div>




</div>


<div class="popup" id="Form">
<div class="close" onclick="doctorClose()">&times;</div>
<p>place</p>
</div>


<script type="text/javascript">

function patientopen() {
	document.getElementById("myForm").style.display = "block";
	document.getElementById("Form").style.display = "none";
	
}

function patientClose() {
	document.getElementById("myForm").style.display = "none";
}

function doctorOpen() {
	document.getElementById("Form").style.display = "block";
	document.getElementById("myForm").style.display = "none";
}

function doctorClose() {
	document.getElementById("Form").style.display = "none";
}

</script>
</body>
</html>