<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

     <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 

    <script src="main.js"></script>


<title>HOME</title>
</head>
<style>
*{
	padding:0;
	margin:0;
}

	body{
		padding: 40px;
		text-align:center;
		height:100vh;
		background:linear-gradient(to bottom right, lightgrey,steelblue);
	}
	
	table{
		margin-top:40px;
		width:100%;
		background-color:#ddd;
	}
	
	thead {
	  font-weight: bold;
	  color: white;
	}
	
	td {
	    color: black;	
	    font-weight: normal;
	}
	
	tr:nth-child(odd) {background-color:#ecf4d4;}
	
	
	
	form button{
		margin: 10px 0;
		padding:6px 7px;
		background-color:steelblue;
		color:white;
		transition:all 1s ease;
		border-radius:15px;
		
	}
	form button:hover{
		background-color:red;
		cursor:pointer;
	}
</style>
<body>

<!-- to prevent access before login and to prevent going back after logout-->
	<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
	%>


<%@page import="java.util.ArrayList"%>      <%--Importing all the dependent classes--%>
<%@page import="com.nagarro.entity.*"%>
<h2>Welcome <%=session.getAttribute("currentUser")%></h2>

<form action = "logout" method = "post">
<button type = "submit" class = "btn btn-outline-success">Logout</butoon>
</form>

<form action="searchTshirts">
	<button type="submit">Search Tshirts</button>
</form>

<% ArrayList<Tshirt> temp=(ArrayList<Tshirt>)request.getAttribute("reqTshirts");  %>

<table class="table table-bordered border #88cc00">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Color</th>
		<th>Gender</th>
		<th>Size</th>
		<th>Price</th>
		<th>Rating</th>
	</tr>
	<%
if(request.getAttribute("reqTshirts")!=null){
for(Tshirt tee:temp){ %>
	<tr>
		<td><%= tee.getId()%></td>
		<td><%= tee.getName()%></td>
		<td><%= tee.getColour()%></td>
		<td><%= tee.getGender()%></td>
		<td><%= tee.getSize()%></td>
		<td><%= tee.getPrice()%></td>
		<td><%= tee.getRating()%></td>
	</tr>
<%} }%>
</table>


</body>
</html>