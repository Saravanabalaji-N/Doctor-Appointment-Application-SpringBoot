<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style type="text/css">

@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	min-height: 100vh;
	width: 100%;
}

.container1 {
	height: 90vh;
	display: flex;
}

.container1 {
	height: 90vh;
	display: flex;
}

.container1 img {
	width: 100%;
}

.container1 h2 {
	text-align: center;
	width: 100%;
	position: absolute;
	top: 20%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 30px;
	width: 100%;
}

.navbar {
	display: flex;
	justify-content: space-between;
	height: 10vh;
	width: 100%;
	overflow: hidden;
}

.navbar2 ol {
	width: 100%;
	display: flex;
	justify-content: start;
}

.navbar2 ol li {
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 155px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
	border-radius: 0px 0px 10px 10px;
}

.dropdown-content button {
	width: 100%;
	background-color: #fff;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
	border: 0;
}

.dropdown-content button:hover {
	background-color: #aaaaaa;
}

.show {
	display: block;
}

.navbar ol {
	display: flex;
	align-items: center;
}

.navbar ol li {
	font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
	display: inline-block;
	padding-right: 30px;
	font-size: large;
	color: black;
	cursor: pointer;
}

.navbar ol li a {
	text-decoration: none;
	color: black
}

.navbar ol li i {
	font-size: x-large;
	margin-right: 10px;
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

.footer {
	height: 10vh;
	background-color: #415256;
	font-family: serif;
	padding: 10px;
	display: flex;
	justify-content: center;
}

.footer h3 {
	font-weight: 500;
}

.footer ol li {
	line-height: 50px;
	font-size: 16px;
	display: inline-block;
	justify-content: space-between;
	padding-left: 10px;
	color: #fff;
}

.footer ol li i {
	padding-right: 10px;
  display: none;
	position: relative;
	right: 15px;
	border: 3px solid #f1f1f1;
	z-index: 9;
}

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

.Show {
display:flex;
width:100%;
margin-left:33%;
text-align:center;
justify-content:center;
	max-width: 430px;
	position: relative;
	background: #FFF;
}

.container{
text-align:center;
display:flex;
width:100%;
justify-content:center;
  max-width: 430px;
  border-radius: 7px;
}

.container .registration{
  display: none;
}
#check:checked ~ .registration{
  display: block;
}
#check:checked ~ .login{
  display: none;
}
#check{
  display: none;
}

.container .registration1{
  display: none;
}
#check1:checked ~ .registration1{
  display: block;
}
#check1:checked ~ .login1{
  display: none;
}
#check1{
  display: none;
}
.container .form{
  padding: 1rem;
}

.form header{
  font-size: 1.2rem;
  font-weight: 500;
  text-align: center;
  margin-bottom: 1.5rem;
}
 .form input,select{
   height: 50px;
   width: 100%;
   padding: 0 10px;
   font-size: 14px;
   margin-bottom: 1rem;
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
  font-size: 16px;
  font-weight: 500;
  letter-spacing: 1px;
  margin-top: 1.2rem;
  cursor: pointer;
  transition: 0.4s;
}
.form input.button:hover{
   background: #d62300;
   color: #fff;
}
.signup{
  font-size: 16px;
  text-align: center;
}
.signup label{
  color:  rgb(0, 128, 255);
  cursor: pointer;
}
.signup label:hover{
  text-decoration: underline;
}

