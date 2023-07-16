<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Tshirt</title>
</head>
<style>
 *{
 padding:0;
 margin:0;
}

body{
height:100vh;
text-align:center;
background:linear-gradient(to bottom left, lightgrey,steelblue);
}

.main-container{
width:20%;
margin: 150px auto;
text-align:center;
}

.main-container form{
display:flex;
flex-direction:column;
padding:25px;
border: 1px solid black;
border-radius:20px;
background-color:#ddd;
}

.main-container form input{
	padding:2px 4px;
	margin: 3px 0 ;
}

form button{
	background-color:steelblue;
	color:white;
	transition:all 1s ease-in;
}

form button:hover{
background-color:red;
cursor:pointer;
}
</style>
<body>

<!-- to prevent access before login and to prevent going back after logout-->

<div class="main-container">
<h2>Search Tshirt Form</h2>
	<form action="filterTshirts">
		<input type="text" placeholder="Enter the colour" name="colour"  required />
		<input type="text" placeholder="Enter the size" name="size" required />
		<input type="text" placeholder="Enter the gender" name="gender" required />
		<input type="text" placeholder="Enter the preference" name="pref" required />
		<button type="submit">submit</button>
	</form>
</div>



</body>
</html>