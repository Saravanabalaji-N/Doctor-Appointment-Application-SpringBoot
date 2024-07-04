<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <style type="text/css">
  *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

.container{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  max-width: 430px;
  width: 100%;
  background: #fff;
  border-radius: 7px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.3);
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
.container .form{
  padding: 2rem;
}
.form header{
  font-size: 2rem;
  font-weight: 500;
  text-align: center;
  margin-bottom: 1.5rem;
}
 .form input,select{
   height: 60px;
   width: 100%;
   padding: 0 15px;
   font-size: 17px;
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
  </style>
</head>
<body>
<div class="container">
    <input type="checkbox" id="check">
    <div class="login form">
      <header>Login</header>
      <form action="/login" method="post">
        <input type="email" placeholder="Enter your email" name="mail" id="name" required>
        <input type="password" placeholder="Enter your password" name="pass" id="pass" required>
        <input type="hidden" name="profile" value="<%=request.getParameter("Profile")%>" readonly="readonly">
        <input type="submit"  class="button" value="submit">
      </form>
      <div class="signup">
        <span class="signup">Don't have an account?
         <label for="check">Signup</label>
        </span>
      </div>
    </div>
    <div class="registration form">
      <header>Signup</header>
      <form action="/registration" method="post">
      <input type="hidden" name="profile" value="<%=request.getParameter("Profile")%>" readonly="readonly">
     	<input type="text" placeholder="Enter your username" name="username" required>
        <input type="email" placeholder="Enter your email" name="mail" required>
        <input type="password" placeholder="Create a password" name="pass" required >
        <input type="password" placeholder="Confirm your password" name="repass" required>
        <input type="submit" class="button" value="Signup">
      </form>
      <div class="signup">
        <span class="signup">Already have an account?
         <label for="check">Login</label>
        </span>
      </div>
    </div>
  </div>
 

</body>
</html>