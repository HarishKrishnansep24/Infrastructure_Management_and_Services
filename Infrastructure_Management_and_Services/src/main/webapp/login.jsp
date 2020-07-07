
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <style>
  
  body, html {
  margin-top:0;
  text-align: center;
 background-image: url("Image/KPRIET.jpg");
 height: 100%; 
 width: 100%;
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
@media screen and (max-width: 700px) {
body{
margin-top:0;
  text-align: center;
 background-image: url("Image/KPRIET.jpg");
 height: auto; 
 width: auto;
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  }
}
h4,h2
{
color: azure;
}

  </style>
</head>
<body bgcolor="blue">

<div class="container-fluid">
	<h2>KPR Infrastructural Protocol</h2>
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#login" style="width:auto;">Login</button><br>
	<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
		<font color="red">
			<i class="material-icons" style="font-size:15px;color:red">warning</i>
			Username or Password is incorrect 
		</font>
	</c:if>
	<div class="row">
		<h4>Guide</h4>
		<img src="Image/Kamarajsir.jpg" width="10%" height="10%">
		<h4>Mr.K.Kamaraj</h4>
	</div>
	<div class="row">
		<div class="col-sm-3">
		<h4>Team member 1:</h4>
		<img src="Image/Harish.jpg" width="30%" height="20%">
		<h4>K. Harish</h4>
		</div>
		<div class="col-sm-3">
		<h4>Team member 2:</h4>
		<img src="Image/hariprasath.jpg" width="30%" height="20%">
		<h4>C. Hariprasath</h4>
		</div>
		<div class="col-sm-3">
		<h4>Team member 3:</h4>
		<img src="Image/Jeeva.JPG" width="30%" height="20%">
		<h4>N. Jeeva Bharathi</h4>
		</div>
		<div class="col-sm-3">
		<h4>Team member 4:</h4>
		<img src="Image/jaisuriya.jpg" width="30%" height="20%">
		<h4>R. Jaisuriya</h4>
		</div>
	</div>
		 
</div>
<div class="modal fade" id="login" role="dialog" style="padding-top: 10%;">

	<div class="modal-dialog modal-sm-1">
		<div class="modal-content">
			
			<div class="modal-header" style="background-color: #388643;text-align: center;">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<img alt="logo" src="Image/Logo.png" align="middle" style="width:10%;height:10%;">
				<label class="modal-title" style="color: #FFFFFF">KPR Infrastructural Login Portal</label>
					
					
			</div>
			<div class="modal-body" style="text-align: center;">
				
				<form class="form-horizontal" action="login" method="post" style="text-align: center;">
					<div class="form-group">
						<label class="control-label col-sm-3" for="oldpassword">Mail Id:</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="Mail_Id" required="required" placeholder="Enter Mail Id" name="username">
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3" for="password">Password:</label>
							<div class="col-sm-5">
								<input type="password" class="form-control" id="Hall_Id" required="required" placeholder="Enter the Password" name="password">
							</div>
					</div>
					<div class="form-group">        
						<div class="col-sm-offset-2 col-sm-6">
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
					</div>
								
				</form>
					
			</div>
			
		</div>
		
	</div>
	</div>







</body>
</html>