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
			<h2>Upload an Item for Sale!</h2>
			<div id = "loginForm" class="loginForm">
				<form onsubmit="return validateUploadForm()" action="home.jsp">
					<h3>Login</h3>
					<label for="email">Email</label><br>
					<input type="text" id="email" name="Email" placeholder="email@address.com"><br>
					<label for="password">Password</label><br>
					<input type="text" id="password" name="Password" placeholder="Password ..."><br>
					<h3>Register</h3>
					<label for="name">Full Name</label><br>
					<input type="text" id="name" name="Name" placeholder="Shea Keogh"><br>
					<label for="email">Email</label><br>
					<input type="text" id="email" name="Email" placeholder="email@address.com"><br>
					<label for="password">Password</label><br>
					<input type="text" id="password" name="Password" placeholder="Password ..."><br>
				</form>
			</div>
		  </div>
		</div>
	</body>
	<script src="script.js"></script>
</html>