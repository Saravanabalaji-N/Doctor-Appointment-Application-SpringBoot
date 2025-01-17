<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.chainsys.doctorappointment.model.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bookappointment.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

.container {
	position: absolute;
	max-width: 430px;
	width: 100%;
	border-radius: 7px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3);
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.container .form {
	padding: 2rem;
}

.form header {
	font-size: 2rem;
	font-weight: 500;
	text-align: center;
	margin-bottom: 1.5rem;
}

.form select,input {
	height: 60px;
	width: 100%;
	padding: 0 15px;
	font-size: 17px;
	margin-bottom: 1.3rem;
	border: 1px solid #ddd;
	border-radius: 6px;
	outline: none;
}


.form input:focus {
	box-shadow: 0 1px 0 rgba(0, 0, 0, 0.2);
}

.form a {
	font-size: 16px;
	color: #009579;
	text-decoration: none;
}

.form a:hover {
	text-decoration: underline;
}

.form input.button {
	color: #fff;
	background: gray;
	font-size: 1.2rem;
	font-weight: 500;
	letter-spacing: 1px;
	margin-top: 1.7rem;
	cursor: pointer;
	transition: 0.4s;
}

.form input.button:hover {
	background: #d62300;
}

.signup {
	font-size: 17px;
	text-align: center;
}

.signup label {
	color: #009579;
	cursor: pointer;
}

.signup label:hover {
	text-decoration: underline;
}
</style>

</head>
<body>
	<div class="container" >
		<div class="registration form">

			<header>Book Appointment</header>
			<form action="booking" method="post">
<%
	User user=(User)session.getAttribute("list");
	%>
      				<input type="hidden"  name="mail" value="<%=user.getMailid()%>" >
					<label for="">Specialist</label>
					<input type="text" name="disease"value="<%=request.getParameter("event")%>" readonly> <label
					for="">Date</label> <input type="date" name="date" required> <label
					for="">Available Slot</label> <select name="time" id="slot">
					<option value="10-12 ">10-12 AM</option>
					<option value="1-3">1-3 PM</option>
					<option value="4-6 ">4-6 PM</option>
					<option value="8-9">8-9 PM</option>
				</select> <input type="submit" class="button" value="Book Slot">
			</form>
		</div>
	</div>
</body>
</html>