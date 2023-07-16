<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="login.css">

<title>Login</title>
</head>

<style>
	body {
  margin: 0;
  padding: 0;
  background-color: #c9cfb1; 
  height: 100vh;
}
#login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 320px;
  border: 1px solid #9C9C9C;
  background-color: #c9cfb1;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
  margin-top: -85px;
}
.signinbtn {
position: absolute;
top: 10px;
right: 10px;
}

#login{
   display: flex;
   align-items: center;
   justify-content: center;
   position: relative;
   width: 100%;
   height: 100vh;
   background: #bce1f5;
}
#child{
   position: relative;
   background: #f2fafd;
   padding: 2rem;
   color: #000000;
   box-shadow: 5px 5px 20px rgba(0,0,0,.4);
   border-radius: 5px;
}

#mid_form{
	background: #f2fafd;
	
}

</style>

<body>
<!-- to prevent access before login and to prevent going back after logout-->
<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");

	%>
<div id="login" >
	<div class = "container " id="child">
						<form action="loginCheck" method="post">
							<div>
								<h4>Login</h4>
								<hr>
							</div>

							<div class="form-group row ">
								<label for="username" class="col-sm-2 col-form-label">Username:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" name="username" id="uname"
										required>
								</div>
							</div>

							<div class="form-group row">
								<label for="password" class="col-sm-2 col-form-label">Password:</label>
								<div class="col-sm-6">
									<input type="password" name="password" id="pass"
										class="form-control" required>
								</div>
							</div>
							<hr>

							<div class="form-group col-12 mt-4 text-center">
								<input type="submit" class="btn btn-outline-success "
									>
							</div>


						</form>
					</div>
				</div>



</body>
</html>