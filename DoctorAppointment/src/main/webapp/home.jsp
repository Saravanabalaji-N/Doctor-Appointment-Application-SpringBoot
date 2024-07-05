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

.container {
	height: 90vh;
	display: flex;
}

.container img {
	width: 100%;
}

.container h2 {
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

.navbar2 ol{
width:100%;
display:flex;
justify-content:start;
}

.navbar2 ol li{
display: inline-block;

}

.dropdown-content {
  display: none;
  position: absolute;
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
	color:#fff;
}

.footer ol li i {
	padding-right: 10px
}
</style>
</head>
<body>

	<div class="navbar">
		<img alt="" src="img/dpulselogo-300x106.png" height="100%">

		<ol  style="gap: 15px; margin-right: 10px;" >
			<div>
			<p>Services <i class="fa fa-caret-down"></i></p>
			</div>
			<div class="dropdown" style="background-color:orange; border-radius: 10px;">
				<button class="dropbtn" onclick="myFunction()" style="color:black;">
					Login/Signup <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content" id="myDropdown">
					<a href="registration.jsp?Profile=Doctor">Doctor</a> 
					<a href="registration.jsp?Profile=Patient">Patient</a> 
				</div>
			</div>
			<div class="dropdown"  style="background-color:#034694; border-radius: 10px;" >
			<button class="dropbtn">
					<a href="admin.jsp" style="text-decoration: none; color:black;">
					Admin </a><i class="fa-solid fa-user"  style=" color:black;"></i>
				</button>
			</div>
			</ol>
	</div>
	
	<div class="container">
		<img alt=""
			src="img/meet-my-doctor-1.png">
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
</script>
</body>
</html>