</style>
</head>
<body>

	<div class="navbar">
		<img alt="" src="img/dpulselogo-300x106.png" height="100%">

		<ol style="gap: 15px; margin-right: 10px;">

			<div>
				<p>
					Services <i class="fa fa-caret-down"></i>
				</p>
			</div>
			<div class="dropdown"
				style="background-color: orange; border-radius: 10px;">
				<button class="dropbtn" onclick="myFunction()" style="color: black;">
					Login/Signup <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content" id="myDropdown">
					<button onclick="patientOpen()">Doctor</button>
					<button onclick="doctorOpen()">Patient</button>
				</div>
			</div>
			<div class="dropdown"
				style="background-color: #034694; border-radius: 10px;">
				<button class="dropbtn">		
					<a href="admin.jsp" style="text-decoration: none; color: black;">
						Admin </a><i class="fa-solid fa-user" style="color: black;"></i>
				</button>
			</div>
		</ol>
	</div>
	
	
	<div style="background: #FFF; ">
	
		<div class="Show" >
	
		<div class="form-popup" id="myForm">
    <div class="container">
        <!-- Doctor Login Section -->
        <input type="checkbox" id="check">
        <div class="close" onclick="patientClose()">&times;</div>
        <div class="login form">
            <header>Doctor Login</header>
            <form action="login" method="post">
                <input type="email" placeholder="Enter your email" name="mail" id="name" required>
                <input type="password" placeholder="Enter your password" name="pass" id="pass" required>
                <input type="hidden" name="profile" value="Doctor" readonly="readonly">
                <input type="submit" class="button" value="Login">
            </form>
            <div class="signup">
                <span>Don't have an account? <label for="check">Signup</label></span>
            </div>
        </div>
        <div class="registration form">
            <header>Doctor Signup</header>
            <form action="doctorregistration" method="post">
                <input type="hidden" name="profile" value="Doctor" readonly="readonly">
                <input type="text" placeholder="Enter your username" name="username" required>
                <input type="email" placeholder="Enter your email" name="mail" required>
                <input type="password" placeholder="Create a password" name="pass" required>
                <input type="password" placeholder="Confirm your password" name="repass" required>
				<select name="type">
				<option>Neurologist</option>
				<option>Cardiologist</option>
				<option>Dermatologist</option>
				<option>Gastroenterologists</option>
				<option>Hematologists</option>
				</select>
                <input type="submit" class="button" value="Signup">
            </form>
            <div class="signup">
                <span>Already have an account? <label for="check">Login</label></span>
            </div>
        </div>
    </div>
</div>

<div class="popup" id="Form">
    <div class="container">
        <!-- Patient Login Section -->
        <input type="checkbox" id="check1">
        <div class="close" onclick="doctorClose()">&times;</div>
        <div class="login1 form">
            <header>Patient Login</header>
            <form action="login" method="post">
                <input type="email" placeholder="Enter your email" name="mail" id="name" required>
                <input type="password" placeholder="Enter your password" name="pass" id="pass" required>
                <input type="hidden" name="profile" value="Patient" readonly="readonly">
                <input type="submit" class="button" value="Login">
            </form>
            <div class="signup">
                <span>Don't have an account? <label for="check1">Signup</label></span>
            </div>
        </div>
        <div class="registration1 form">
            <header>Patient Signup</header>
            <form action="/patientregistration" method="post">
                <input type="hidden" name="profile" value="Patient" readonly="readonly">
                <input type="text" placeholder="Enter your username" name="username" required>
                <input type="email" placeholder="Enter your email" name="mail" required>
                <input type="password" placeholder="Create a password" name="pass" required>
                <input type="password" placeholder="Confirm your password" name="repass" required>
                <input type="submit" class="button" value="Signup">
            </form>
            <div class="signup">
                <span>Already have an account? <label for="check1">Login</label></span>
            </div>
        </div>
    </div>
</div>
		
		</div>
	
	
	</div>
	

	<div class="container1">
		<img alt="" src="img/meet-my-doctor-1.png">
	</div>



	<div class="footer">
		<ol>
			<li><i class="fa-solid fa-envelope"></i>bookmyappointment@gmail.com</li>
			<li><i class="fa-solid fa-phone"></i>+91-9078986757</li>
		</ol>
		<div></div>
	</div>


	<script>
		function myFunction() {
			document.getElementById("myDropdown").classList.toggle("show");
		}

		window.onclick = function(e) {
			if (!e.target.matches('.dropbtn')) {
				var myDropdown = document.getElementById("myDropdown");
				if (myDropdown.classList.contains('show')) {
					myDropdown.classList.remove('show');
				}
			}
		}

		function patientOpen() {
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