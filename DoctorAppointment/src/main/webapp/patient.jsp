<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.chainsys.doctorappointment.model.User"%>
<%@ page import="com.chainsys.doctorappointment.dao.UserImpl"%>
<%@ page  import="org.springframework.context.ApplicationContext"%> 
<%@ page  import="org.springframework.web.context.WebApplicationContext"%>
<%@ page  import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%
HttpSession Session = request.getSession();

if (Session == null || Session.getAttribute("mail") == null) {
	response.sendRedirect("home.jsp");
	return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

.navbar {
	display: flex;
	justify-content: space-between;
	height: 10vh;
	width: 100%;
}

.navbar h2 {
	padding: 20px;
	letter-spacing: 1px;
	font-family: cursive;
}

.navbar h2 span {
	color: #d62300;
	font-family: fantasy;
	font-weight: 100;
}

.navbar ol {
	display: flex;
	align-items: center;
}

.navbar ol li {
	display: inline-block;
	padding-right: 20px;
	cursor: pointer;
}

.navbar ol form {
	padding-right: 20px;
}

.navbar ol form input {
	border: none;
	background: transparent;
	font-size: large;
	cursor: pointer;
}

.sidebar {
	height: 10vh;
	width: 100%;
	background-color: #ddd8ce;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.sidebar button {
	padding: 16px 12px;
	font-size: 16px;
	background: transparent;
	outline: 0;
	border: 0;
}

.sidebar p {
	padding-left: 15px;
}

.sidebar ol {
	height: 100%;
	display: flex;
	justify-content: flex-end;
	align-items: center;
	padding-right: 30px;
	gap: 20px;
}

.sidebar ol li {
	display: inline-block;
}

.container {
	height: 15vh;
	width:100%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.container2 {
	display: flex;
	height:65vh;
	justify-content: center;
	align-items: center;
	gap:40px;
	position: relative;
}


.container2 div {
	height: 320px;
	width: 250px;
	border-radius: 10px;
}

.container2 .box {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	border: 1px solid black;
}

.container2 h2 {
	font-size: 34px;
}

.container2 .box p {
	width: 100%;
	background: transparent;
	border: none;
	font-size: 16px;
	text-align: center;
	margin-bottom: 6px;
}

.container2 .box {
	text-align: center;
}

.container2 .box input {
	width: 100%;
	background: transparent;
	font-size: 16px;
	text-align: center;
	padding: 10px 20px;
	border: 0;
	border-radius: 10px;
	background-color: gray;
	transition: ease 0.1s;
}

.container2 .box input:hover {
	background-color: #d62300;;
	color: #fff;
}

.search-container{
width: 100%;
text-align: center;
}

.search-container input {
   width:40%;
	padding: 15px 20px;
	outline: 0;
	border: 0;
	font-size: 16px;
	border-radius: 10px 0px 0px 10px;
	background-color: #aaaaaa;
	opacity: 40%;
}

.search-container button {
	padding: 14px;
	outline: 0;
	border: 0;
	font-size: 17px;
	border-radius: 0px 10px 10px 0px;
	border: 1px solid #034694;
	background: #034694;
	color:#fff;
}

.search-container button i {
	color: #fff;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	cursor: pointer;
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.dropdown-content {
	display: none;
	position: absolute;
	right: 2%;
	min-width: 155px;
	z-index: 1;
	border-radius: 10px 10px 10px 10px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}



.dropdown-content button:hover {
	background-color: #ddd;
}

.show {
	display: block;
}

.containerbox .form{
margin:20px;
  padding: 2rem;
  border:1px solid gray;
  position: relative;
}
.form header{
  font-size: 24px;
  font-weight: 500;
  text-align: left;
  margin-bottom: 1.5rem;
}

 .form input,select{
 display:block;
   height: 40px;
   width: 100%;
   padding: 10px;
   font-size: 14px;
   margin-bottom: 1.3rem;
   border: 1px solid #ddd;
   border-radius: 6px;
   outline: none;
 }
 .form input:focus{
   box-shadow: 0 1px 0 rgba(0,0,0,0.2);
 }
.form a{
  font-size: 16px;
  color: #009579;
  text-decoration: none;
}
.form a:hover{
  text-decoration: underline;
}
.form input.button{
  color:black ;
  background: gray;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 1px;
  margin-top: 12px;
  cursor: pointer;
  transition: 0.4s;
}
.form input.button:hover{
   background: #d62300;
   color: #fff;
}
.signup{
  font-size: 17px;
  text-align: center;
}
.signup label{
  color:  rgb(0, 128, 255);
  cursor: pointer;
}
.signup label:hover{
  text-decoration: underline;
}

.containerbox{
  max-width: 430px;
  width: 100%;
  background: #fff;
  border-radius: 7px;
  position: relative;
}

.close-btn{
position: absolute;
top: 10px;
right: 10px;
cursor: pointer;
padding: 5px;
font-size: x-large;
border-radius: 50%;
line-height: 10px;
}
</style>

</head>
<body>
	<div class="navbar">
		<img alt="" src="img/dpulselogo-300x106.png" height="100%">
		<ol>
			<li><i class="fa-solid fa-heart-pulse"></i></li>

			<li><div class="dropdown">
					<button class="dropbtn" onclick="myFunction()"
						style="color: black;">
						<i class="fa-solid fa-bars-staggered"></i>
					</button>
					<div class="dropdown-content" id="myDropdown">
						<form action="/logout" method="post">
						<button>Profile</button>
						</form>
						<form action="/logout" method="post">
						<button>Logout</button>
						</form>
					</div>
				</div></li>
		</ol>
	</div>

	<div class="sidebar">
		<p>
			Welcome,
			<%=Session.getAttribute("mail")%></p>
		<ol>
			<li>
				<form action="">
					<button type="submit" id="view">View Appointment</button>
					<i class="fa-regular fa-clipboard"></i>
				</form>
			</li>
			<li><form action="">
					<button type="submit" id="view">Edit Appointment</button>
					<i class="fa-solid fa-calendar-days"></i>
				</form></li>
		</ol>
	</div>

	<div class="container">
		<div class="search-container">

				<input type="text" placeholder="Search.." name="search">
				<button type="submit">
					SEARCH <i class="fa fa-search"></i>
				</button>
		</div>
	</div>
	
	<div class="container2">
			<div class="box">
				<img alt=""
					src="img/male-doctor-with-stethoscope-vector-icon-circle-white-background_418020-88.avif"
					height="220px" width="180px">
				<p>Cardiologist</p>
				<form action="AppointmentCheck" method="post">
					<input type="hidden" name="action" value="Cardiologist"> <input
						type="submit" value="book appointment">
				</form>
			</div>
			<div class="box">
				<img alt=""
					src="img/male-doctor-with-stethoscope-vector-icon-circle-white-background_418020-88.avif"
					height="220px" width="180px">
				<p>Dermatologists</p>
				<form action="AppointmentCheck" method="post">
					<input type="hidden" name="action" value="Dermatologists">
					<input type="submit" value="book appointment">
				</form>

			</div>
			<div class="box">
				<img alt=""
					src="img/male-doctor-with-stethoscope-vector-icon-circle-white-background_418020-88.avif"
					height="220px" width="180px">
				<p>Gastroenterologists</p>
				<form action="AppointmentCheck" method="post">
					<input type="hidden" name="action" value="Gastroenterologists">
					<input type="submit" value="book appointment">
				</form>
			</div>
			<div class="box">
				<img alt=""
					src="img/male-doctor-with-stethoscope-vector-icon-circle-white-background_418020-88.avif"
					height="220px" width="180px">
				<p>Neurologist</p>
				<form action="AppointmentCheck" method="post">
					<input type="hidden" name="action" value="Neurologist"> <input
						type="submit" value="book appointment">
				</form>
			</div>
		</div>
		
		<div class="containerbox">
		
		 <div class="registration form">
		 <div class="close-btn">&times;</div>
	      <header>Profile</header>
	      <form action="profile" method="post">

	     	<input type="hidden" placeholder="Enter your username" name="mail" readonly >
	   
	     	<label for="">Enter your location</label>	
	     	<input type="text" placeholder="Enter your location" name="location"  required >
	     	<label for="">Enter your location</label>	
	     	<input type="text" placeholder="Enter your location" name="location"  required >
	     	 <label for="">Enter your PhoneNo</label>
	        <input type="text" placeholder="Enter your phone-no" name="phone"  required >
	        <label for="">Enter your DOB</label>
	        <input type="date" placeholder="Enter your dob" name="dob" required>
	        <label for="">Upload your Image</label>
	        <input type="file" placeholder="upload your image" name="image" required > 
	        <input type="submit" class="button" value="update">
	      </form>
	      </div>
	
    </div>
	<script>
		function myFunction() {
			document.getElementById("myDropdown").classList.toggle("show");
		}

		window.onclick = function(e) {
			if (!e.target.matches('.dropbtn')) {
				var myDropdown = document.getElementById("myDropdown");
				if (myDropdown.classList.contains('show')) {
					/*  myDropdown.classList.remove('show'); */
				}
			}
		}
	</script>
</body>
</html>