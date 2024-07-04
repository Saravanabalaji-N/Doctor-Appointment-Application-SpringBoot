<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
<link rel="stylesheet" href="doctor.css">

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing:border-box;
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
	font-size: large;
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



.form header{
  font-size: 2rem;
  font-weight: 500;
  text-align: center;
  margin-bottom: 1.5rem;
}
 .form input,select{
   height: 30px;
   width: 100%;
   padding: 0 15px;
   font-size: 10px;
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
  font-size: 1.2rem;
  font-weight: 500;
  letter-spacing: 1px;
  margin-top: 1.7rem;
  cursor: pointer;
  transition: 0.4s;

}
.form input.button:hover{
   background: #d62300;
   color: #fff;
}

.show {
	display: block;
}

.sidebar {
	height: 10vh;
	width: 100%;
	background-color: #ddd8ce;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.sidebar button{
padding: 16px 12px;
font-size: 16px;
background: transparent;
outline: 0;
border:0;
}

.sidebar p{
	padding-left: 15px;
}

.sidebar ol{
height:100%;
display: flex;
justify-content: flex-end;
align-items:center;
padding-right: 30px;
gap:20px;
}

.sidebar ol li {
	display: inline-block;
}

/* 
.container {
	height: 80vh;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 20px;
}

.container div {
	height: 200px;
	width: 200px;
	border-radius: 10px;
}

.container .box {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
}

.container .box i {
	font-size: 70px;
}
 */
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
  right:3%;
  background-color: #f9f9f9;
  min-width: 155px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
    border-radius: 0px 0px 10px 10px;
}

.dropdown-content a {
  background-color:#fff;
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;

}

.show {
  display: block;
}

.form{
border:1px solid gray;
position: relative;
}

.container .form{
margin:20px;
  padding: 2rem;
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

.container{
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
		<ol >
			<li><i class="fa-solid fa-bell"></i></li>
			
			<li><div class="dropdown">
				<button class="dropbtn" onclick="myFunction()" style="color:black;">
					<i class="fa-solid fa-bars-staggered"></i>
				</button>
				<div class="dropdown-content" id="myDropdown">
					<a href="" onclick="myFunction1()"class="profile" id="profile">Profile</a> 
					<a href="">
					<form action="/logout" method="post">
					<input type="hidden" name="action" value="logout"> 
					<input type="submit" value="Logout">
					</form>
					</a> 
				</div>
			</div></li>
		</ol>
	</div>
`
	<div class="sidebar">
		<p>Welcome, <%=Session.getAttribute("mail")%></p>
		<ol>
			<li>
				<form action="AppointmentBooking">
					<button type="submit" id="view">View Appointment</button>
					<i class="fa-regular fa-clipboard"></i>
				</form>
			</li>
			<li><form action="AppointmentBooking">
					<button type="submit" id="view">Edit Appointment</button>
					<i class="fa-solid fa-calendar-days"></i>
				</form>
			</li>
			
		</ol>
		
	</div>
	
	<div class="container">
	
	 <div class="registration form">
	 <div class="close-btn">&times;</div>
      <header>Enter your Details</header>
      <form action="DoctorDetails" method="post">
     	<label for="">Enter your username</label>	
     	<input type="text" placeholder="Enter your username" name="name" value="" readonly>
     	<label for="">Enter your email</label>
        <input type="email" placeholder="Enter your email" name="mail" value="" readonly>
        <label for="">Enter your DOB</label>
        <input type="date" placeholder="Enter your Specialization" name="dob">
        <label for="">Enter your Specialization</label>
        <input type="text" placeholder="Enter your Specialization" name="spec">
        <label for="">Upload your Image</label>
        <input type="file" placeholder="Create a password" name="image" required >
        <input type="submit" class="button" value="update">
      </form>
      </div>
    </div>

	<script>
		function myFunction() {
			document.getElementById("myDropdown").classList.toggle("show");
		}
		
		window.onclick = function(e) {
			if (!e.target.matches('.profile')) {
				var myDropdown = document.getElementById("profile");
				if (myDropdown.classList.contains('show1')) {
					/*  myDropdown.classList.remove('show'); */
				}
			}
		}
		
	
	</script>
</body>
</html>