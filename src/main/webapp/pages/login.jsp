<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
	body{
		height:100vh;
		display:flex;
		justify-content:center;
		align-items:center;
		background-color:steelblue;
	}
	form{
		display:flex;
		width:70%;
		flex-direction:column;
		margin: 80px auto;
	}
	form *{
		margin:2px;
		font-size:18px;
		padding:2px;
		border-radius:8px;
	}
	.formdiv{
		padding:10px;
		width:40%;
		border:1px solid blue;
		background:linear-gradient(to bottom, lightgrey,steelblue);
		color:steelblue;
		text-align:center;
		border-radius:10px;
	}
	
	button:hover{
		cursor:pointer;
	}
	
</style>
<body>
	<div class=formdiv>
	<h2>Login Form</h2>
	<form action="loginCheck" method="post">
		<input type="text" placeholder="Enter the username"  name="username" />
		<input type="password" placeholder="Enter your password" name="password" />
		<button type="submit" >Login</button>
	</form>
	</div>
	

	<!-- 	<form action="addUser">
		<button type="submit">Add user</button>
	</form>  -->
</body>
</html>