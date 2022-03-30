<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>THRFTR</title>
		<link rel="stylesheet" href="style.css">
	</head>
	
	<body>
		<div class="WelcomeContainer">
		  <img src="Images\welcomeImg.jpg" alt="WelcomeImg" style="width:100%; height:560px;">
		  <div class="Welcomecentered">
			<div id = "registerForm" class="registerForm">
				<form onsubmit="return validateRegisterForm()" name="registerForm" action="userRegister" method="post">
					<h2 style="font-family: monospace;">Login</h2>
					<label style="font-family: monospace;" for="email">Email</label><br>
					<input style="width: 60%;" type="text" name="username" placeholder="email@address.com"><br>
					<label style="font-family: monospace;" for="password">Password</label><br>
					<input style="width: 60%;" type="password" name="password" placeholder="Password ..."><br>
					<input  type="submit" value="Submit">
				</form>
			</div>
		  </div>
		</div>
	</body>
	<script src="script.js"></script>
</html>