<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	
	table,th,td{
		border: 1px solid black;
	}
	
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
<%@page import="java.util.ArrayList"%>      <%--Importing all the dependent classes--%>
<%@page import="com.nagarro.entity.*"%>
<h2>Welcome <%=session.getAttribute("currentUser")%></h2>

<form action="searchTshirts">
	<button type="submit">Search Tshirts</button>
</form>

<% ArrayList<Tshirt> temp=(ArrayList<Tshirt>)request.getAttribute("reqTshirts");  %>

<table>
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