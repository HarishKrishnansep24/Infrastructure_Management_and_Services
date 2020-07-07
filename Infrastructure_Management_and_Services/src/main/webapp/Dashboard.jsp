
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib prefix="security"
  uri="http://www.springframework.org/security/tags" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
  <title>KPR Infrastructural Portal</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  
   

  
  
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  

  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="http://resources/demos/style.css">
  <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>


  <style>
  	
   
    body {
    position: relative;
    overflow-x: hidden;
    
}
    
    .main {
  margin-left: 180px; /* Same as the width of the sidenav */
  padding-bottom:90px;
  padding: 0px 10px;
}
@media screen and (max-width: 700px) {
.main
{
margin-left: 0px;
padding: 0px;
padding-bottom:90px;
}
}

	.leftside{
	margin-top:50px;
	}
	
    .insidecontent
    {
    margin-top:50px;
    margin-bottom:90px;
    }
    
    .row.content {height: 450px}
    @media screen and (max-width: 700px) {
     .panelalign{width:300px;
     margin-left:15px;
     text-align:center;
     
     }
    }
    
    
    
    @media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {
	.panelalign{width:200px;
     margin-left:15px;
     align:center;
     }
}
    
     @media screen and (max-width: 700px) 
     {
     	.container-fluid{margin-left:0px;left:0px;margin-right:12px;}
     }
    
    .sidenav {
      
      padding: 16px;
      background-color: #f1f1f1;
      width:180px;
      height: 100%;
      min-height:100%;
      position:fixed;
    }
    
    
    .footer {
      background-color: black;
      position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  height:60px;
  color: white;
  padding-top:20px;
  text-align: center;
    }
    .btn-circle.btn-xl {
    width: 70px;
    height: 70px;
    padding: 10px 16px;
    border-radius: 35px;
    font-size: 24px;
    line-height: 1.33;
    align: right;
}

.btn-circle {
    width: 30px;
    height: 30px;
    padding: 6px 0px;
    border-radius: 15px;
    text-align: center;
    text-color: white;
    font-size: 1px;
    line-height: 1.42857;
    align: right;
}

@media screen and (max-width: 700px) {
  .sidenav {
    width: 100%;
    height: auto;
    position: relative;
    margin-left: 0;
  }
  .sidenav a {float: left;}
  div.content {margin-left: 0;}
}
@media (max-width: 782px)
.page-wrapper-title {
    top: 0px;
    padding-left: 0px;
    padding-right: 10px;
    
}


@media (min-width: 783px){
.page-wrapper-title {
    padding-left: 0px;
    padding-right: 10px;
    }
    .page-wrapper-title {
    height: 45px;
    width:100%;
    background-color: white;
    margin-bottom: 30px;
    margin-left: 180px;
    position: fixed;
    left: 0px;
    opacity: 1;
    z-index: 198;
}
}
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        width:100%;
        padding: 0px;
      }
      .row.content {height:auto;margin-left:0px;} 
    }
    
    .headercolor
    {
    	background-color: #0480be;
    	color: white;
    }
    
  </style>

  <script type="text/javascript">
 
					$(document).ready(function() {
						
					    $('#Date').datepicker({
					        onSelect: function(dateText, inst) {
					          
					            var today = new Date();
					            today = Date.parse(today.getMonth()+1+'/'+today.getDate()+'/'+today.getFullYear());
					            
					            var selDate = Date.parse(dateText);
					            
					            if(selDate < today) {
					            
					                $('#Date').val('');
					                $(inst).datepicker('show');
					            }
					        }
					    });
					   
					    $('#Date2').datepicker({
					        onSelect: function(dateText, inst) {
					          
					            var today = new Date();
					            today = Date.parse(today.getMonth()+1+'/'+today.getDate()+'/'+today.getFullYear());
					            
					            var selDate = Date.parse(dateText);
					            
					            if(selDate < today) {
					            
					                $('#Date2').val('');
					                $(inst).datepicker('show');
					            }
					        }
					    });
					    $('#Date3').datepicker({
					        onSelect: function(dateText, inst) {
					          
					            var today = new Date();
					            today = Date.parse(today.getMonth()+1+'/'+today.getDate()+'/'+today.getFullYear());
					            
					            var selDate = Date.parse(dateText);
					            
					            if(selDate < today) {
					            
					                $('#Date3').val('');
					                $(inst).datepicker('show');
					            }
					        }
					    });
					    $('#Date4').datepicker({
					        onSelect: function(dateText, inst) {
					          
					            var today = new Date();
					            today = Date.parse(today.getMonth()+1+'/'+today.getDate()+'/'+today.getFullYear());
					            
					            var selDate = Date.parse(dateText);
					            
					            if(selDate < today) {
					            
					                $('#Date4').val('');
					                $(inst).datepicker('show');
					            }
					        }
					    });
					    $('#Date5').datepicker({
					        onSelect: function(dateText, inst) {
					          
					            var today = new Date();
					            today = Date.parse(today.getMonth()+1+'/'+today.getDate()+'/'+today.getFullYear());
					            
					            var selDate = Date.parse(dateText);
					            
					            if(selDate < today) {
					            
					                $('#Date5').val('');
					                $(inst).datepicker('show');
					            }
					        }
					    });
					    $('#Date6').datepicker({
					        onSelect: function(dateText, inst) {
					          
					            var today = new Date();
					            today = Date.parse(today.getMonth()+1+'/'+today.getDate()+'/'+today.getFullYear());
					            
					            var selDate = Date.parse(dateText);
					            
					            if(selDate < today) {
					            
					                $('#Date6').val('');
					                $(inst).datepicker('show');
					            }
					        }
					    });
					    $('#Date7').datepicker({
					        onSelect: function(dateText, inst) {
					          
					            var today = new Date();
					            today = Date.parse(today.getMonth()+1+'/'+today.getDate()+'/'+today.getFullYear());
					            
					            var selDate = Date.parse(dateText);
					            
					            if(selDate < today) {
					            
					                $('#Date7').val('');
					                $(inst).datepicker('show');
					            }
					        }
					    });
					    $('#Date8').datepicker({
					        onSelect: function(dateText, inst) {
					          
					            var today = new Date();
					            today = Date.parse(today.getMonth()+1+'/'+today.getDate()+'/'+today.getFullYear());
					            
					            var selDate = Date.parse(dateText);
					            
					            if(selDate < today) {
					            
					                $('#Date8').val('');
					                $(inst).datepicker('show');
					            }
					        }
					    });
					    
					});
					
   </script>

</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                               
      </button>
      <a class="navbar-brand" href="https://www.kpriet.ac.in/">KPR</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="http://www.kpriet.ac.in/about/">About</a></li>
        <sec:authorize access="hasRole('SUPERUSER')">
        <li><a role="button" data-toggle="modal" data-target="#userregister">User Register</a></li>
        </sec:authorize>
        <sec:authorize access="hasRole('ADMIN')">
        <li><a role="button" data-toggle="modal" data-target="#userregister">User Register</a></li>
        </sec:authorize>
        <li><a role="button" data-toggle="modal" data-target="#changepassword">Change Password</a></li>
        <sec:authorize access="hasRole('SUPERUSER')">
        <li><a role="button" data-toggle="modal" data-target="#otherchangepassword">Other Password Change</a></li>
        </sec:authorize>
        <li><a role="button" data-toggle="modal" data-target="#editprofile">Edit Profile</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
      
    </div>
    
  </div>
</nav>
<div class="modal fade" id="editprofile" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Edit User Profile</h4>
			</div>
			<div class="modal-body">
			
				<form class="form-horizontal" action="editprofile" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="staffid">Staff Id:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="Hall_Id" required="required" value="${user.staffid}" name="staffid" required>
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="oldpassword">Name:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="Staff_Id" required="required" value="${user.name}" name="name" required>
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="Department">Department:</label>
							<div class="col-sm-8">
								<select class="form-control" id="sel1" name="dept" required="required">
										<option value="${user.dept}">${user.dept}</option>
										<option value="CSE">CSE</option>
										<option value="ECE">ECE</option>
										<option value="EEE">EEE</option>
										<option value="BME">BME</option>
										<option value="MECH">MECH</option>
										<option value="CIVIL">CIVIL</option>
								</select>
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="Department">Mobile Number:</label>
							<div class="col-sm-8">
								<input type="number" class="form-control" id="Mobile_Number" required="required" value="${user.mnumber}" name="mnumber" required>
							</div>
					</div>
					
					<div class="form-group">        
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</form>
			</div>
		</div>
	</div>
  </div>
<div class="modal fade" id="userregister" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">New User Register</h4>
			</div>
			<div class="modal-body">
			
				<form class="form-horizontal" action="userregister" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="staffid">Staff Id:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="Hall_Id" required="required" placeholder="Enter Staff Id" name="staffid" required>
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="oldpassword">Name:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="Staff_Id" required="required" placeholder="Enter Staff name" name="name" required>
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="Department">Department:</label>
							<div class="col-sm-8">
								<select class="form-control" id="sel1" name="dept" required="required">
										<option value="" disabled selected>select your start time</option>
										<option value="CSE">CSE</option>
										<option value="ECE">ECE</option>
										<option value="EEE">EEE</option>
										<option value="BME">BME</option>
										<option value="MECH">MECH</option>
										<option value="CIVIL">CIVIL</option>
								</select>
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="Department">Mobile Number:</label>
							<div class="col-sm-8">
								<input type="number" class="form-control" id="Mobile_Number" required="required" placeholder="Enter the Mobile number" name="mnumber" required>
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="Department">Mail ID:</label>
							<div class="col-sm-8">
								<input type="email" class="form-control" id="Mail_Id" required="required" placeholder="Enter the Mailid" name="username" required>
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="password">Password:</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="password" required="required" placeholder="Enter the Password" name="password" required>
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="roles">Role:</label>
							<div class="col-sm-8">
								<select class="form-control" id="sel1" name="roles" required="required">
												        	<option value="" disabled selected>select your start time</option>
													        <sec:authorize access="hasRole('SUPERUSER')">
													        <option value="ADMIN">ADMIN</option>
													        </sec:authorize>
													        <option value="USER">USER</option>
								</select>
							</div>
					</div>
					<div class="form-group">        
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</form>
			</div>
		</div>
	</div>
  </div>
  <div class="modal fade" id="changepassword" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Change Password</h4>
			</div>
			<div class="modal-body">
			
				<form class="form-horizontal" action="changepassword" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="oldpassword">Old Password:</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="Hall_Id" required="required" placeholder="Enter Old Password" name="oldpass">
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="oldpassword">New Password:</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="Hall_Id" required="required" placeholder="Enter New Password" name="newpass">
							</div>
					</div>
					<div class="form-group">        
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>				
				</form>
			</div>
		</div>
	</div>
	</div>
	
	<div class="modal fade" id="otherchangepassword" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Change Password</h4>
			</div>
			<div class="modal-body">
			
				<form class="form-horizontal" action="otherchangepassword" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="username">Mail Id:</label>
							<div class="col-sm-8">
								<input type="email" class="form-control" id="Mailid_Id" required="required" placeholder="Enter Mail Id" name="username">
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="oldpassword">Password:</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="Hall_Id" required="required" placeholder="Enter the Password" name="pass">
							</div>
					</div>
					
					<div class="form-group">        
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>				
				</form>
			</div>
		</div>
	</div>
	</div>
	
<div class="container-fluid leftside">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <ul class="nav nav-tabs nav-stacked">
		
		<li class="active"><a data-toggle="tab" href="#menu1">Hall Booking</a></li>
		<li><a data-toggle="tab" href="#menu2">Laboratory Booking</a></li>
		<li><a data-toggle="tab" href="#menu3">Cab Booking</a></li>
		
	  </ul>
    </div>
    <div class="col-sm-8 main"> 
		<div class="tab-content" style="background-color: white;">
			<div id="home" class="tab-pane fade">
				<table class="table table-borderless">
					 	
							<tr>
							 	<td>Name:</td><td><c:out value="${user.name}" /></td>
							 </tr>
							 <tr>
							 	<td>Staff id:</td><td><c:out value="${user.staffid}" /></td>
							 </tr>
							 <tr>
							 	<td>Department:</td><td><c:out value="${user.dept}" /></td>
							 </tr>
							 <tr>
							 	<td>Mobile number:</td><td><c:out value="${user.mnumber}" /></td>
							 </tr>
							 <tr>
							 	<td>Mail id:</td><td><c:out value="${user.staffid}" /></td>
							 </tr>
							 									
					
									
					   				</table>
				    
				
				
			</div>
			
			<div id="menu1" class="tab-pane fade in active">
				<div class="page-wrapper-title">
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#hallhome">Home</a></li>
						<li><a data-toggle="tab" href="#Hallinfo">Booking</a></li>
						<li><a data-toggle="tab" href="#Bookingpro">Booking Details</a></li>
						<sec:authorize access="hasRole('ADMIN')">
						<li><a data-toggle="tab" href="#Register">Requests <span class="badge">${Requestcount}</span></a></li>
						</sec:authorize>
						<li><a data-toggle="tab" href="#cancel">Cancelled</a></li>
						<sec:authorize access="hasRole('SUPERUSER')">
						<li><a data-toggle="tab" href="#download">All Booking</a></li>
						</sec:authorize>
						<sec:authorize access="hasRole('SUPERUSER')">
						<li><a data-toggle="tab" href="#downloadcancel">All Cancels</a></li>
						</sec:authorize>
						<sec:authorize access="hasRole('ADMIN')">
						<li><a data-toggle="tab" href="#downloaddept">Department Booking</a></li>
						</sec:authorize>
						<sec:authorize access="hasRole('ADMIN')">
						<li><a data-toggle="tab" href="#downloadcanceldept">Department Cancels</a></li>
						</sec:authorize>
					</ul>
				</div>
				
				<br>
				<div class="tab-content insidecontent">
				<div id="downloaddept" class="tab-pane fade">
						<div class="table-responsive">
						  <input class="form-control" id="myInput27" type="text" placeholder="Search..">
							<table id="myTabless27" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Booking id</th>
									        
									        <th>Hall ID</th>
									        <th>Hall Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Guest Name</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable27">
									    	<c:forEach var="booking" items="${deptdownload}">
												 <tr>
												 	<td><c:out value="${booking.bookingid}" /></td>
												 	<td><c:out value="${booking.hallid}" /></td>
												 	<td><c:out value="${booking.hall_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.guest_name}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport27" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput27").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable27 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					
					</div>
					<div id="download" class="tab-pane fade">
						<div class="table-responsive">
						  <input class="form-control" id="myInput19" type="text" placeholder="Search..">
							<table id="myTabless19" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Booking id</th>
									        
									        <th>Hall ID</th>
									        <th>Hall Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Guest Name</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable19">
									    	<c:forEach var="booking" items="${download}">
												 <tr>
												 	<td><c:out value="${booking.bookingid}" /></td>
												 	<td><c:out value="${booking.hallid}" /></td>
												 	<td><c:out value="${booking.hall_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.guest_name}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport19" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput19").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable19 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					
					</div>
					<div id="downloadcancel" class="tab-pane fade">
						<div class="table-responsive">
						  <input class="form-control" id="myInput19" type="text" placeholder="Search..">
							<table id="myTabless20" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        
									        
									        <th>Hall ID</th>
									        <th>Hall Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Guest Name</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable20">
									    	<c:forEach var="booking" items="${cancelbooking}">
												 <tr>
												 	
												 	<td><c:out value="${booking.hallid}" /></td>
												 	<td><c:out value="${booking.hall_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.guest_name}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport20" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput20").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable20 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					
					</div>
					<div id="downloadcanceldept" class="tab-pane fade">
						<div class="table-responsive">
						  <input class="form-control" id="myInput28" type="text" placeholder="Search..">
							<table id="myTabless28" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        
									        
									        <th>Hall ID</th>
									        <th>Hall Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Guest Name</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable28">
									    	<c:forEach var="booking" items="${deptcancelbooking}">
												 <tr>
												 	
												 	<td><c:out value="${booking.hallid}" /></td>
												 	<td><c:out value="${booking.hall_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.guest_name}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport28" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput28").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable28 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					
					</div>
					<div id="hallhome" class="tab-pane fade in active">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
							  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							  <li data-target="#myCarousel" data-slide-to="1"></li>
							  <li data-target="#myCarousel" data-slide-to="2"></li>
							  <li data-target="#myCarousel" data-slide-to="3"></li>
							  <li data-target="#myCarousel" data-slide-to="4"></li>
							  <li data-target="#myCarousel" data-slide-to="5"></li>
							  <li data-target="#myCarousel" data-slide-to="6"></li>
							  <li data-target="#myCarousel" data-slide-to="7"></li>
							  <li data-target="#myCarousel" data-slide-to="8"></li>
							  <li data-target="#myCarousel" data-slide-to="9"></li>
							</ol>

							
								<div class="carousel-inner">
								
								  <div class="item active">
									<img src="Image/O1.JPG" alt="Los Angeles" style="width:100%;">
								  </div>

								  <div class="item">
									<img src="Image/O2.JPG" alt="Chicago" style="width:100%;">
								  </div>
								
								  <div class="item">
									<img src="Image/V1.JPG" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/V2.JPG" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/D1.JPG" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/D2.JPG" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/R1.JPG" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/R2.JPG" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/C2.JPG" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/C1.JPG" alt="New york" style="width:100%;">
								  </div>
								</div>
							<a class="left carousel-control" href="#myCarousel" data-slide="prev">
							  <span class="glyphicon glyphicon-chevron-left"></span>
							  <span class="sr-only">Previous</span>
							</a>
							<a class="right carousel-control" href="#myCarousel" data-slide="next">
							  <span class="glyphicon glyphicon-chevron-right"></span>
							  <span class="sr-only">Next</span>
							</a>
						</div>
					
					</div>
				
					<div id="Hallinfo" class="tab-pane fade">
					<div class="row">
					
						<c:forEach var="hall" items="${halllist}">
						 <div class="col-sm-2 panelalign">
							
							
							<div class="panel panel-primary" style="text-align: center">
							
							
    							<div class="panel-heading"><c:out value="${hall.hall_name}" /></div>
    							<div class="panel-body"><label>Hall Id:</label><c:out value="${hall.hallid}" /></div>
    							<div class="panel-body"><label>Capacity:</label><c:out value="${hall.capacity}" /></div>
    							
    							
								
								
    							<div class="panel-body"><button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#hallregdetail">Details</button></div>
    							
    							
    											
    							<div class="panel-body"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#requesthall">Booking</button></div>
    							
    							<div class="modal fade" id="hallregdetail" role="dialog">
							   		<div class="modal-dialog modal-lg">
							   			
							   			<div class="modal-content">
							   			<div class="modal-header">
									          <button type="button" class="close" data-dismiss="modal">&times;</button>
									          <h4 class="modal-title">Booking details</h4>
									        </div>
							   			<input class="form-control" id="myInput" type="text" placeholder="Search..">
		  								<br>
		  								<div class="table-responsive">
							   				<table id="myTabless" class="table table-bordered table-striped">
							   					<thead>
											      <tr>
											        <th>Hall ID</th>
											        <th>Hall Name</th>
											        <th>Staff name</th>
											        <th>Mobile number</th>
											        <th>Start Date and Time</th>
											        <th>End Date and Time</th>
											      </tr>
											    </thead>
											    <tbody id="myTable">
											    	<c:forEach var="booking" items="${booking}">
														 <tr>
														 	<td><c:out value="${booking.hallid}" /></td>
														 	<td><c:out value="${booking.hall_name}" /></td>
														 	<td><c:out value="${booking.name}" /></td>
														 	<td><c:out value="${booking.mnumber}" /></td>
														 	<td><c:out value="${booking.startdateandtime}" /></td>
														 	<td><c:out value="${booking.enddateandtime}" /></td>
														 </tr>
															
														    </c:forEach>
											    </tbody>
							   				</table>
							   				</div>
							   				<div class="modal-footer">
									          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									        </div>
							   			</div>
							   			
							   			<script>
											$(document).ready(function(){
											  $("#myInput").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
							   		</div>
							   	</div>
    							
    							<div class="modal fade" id="requesthall" role="dialog">
							   		<div class="modal-dialog modal-lg">
							   			<div class="modal-content">
									        <div class="modal-header">
									          <button type="button" class="close" style="color:white;" data-dismiss="modal">&times;</button>
									          <h4 class="modal-title">Book before verified in Booking details</h4>
									        </div>
									        <div class="modal-body">
									           <form class="form-horizontal" action="requesthall" method="post">
									           
									        	<div class="form-horizontal">
									        	    <div class="form-group">
												      <label class="control-label col-sm-2" for="Hallid">Hall Id:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="hallid" name="hallid" placeholder="Hall Id" required="required">
												      </div>
												    </div>
									        		<div class="form-group">
												      <label class="control-label col-sm-2" for="Purpose">Purpose:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Purpose" placeholder="Pursose of using" name="purpose" required="required">
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="guestname">Guest name:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Guest_name" placeholder="Guest Name" name="guest_name" required="required">
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="AddHall">Start Date:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Date" placeholder="Start Date" name="startdate" autocomplete="off" required="required">
												      </div>
												    </div>
												    <div class="form-group">
												      
												        <label class="control-label col-sm-2" for="AddHall">End Date:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Date2" placeholder="End Date" autocomplete="off" name="enddate" required="required">
												        
												      </div>
												    </div>
												     <div class="form-group">
												      
												        <label class="control-label col-sm-2" for="AddHall">Start Time:</label>
												      <div class="col-sm-8">
												        <select class="form-control" id="sel1" name="starttime" required="required">
												        	<option value="" disabled selected>select your start time</option>
													        <option value="08:00">08:00 AM</option>
													        <option value="08:30">08:30 AM</option>
													        <option value="09:00">09:00 AM</option>
													        <option value="09:30">09:30 AM</option>
													        <option value="10:00">10:00 AM</option>
													        <option value="10:30">10:30 AM</option>
													        <option value="11:00">11:00 AM</option>
													        <option value="11:30">11:30 AM</option>
													        <option value="12:00">12:00 PM</option>
													        <option value="12:30">12:30 PM</option>
													        <option value="13:00">01:00 PM</option>
													        <option value="13:30">01:30 PM</option>
													        <option value="14:00">02:00 PM</option>
													        <option value="14:30">02:30 PM</option>
													        <option value="15:00">03:00 PM</option>
													        <option value="15:30">03:30 PM</option>
													        <option value="16:00">04:00 PM</option>
													        <option value="16:30">04:30 PM</option>
													        <option value="17:00">05:00 PM</option>
													        <option value="17:30">05:30 PM</option>
													        <option value="18:00">06:00 PM</option>
													        <option value="18:30">06:30 PM</option>
													        <option value="19:00">07:00 PM</option>
													      </select>
												      
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="AddHall">End Time:</label>
												      <div class="col-sm-8">
												        <select class="form-control" id="sel1" name="endtime" required="required">
												        	<option value="" disabled selected>select your end time</option>
													        <option value="09:30">09:30 AM</option>
													        <option value="10:00">10:00 AM</option>
													        <option value="10:30">10:30 AM</option>
													        <option value="11:00">11:00 AM</option>
													        <option value="11:30">11:30 AM</option>
													        <option value="12:00">12:00 PM</option>
													        <option value="12:30">12:30 PM</option>
													        <option value="13:00">01:00 PM</option>
													        <option value="13:30">01:30 PM</option>
													        <option value="14:00">02:00 PM</option>
													        <option value="14:30">02:30 PM</option>
													        <option value="15:00">03:00 PM</option>
													        <option value="15:30">03:30 PM</option>
													        <option value="16:00">04:00 PM</option>
													        <option value="16:30">04:30 PM</option>
													        <option value="17:00">05:00 PM</option>
													        <option value="17:30">05:30 PM</option>
													        <option value="18:00">06:00 PM</option>
													        <option value="18:30">06:30 PM</option>
													        <option value="19:00">07:00 PM</option>
													        <option value="19:30">07:30 PM</option>
													        <option value="20:00">08:00 PM</option>
													      </select>
												        
												      </div>
												    </div>
												    <div class="form-group">        
												      <div class="col-sm-offset-2 col-sm-10">
												        <button type="submit" class="btn btn-primary">Submit</button>
												      </div>
												    </div>
									        	</div>
									        	</form>
									        </div>
									        <div class="modal-footer">
									          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									        </div>
									     </div>
							   		</div>
					   	</div>
    						</div>
  						
  							
  							
  					     </div>    
					    </c:forEach>
					    
					   	</div>
					   	
					   	<sec:authorize access="hasRole('SUPERUSER')">
							<button type="button" class="btn btn-primary btn-circle btn-xl" data-toggle="modal" data-target="#addhall">+</button>
							<button type="button" class="btn btn-primary btn-circle btn-xl" data-toggle="modal" data-target="#updatehall"><i class="fa fa-edit"></i></button>
							<button type="button" class="btn btn-primary btn-circle btn-xl" data-toggle="modal" data-target="#deletehall"><span class="glyphicon glyphicon-remove"></span></button>
						</sec:authorize>
						
						<div class="modal fade" id="deletehall" role="dialog">
						    <div class="modal-dialog modal-lg">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">Delete Hall</h4>
						        </div>
						        <div class="modal-body">
						          <form class="form-horizontal" action="deletehall" method="post">
						            <div class="form-group">
								      <label class="control-label col-sm-2" for="DeletedHall">Hall Id:</label>
								      <div class="col-sm-8">
								        <input type="text" class="form-control" id="Hall_Id" required="required" placeholder="Enter Hall Id" name="hallid">
								      </div>
								    </div>
								     <div class="form-group">        
								      <div class="col-sm-offset-2 col-sm-10">
								        <button type="submit" class="btn btn-success">Submit</button>
								      </div>
								    </div>
								  </form>
								  </div>
								 </div>
								</div>
							</div>
						
						
						<div class="modal fade" id="addhall" role="dialog">
						    <div class="modal-dialog modal-lg">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">Add New Hall</h4>
						        </div>
						        <div class="modal-body">
						          <form class="form-horizontal" action="addnewhall" method="post">
						            <div class="form-group">
								      <label class="control-label col-sm-2" for="AddHall">Hall Name:</label>
								      <div class="col-sm-8">
								        <input type="text" class="form-control" id="Hall_Name" required="required" placeholder="Enter Hall Name" name="hall_name">
								      </div>
								    </div>
								    <div class="form-group">
								      <label class="control-label col-sm-2" for="Capacity">Hall Capacity:</label>
								      <div class="col-sm-8">
								        <input type="number" class="form-control" id="Capacity" required="required" placeholder="Enter Capacity of Hall" name="capacity">
								      </div>
								    </div>
								    
								    <div class="form-group">        
								      <div class="col-sm-offset-2 col-sm-10">
								        <button type="submit" class="btn btn-success">Submit</button>
								      </div>
								    </div>
								  </form>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						    </div>
						</div>
						
						
						<div class="modal fade" id="updatehall" role="dialog">
						    <div class="modal-dialog modal-lg">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">Update New Hall</h4>
						        </div>
						        <div class="modal-body">
						          <form class="form-horizontal" action="updatehall" method="post">
						            <div class="form-group">
								      <label class="control-label col-sm-2" for="AddHall">Hall ID:</label>
								      <div class="col-sm-8">
								        <input type="number" class="form-control" id="HallId" required="required" placeholder="Enter Hall ID" name="hallid">
								      </div>
								    </div>
						            <div class="form-group">
								      <label class="control-label col-sm-2" for="AddHall">Hall Name:</label>
								      <div class="col-sm-8">
								        <input type="text" class="form-control" id="Hall_Name" required="required" placeholder="Enter Hall Name" name="hall_name">
								      </div>
								    </div>
								    <div class="form-group">
								      <label class="control-label col-sm-2" for="Capacity">Hall Capacity:</label>
								      <div class="col-sm-8">
								        <input type="number" class="form-control" id="Capacity" required="required" placeholder="Enter Capacity of Hall" name="capacity">
								      </div>
								    </div>
								    
								    <div class="form-group">        
								      <div class="col-sm-offset-2 col-sm-10">
								        <button type="submit" class="btn btn-success">Submit</button>
								      </div>
								    </div>
								  </form>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						    </div>
						</div>
					</div>
					<div id="Register" class="tab-pane fade">
						<div class="table-responsive">
						  <input class="form-control" id="myInput2" type="text" placeholder="Search..">
							<table id="myTabless2"class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Hall ID</th>
									        <th>Hall Name</th>
									        <th>Staff name</th>
									        <th>Mobile number</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        <th>Accept or cancel</th>
									      </tr>
									    </thead>
									    <tbody id="myTable2">
									    	<c:forEach var="booking" items="${requ}">
												 <tr>
												 	<td><c:out value="${booking.hallid}" /></td>
												 	<td><c:out value="${booking.hall_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	<td>
												 		<form action="requacceptedbyhod" method="post">
												 			<input type="hidden" value="${booking.requestid}" name="requestid">
												 			<button type="submit" class="btn btn-primary" value="Accepted" style="width:90%;">Accepted</button><br>
												 		</form><br>
												 		<form action="requcanceled" method="post">
												 			<input type="hidden" value="${booking.requestid}" name="requestid">
												 			<button type="submit" class="btn btn-primary" value="Cancel" style="width:90%;">Cancel</button>
												 		</form>
												 	</td>
												 </tr>
													
												    </c:forEach>
									    </tbody>
					   				</table>
					   				
							   			<script>
											$(document).ready(function(){
											  $("#myInput2").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable2 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
					<div id="cancel" class="tab-pane fade">
						<div class="table-responsive">
						<input class="form-control" id="myInput3" type="text" placeholder="Search..">
							<table id="myTabless3" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Hall ID</th>
									        <th>Hall Name</th>
									        <th>Staff name</th>
									        <th>Mobile number</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable3">
									    	<c:forEach var="booking" items="${cancel}">
												 <tr>
												 	<td><c:out value="${booking.hallid}" /></td>
												 	<td><c:out value="${booking.hall_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
												    </c:forEach>
									    </tbody>
					   				</table>
					   				<script>
											$(document).ready(function(){
											  $("#myInput3").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable3 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
					<div id="Bookingpro" class="tab-pane fade">
					  <div class="table-responsive">
					  <input class="form-control" id="myInput4" type="text" placeholder="Search..">
						<table id="myTabless4" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Hall Name</th>
									        <th>Request Id</th>
									        <th>Progress Bar</th>
									        <th>Request Cancel</th>
									      </tr>
									    </thead>
									    <tbody id="myTable4">
									    	<c:forEach var="booking" items="${hallpro}">
												 <tr>
												 	<td><c:out value="${booking.hall_name}" /></td>
												 	
												 	<td><c:out value="${booking.requestid}" /></td>
												 	<td> <div class="progress" style="width:100%;">
													    <div class="${booking.checker}" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:<c:out value="${booking.progressper}" />">
													      ${booking.progressper} Complete
													    </div>
													  </div>
													  </td>
													  <td>
													  <form action="requestcancelbyuser" method="post">
													  	<input type="hidden" value="${booking.requestid}" name="requestid">
												 		<button type="submit" class="btn btn-primary" value="Cancel">Cancel</button>
												 	</form>
												 	</td>
												 </tr>
													
												    </c:forEach>
									    </tbody>
					   				</table>
					   				<script>
											$(document).ready(function(){
											  $("#myInput4").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable4 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
				</div>
			</div>
			<div id="menu2" class="tab-pane fade">
				<div class="page-wrapper-title">
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#labhome">Home</a></li>
						<li><a data-toggle="tab" href="#Labinfo">Booking</a></li>
						<li><a data-toggle="tab" href="#Bookingpro2">Booking Details</a></li>
						<sec:authorize access="hasRole('ADMIN')">
						<li><a data-toggle="tab" href="#Register2">Requests <span class="badge">${LabRequestcount}</span></a></li>
						</sec:authorize>
						<li><a data-toggle="tab" href="#cancel2">Cancelled</a></li>
						<sec:authorize access="hasRole('SUPERUSER')">
						<li><a data-toggle="tab" href="#labdownload">All download</a></li>
						</sec:authorize>
						<sec:authorize access="hasRole('SUPERUSER')">
						<li><a data-toggle="tab" href="#labcancel">All cancel</a></li>
						</sec:authorize>
						<sec:authorize access="hasRole('ADMIN')">
						<li><a data-toggle="tab" href="#deptlabdownload">Department Download</a></li>
						</sec:authorize>
						<sec:authorize access="hasRole('ADMIN')">
						<li><a data-toggle="tab" href="#deptlabcancel">Department Cancel</a></li>
						</sec:authorize>
					</ul>
				</div>
				
				<br>
				<div class="tab-content insidecontent">
					<div id="labdownload" class="tab-pane fad">
						<div class="table-responsive">
						  <input class="form-control" id="myInput21" type="text" placeholder="Search..">
							<table id="myTabless21" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Booking id</th>
									        
									        <th>Lab ID</th>
									        <th>Lab Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Guest Name</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable21">
									    	<c:forEach var="booking" items="${labdownload}">
												 <tr>
												 	<td><c:out value="${booking.bookingid}" /></td>
												 	<td><c:out value="${booking.labid}" /></td>
												 	<td><c:out value="${booking.lab_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.guest_name}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport21" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput21").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable21 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
					<div id="labcancel" class="tab-pane fad">
						<div class="table-responsive">
						  <input class="form-control" id="myInput22" type="text" placeholder="Search..">
							<table id="myTabless22" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        
									        
									        <th>Lab ID</th>
									        <th>Lab Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Guest Name</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable22">
									    	<c:forEach var="booking" items="${labcancell}">
												 <tr>
												 	
												 	<td><c:out value="${booking.labid}" /></td>
												 	<td><c:out value="${booking.lab_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.guest_name}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport22" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput22").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable22 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
					<div id="deptlabdownload" class="tab-pane fad">
						<div class="table-responsive">
						  <input class="form-control" id="myInput29" type="text" placeholder="Search..">
							<table id="myTabless29" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Booking id</th>
									        
									        <th>Lab ID</th>
									        <th>Lab Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Guest Name</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable29">
									    	<c:forEach var="booking" items="${deptlabdownload}">
												 <tr>
												 	<td><c:out value="${booking.bookingid}" /></td>
												 	<td><c:out value="${booking.labid}" /></td>
												 	<td><c:out value="${booking.lab_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.guest_name}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport29" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput29").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable29 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
					<div id="deptlabcancel" class="tab-pane fad">
						<div class="table-responsive">
						  <input class="form-control" id="myInput30" type="text" placeholder="Search..">
							<table id="myTabless30" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        
									        
									        <th>Lab ID</th>
									        <th>Lab Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Guest Name</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable30">
									    	<c:forEach var="booking" items="${deptlabcancell}">
												 <tr>
												 	
												 	<td><c:out value="${booking.labid}" /></td>
												 	<td><c:out value="${booking.lab_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.guest_name}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport30" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput30").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable30 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
					<div id="labhome" class="tab-pane fade in active">
						<div id="myCarousel2" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
							  <li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
							  <li data-target="#myCarousel2" data-slide-to="1"></li>
							  <li data-target="#myCarousel2" data-slide-to="2"></li>
							  <li data-target="#myCarousel2" data-slide-to="3"></li>
							  <li data-target="#myCarousel2" data-slide-to="4"></li>
							  <li data-target="#myCarousel2" data-slide-to="5"></li>
							  <li data-target="#myCarousel2" data-slide-to="6"></li>
							  <li data-target="#myCarousel2" data-slide-to="7"></li>
							  <li data-target="#myCarousel2" data-slide-to="8"></li>
							  <li data-target="#myCarousel2" data-slide-to="9"></li>
							</ol>

							
								<div class="carousel-inner">
								
								  <div class="item active">
									<img src="Image/l1.jpg" alt="Los Angeles" style="width:100%;">
								  </div>

								  <div class="item">
									<img src="Image/l2.jpg" alt="Chicago" style="width:100%;">
								  </div>
								
								  <div class="item">
									<img src="Image/l3.png" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/l4.jpg" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/l5.jpg" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/l6.jpg" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/l7.jpg" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/l8.jpg" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/l9.jpg" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/l10.jpg" alt="New york" style="width:100%;">
								  </div>
								</div>
							<a class="left carousel-control" href="#myCarousel2" data-slide="prev">
							  <span class="glyphicon glyphicon-chevron-left"></span>
							  <span class="sr-only">Previous</span>
							</a>
							<a class="right carousel-control" href="#myCarousel2" data-slide="next">
							  <span class="glyphicon glyphicon-chevron-right"></span>
							  <span class="sr-only">Next</span>
							</a>
						</div>
					
					</div>
				
					<div id="Labinfo" class="tab-pane fade">
					<div class="row">
					
						<c:forEach var="lab" items="${lablist}">
						 <div class="col-sm-2 panelalign">
							
							
							<div class="panel panel-primary" style="text-align: center">
							
							
    							<div class="panel-heading"><c:out value="${lab.lab_name}" /></div>
    							<div class="panel-body"><label>Lab Id:</label><c:out value="${lab.labid}" /></div>
    							<div class="panel-body"><label>Capacity:</label><c:out value="${lab.no_of_system_available}" /></div>
    							
    							
								
								
    							<div class="panel-body"><button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#labregdetail">Details</button></div>
    							
    							
    											
    							<div class="panel-body"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#requestlab">Booking</button></div>
    							
    							<div class="modal fade" id="labregdetail" role="dialog">
							   		<div class="modal-dialog modal-lg">
							   			
							   			<div class="modal-content">
							   			<div class="modal-header">
									          <button type="button" class="close" data-dismiss="modal">&times;</button>
									          <h4 class="modal-title">Booking details</h4>
									        </div>
							   			<input class="form-control" id="myInput5" type="text" placeholder="Search..">
		  								<br>
		  								<div class="table-responsive">
							   				<table id="myTabless5" class="table table-bordered table-striped">
							   					<thead>
											      <tr>
											        <th>Lab ID</th>
											        <th>Lab Name</th>
											        <th>Staff name</th>
											        <th>Mobile number</th>
											        <th>Start Date and Time</th>
											        <th>End Date and Time</th>
											      </tr>
											    </thead>
											    <tbody id="myTable5">
											    	<c:forEach var="booking" items="${labbooking}">
														 <tr>
														 	<td><c:out value="${booking.labid}" /></td>
														 	<td><c:out value="${booking.lab_name}" /></td>
														 	<td><c:out value="${booking.name}" /></td>
														 	<td><c:out value="${booking.mnumber}" /></td>
														 	<td><c:out value="${booking.startdateandtime}" /></td>
														 	<td><c:out value="${booking.enddateandtime}" /></td>
														 </tr>
															
														    </c:forEach>
											    </tbody>
							   				</table>
							   				</div>
							   				<div class="modal-footer">
									          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									        </div>
							   			</div>
							   			
							   			<script>
											$(document).ready(function(){
											  $("#myInput5").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable5 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
							   		</div>
							   	</div>
    							
    							<div class="modal fade" id="requestlab" role="dialog">
							   		<div class="modal-dialog modal-lg">
							   			<div class="modal-content">
									        <div class="modal-header">
									          <button type="button" class="close" style="color:white;" data-dismiss="modal">&times;</button>
									          <h4 class="modal-title">Book before verified in Booking details</h4>
									        </div>
									        <div class="modal-body">
									           <form class="form-horizontal" action="requestlab" method="post">
									           
									        	<div class="form-horizontal">
									        	    <div class="form-group">
												      <label class="control-label col-sm-2" for="Labid">Lab Id:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="labid" name="labid" placeholder="Lab Id" required="required">
												      </div>
												    </div>
									        		<div class="form-group">
												      <label class="control-label col-sm-2" for="Purpose">Purpose:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Purpose" placeholder="Pursose of using" name="purpose" required="required">
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="guestname">Guest name/Company name:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Guest_name" placeholder="Guest Name" name="guest_name" required="required">
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="AddHall">Start Date:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Date3" placeholder="Start Date" name="startdate" autocomplete="off" required="required">
												      </div>
												    </div>
												    <div class="form-group">
												      
												        <label class="control-label col-sm-2" for="AddHall">End Date:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Date4" placeholder="End Date" autocomplete="off" name="enddate" required="required">
												        
												      </div>
												    </div>
												     <div class="form-group">
												      
												        <label class="control-label col-sm-2" for="AddHall">Start Time:</label>
												      <div class="col-sm-8">
												        <select class="form-control" id="sel1" name="starttime" required="required">
												        	<option value="" disabled selected>select your start time</option>
												        	<option value="07:00">07:00 AM</option>
													        <option value="07:30">07:30 AM</option>
													        <option value="08:00">08:00 AM</option>
													        <option value="08:30">08:30 AM</option>
													        <option value="09:00">09:00 AM</option>
													        <option value="09:30">09:30 AM</option>
													        <option value="10:00">10:00 AM</option>
													        <option value="10:30">10:30 AM</option>
													        <option value="11:00">11:00 AM</option>
													        <option value="11:30">11:30 AM</option>
													        <option value="12:00">12:00 PM</option>
													        <option value="12:30">12:30 PM</option>
													        <option value="13:00">01:00 PM</option>
													        <option value="13:30">01:30 PM</option>
													        <option value="14:00">02:00 PM</option>
													        <option value="14:30">02:30 PM</option>
													        <option value="15:00">03:00 PM</option>
													        <option value="15:30">03:30 PM</option>
													        <option value="16:00">04:00 PM</option>
													        <option value="16:30">04:30 PM</option>
													        <option value="17:00">05:00 PM</option>
													        <option value="17:30">05:30 PM</option>
													        <option value="18:00">06:00 PM</option>
													        <option value="18:30">06:30 PM</option>
													        <option value="19:00">07:00 PM</option>
													      </select>
												      
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="AddHall">End Time:</label>
												      <div class="col-sm-8">
												        <select class="form-control" id="sel1" name="endtime" required="required">
												        	<option value="" disabled selected>select your end time</option>
													        <option value="09:30">09:30 AM</option>
													        <option value="10:00">10:00 AM</option>
													        <option value="10:30">10:30 AM</option>
													        <option value="11:00">11:00 AM</option>
													        <option value="11:30">11:30 AM</option>
													        <option value="12:00">12:00 PM</option>
													        <option value="12:30">12:30 PM</option>
													        <option value="13:00">01:00 PM</option>
													        <option value="13:30">01:30 PM</option>
													        <option value="14:00">02:00 PM</option>
													        <option value="14:30">02:30 PM</option>
													        <option value="15:00">03:00 PM</option>
													        <option value="15:30">03:30 PM</option>
													        <option value="16:00">04:00 PM</option>
													        <option value="16:30">04:30 PM</option>
													        <option value="17:00">05:00 PM</option>
													        <option value="17:30">05:30 PM</option>
													        <option value="18:00">06:00 PM</option>
													        <option value="18:30">06:30 PM</option>
													        <option value="19:00">07:00 PM</option>
													        <option value="19:30">07:30 PM</option>
													        <option value="20:00">08:00 PM</option>
													      </select>
												        
												      </div>
												    </div>
												    <div class="form-group">        
												      <div class="col-sm-offset-2 col-sm-10">
												        <button type="submit" class="btn btn-primary">Submit</button>
												      </div>
												    </div>
									        	</div>
									        	</form>
									        </div>
									        <div class="modal-footer">
									          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									        </div>
									     </div>
							   		</div>
					   	</div>
    						</div>
  						
  							
  							
  					     </div>    
					    </c:forEach>
					    
					   	</div>
					   	
					   	<sec:authorize access="hasRole('SUPERUSER')">
							<button type="button" class="btn btn-primary btn-circle btn-xl" data-toggle="modal" data-target="#addlab">+</button>
							<button type="button" class="btn btn-primary btn-circle btn-xl" data-toggle="modal" data-target="#updatelab"><i class="fa fa-edit"></i></button>
							<button type="button" class="btn btn-primary btn-circle btn-xl" data-toggle="modal" data-target="#deletelab"><span class="glyphicon glyphicon-remove"></span></button>
						</sec:authorize>
						
						<div class="modal fade" id="deletelab" role="dialog">
						    <div class="modal-dialog modal-lg">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">Delete Lab</h4>
						        </div>
						        <div class="modal-body">
						          <form class="form-horizontal" action="deletelab" method="post">
						            <div class="form-group">
								      <label class="control-label col-sm-2" for="DeletedHall">Lab Id:</label>
								      <div class="col-sm-8">
								        <input type="text" class="form-control" id="Hall_Id" required="required" placeholder="Enter Lab Id" name="labid">
								      </div>
								    </div>
								     <div class="form-group">        
								      <div class="col-sm-offset-2 col-sm-10">
								        <button type="submit" class="btn btn-success">Submit</button>
								      </div>
								    </div>
								  </form>
								  </div>
								 </div>
								</div>
							</div>
						<div class="alert alert-warning">
						    <strong>Warning!</strong> The superuser only Add or Update hall.
						</div>
						<div class="modal fade" id="addlab" role="dialog">
						    <div class="modal-dialog modal-lg">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">Add New Lab</h4>
						        </div>
						        <div class="modal-body">
						          <form class="form-horizontal" action="addnewlab" method="post">
						            <div class="form-group">
								      <label class="control-label col-sm-2" for="AddHall">Lab Name:</label>
								      <div class="col-sm-8">
								        <input type="text" class="form-control" id="Lab_Name" required="required" placeholder="Enter Lab Name" name="lab_name">
								      </div>
								    </div>
								    <div class="form-group">
								      <label class="control-label col-sm-2" for="System Available">No of System Available:</label>
								      <div class="col-sm-8">
								        <input type="number" class="form-control" id="System_available" required="required" placeholder="Enter number of system available" name="no_of_system_available">
								      </div>
								    </div>
								    <div class="form-group">
								      <label class="control-label col-sm-2" for="Incharge Mailid">Enter Lab incharge mailid:</label>
								      <div class="col-sm-8">
								        <input type="email" class="form-control" id="incharge_mailid" required="required" placeholder="Enter number of system available" name="lab_incharge_mailid">
								      </div>
								    </div>
								    <div class="form-group">        
								      <div class="col-sm-offset-2 col-sm-10">
								        <button type="submit" class="btn btn-success">Submit</button>
								      </div>
								    </div>
								  </form>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						    </div>
						</div>
						
						
						<div class="modal fade" id="updatelab" role="dialog">
						    <div class="modal-dialog modal-lg">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">Update Lab Details</h4>
						        </div>
						        <div class="modal-body">
						          <form class="form-horizontal" action="updatelab" method="post">
						            <div class="form-group">
								      <label class="control-label col-sm-2" for="Hallid">Lab ID:</label>
								      <div class="col-sm-8">
								        <input type="number" class="form-control" id="labId" required="required" placeholder="Enter Lab ID" name="labid">
								      </div>
								    </div>
						            <div class="form-group">
								      <label class="control-label col-sm-2" for="LabName">Lab Name:</label>
								      <div class="col-sm-8">
								        <input type="text" class="form-control" id="Lab_Name" required="required" placeholder="Enter Lab Name" name="lab_name">
								      </div>
								    </div>
								    <div class="form-group">
								      <label class="control-label col-sm-2" for="Number of system availables">Number of system Availables:</label>
								      <div class="col-sm-8">
								        <input type="number" class="form-control" id="avalability" required="required" placeholder="Enter number of system available" name="no_of_system_available">
								      </div>
								    </div>
								    <div class="form-group">
								      <label class="control-label col-sm-2" for="incharge mailid">Enter Lab incharge mailid:</label>
								      <div class="col-sm-8">
								        <input type="email" class="form-control" id="incharge_mailid" required="required" placeholder="Enter the lab incharge mailid" name="lab_incharge_mailid">
								      </div>
								    </div>
								    
								    <div class="form-group">        
								      <div class="col-sm-offset-2 col-sm-10">
								        <button type="submit" class="btn btn-success">Submit</button>
								      </div>
								    </div>
								  </form>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						    </div>
						</div>
					</div>
					<div id="Register2" class="tab-pane fade">
						<div class="table-responsive">
						  <input class="form-control" id="myInput6" type="text" placeholder="Search..">
							<table id="myTabless6" class="table table-bordered table-striped">
							
					   					<thead>
									      <tr>
									        <th>Lab ID</th>
									        <th>Lab Name</th>
									        <th>Staff name</th>
									        <th>Mobile number</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        <th>Accept or cancel</th>
									      </tr>
									    </thead>
									    <tbody id="myTable6">
									    	<c:forEach var="booking" items="${labrequ}">
												 <tr>
												 	<td><c:out value="${booking.labid}" /></td>
												 	<td><c:out value="${booking.lab_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	<td>
												 		<form action="labrequaccepted" method="post">
												 			<input type="hidden" value="${booking.requestid}" name="requestid">
												 			<button type="submit" class="btn btn-primary" value="Accepted" style="width:90%;">Accepted</button><br>
												 		</form><br>
												 		<form action="labrequcanceled" method="post">
												 			<input type="hidden" value="${booking.requestid}" name="requestid">
												 			<button type="submit" class="btn btn-primary" value="Cancel" style="width:90%;">Cancel</button>
												 		</form>
												 	</td>
												 </tr>
													
												    </c:forEach>
									    </tbody>
									   
					   				</table>
					   				<br>
					   				<input type="button" id="btnExport" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput6").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable6 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
					<div id="cancel2" class="tab-pane fade">
						<div class="table-responsive">
						<input class="form-control" id="myInput7" type="text" placeholder="Search..">
							<table id="myTabless7" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Lab ID</th>
									        <th>Lab Name</th>
									        <th>Staff name</th>
									        <th>Mobile number</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable7">
									    	<c:forEach var="booking" items="${labcancel}">
												 <tr>
												 	<td><c:out value="${booking.labid}" /></td>
												 	<td><c:out value="${booking.lab_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
												    </c:forEach>
									    </tbody>
					   				</table>
					   				<script>
											$(document).ready(function(){
											  $("#myInput7").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable7 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
					<div id="Bookingpro2" class="tab-pane fade">
					  <div class="table-responsive">
					  <input class="form-control" id="myInput8" type="text" placeholder="Search..">
						<table id="myTabless8" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Lab Name</th>
									        <th>Request Id</th>
									        <th>Progress Bar</th>
									        <th>Request Cancel</th>
									      </tr>
									    </thead>
									    <tbody id="myTable8">
									    	<c:forEach var="booking" items="${labpro}">
												 <tr>
												 	<td><c:out value="${booking.lab_name}" /></td>
												 	
												 	<td><c:out value="${booking.requestid}" /></td>
												 	<td> <div class="progress" style="width:100%;">
													    <div class="${booking.checker}" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:<c:out value="${booking.progressper}" />">
													      ${booking.progressper} Complete
													    </div>
													  </div>
													  </td>
													  <td>
													  <form action="labrequcanceledbyuser" method="post">
													  	<input type="hidden" value="${booking.requestid}" name="requestid">
												 		<button type="submit" class="btn btn-primary" value="Cancel">Cancel</button>
												 	</form>
												 	</td>
												 </tr>
													
												    </c:forEach>
									    </tbody>
					   				</table>
					   				<script>
											$(document).ready(function(){
											  $("#myInput8").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable8 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
				</div>
				
			</div>
			<div id="menu3" class="tab-pane fade">
				<div class="page-wrapper-title">
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#tranhome">Home</a></li>
						<li><a data-toggle="tab" href="#traninfo">Booking</a></li>
						<li><a data-toggle="tab" href="#Bookingpro3">Booking Details</a></li>
						<li><a data-toggle="tab" href="#Bookingpro4">Guest Booking Details</a></li>
						<sec:authorize access="hasRole('ADMIN')">
						<li><a data-toggle="tab" href="#Register3">Request <span class="badge">${TranRequestcount}</span></a></li>
						</sec:authorize>
						<sec:authorize access="hasRole('ADMIN')">
						<li><a data-toggle="tab" href="#Register4">Guest Request <span class="badge">${guestTranRequestcount}</span></a></li>
						</sec:authorize>
						<li><a data-toggle="tab" href="#cancel3">Cancelled</a></li>
						<li><a data-toggle="tab" href="#guestcancel">Guest Cancelled</a></li>
						<sec:authorize access="hasRole('SUPERUSER')">
						<li><a data-toggle="tab" href="#downloadalltran">Cab Booking</a></li>
						</sec:authorize>
						<sec:authorize access="hasRole('SUPERUSER')">
						<li><a data-toggle="tab" href="#downloadallcancel">Cab Cancel</a></li>
						</sec:authorize>
						<sec:authorize access="hasRole('SUPERUSER')">
						<li><a data-toggle="tab" href="#guestdownloadalltran">Car Booking</a></li>
						</sec:authorize>
						<sec:authorize access="hasRole('SUPERUSER')">
						<li><a data-toggle="tab" href="#guestdownloadallcancel">Car Cancel</a></li>
						</sec:authorize>
						<sec:authorize access="hasRole('ADMIN')">
						<li class="dropdown">
      						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Cab Booking<span class="caret"></span></a>
						<ul class="dropdown-menu">
						
						<li><a data-toggle="tab" href="#deptdownloadalltran">Cab Booking</a></li>
						
						
						<li><a data-toggle="tab" href="#deptdownloadallcancel">Cab Cancel</a></li>
						</ul>
						</li>
						</sec:authorize>
						<sec:authorize access="hasRole('ADMIN')">
						<li class="dropdown">
      						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Car Booking<span class="caret"></span></a>
						<ul class="dropdown-menu">
						<li><a data-toggle="tab" href="#deptguestdownloadalltran">Car Guest Booking</a></li>
						
						<li><a data-toggle="tab" href="#deptguestdownloadallcancel">Car Guest Cancel</a></li>
						</ul>
						</li>
						</sec:authorize>
					</ul>
				</div>
				
				<br>
				<div class="tab-content insidecontent">
					<div id="downloadalltran" class="tab-pane fade">
						
						<div class="table-responsive">
						  <input class="form-control" id="myInput23" type="text" placeholder="Search..">
							<table id="myTabless23" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Booking id</th>
									        
									        <th>Vehicle ID</th>
									        <th>Vehicle Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Excepted Members</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable23">
									    	<c:forEach var="booking" items="${tranallbooking}">
												 <tr>
												 	<td><c:out value="${booking.bookingid}" /></td>
												 	<td><c:out value="${booking.carid}" /></td>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.except_members}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport23" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput23").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable23 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					
					</div>
					<div id="downloadallcancel" class="tab-pane fade">
						
						<div class="table-responsive">
						  <input class="form-control" id="myInput24" type="text" placeholder="Search..">
							<table id="myTabless24" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        
									        
									        <th>Vehicle ID</th>
									        <th>Vehicle Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Excepted Members</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable24">
									    	<c:forEach var="booking" items="${tranallcancel}">
												 <tr>
												 	
												 	<td><c:out value="${booking.carid}" /></td>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.except_members}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport24" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput24").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable24 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					
					</div>
					<div id="guestdownloadalltran" class="tab-pane fade">
						
						<div class="table-responsive">
						  <input class="form-control" id="myInput25" type="text" placeholder="Search..">
							<table id="myTabless25" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Booking id</th>
									        
									        <th>Vehicle ID</th>
									        <th>Vehicle Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Pickup point</th>
									        <th>Drop point</th>
									        <th>Number of Persons</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable25">
									    	<c:forEach var="booking" items="${tranallguestbooking}">
												 <tr>
												 	<td><c:out value="${booking.bookingid}" /></td>
												 	<td><c:out value="${booking.carid}" /></td>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.pickuppoint}" /></td>
												 	<td><c:out value="${booking.droppoint}" /></td>
												 	<td><c:out value="${booking.noOfpersons}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.pickupstartdateandtime}" /></td>
												 	<td><c:out value="${booking.dropenddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport25" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput25").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable25 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					
					</div>
					<div id="guestdownloadallcancel" class="tab-pane fade">
						
						<div class="table-responsive">
						  <input class="form-control" id="myInput26" type="text" placeholder="Search..">
							<table id="myTabless26" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        
									        
									        <th>Vehicle ID</th>
									        <th>Vehicle Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Pickup point</th>
									        <th>Drop point</th>
									        <th>Number of Persons</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable26">
									    	<c:forEach var="booking" items="${guesttranallcancel}">
												 <tr>
												 	
												 	<td><c:out value="${booking.carid}" /></td>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.pickuppoint}" /></td>
												 	<td><c:out value="${booking.droppoint}" /></td>
												 	<td><c:out value="${booking.noOfpersons}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.pickupstartdateandtime}" /></td>
												 	<td><c:out value="${booking.dropenddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport26" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput26").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable26 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					
					</div>
					<div id="deptdownloadalltran" class="tab-pane fade">
						
						<div class="table-responsive">
						  <input class="form-control" id="myInput31" type="text" placeholder="Search..">
							<table id="myTabless31" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Booking id</th>
									        
									        <th>Vehicle ID</th>
									        <th>Vehicle Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Excepted Members</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable31">
									    	<c:forEach var="booking" items="${depttranallbooking}">
												 <tr>
												 	<td><c:out value="${booking.bookingid}" /></td>
												 	<td><c:out value="${booking.carid}" /></td>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.except_members}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport31" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput31").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable31 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					
					</div>
					<div id="deptdownloadallcancel" class="tab-pane fade">
						
						<div class="table-responsive">
						  <input class="form-control" id="myInput32" type="text" placeholder="Search..">
							<table id="myTabless32" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        
									        
									        <th>Vehicle ID</th>
									        <th>Vehicle Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Excepted Members</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable32">
									    	<c:forEach var="booking" items="${depttranallcancel}">
												 <tr>
												 	
												 	<td><c:out value="${booking.carid}" /></td>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.except_members}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport32" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput32").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable32 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					
					</div>
					<div id="deptguestdownloadalltran" class="tab-pane fade">
						
						<div class="table-responsive">
						  <input class="form-control" id="myInput33" type="text" placeholder="Search..">
							<table id="myTabless33" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Booking id</th>
									        
									        <th>Vehicle ID</th>
									        <th>Vehicle Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Pickup point</th>
									        <th>Drop point</th>
									        <th>Number of Persons</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable33">
									    	<c:forEach var="booking" items="${depttranallguestbooking}">
												 <tr>
												 	<td><c:out value="${booking.bookingid}" /></td>
												 	<td><c:out value="${booking.carid}" /></td>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.pickuppoint}" /></td>
												 	<td><c:out value="${booking.droppoint}" /></td>
												 	<td><c:out value="${booking.noOfpersons}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.pickupstartdateandtime}" /></td>
												 	<td><c:out value="${booking.dropenddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport33" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput33").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable33 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					
					</div>
					<div id="deptguestdownloadallcancel" class="tab-pane fade">
						
						<div class="table-responsive">
						  <input class="form-control" id="myInput34" type="text" placeholder="Search..">
							<table id="myTabless34" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        
									        
									        <th>Vehicle ID</th>
									        <th>Vehicle Name</th>
									        <th>Staff name</th>
									        <th>Department</th>
									        <th>Mobile number</th>
									        <th>Pickup point</th>
									        <th>Drop point</th>
									        <th>Number of Persons</th>
									        <th>Purpose</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable34">
									    	<c:forEach var="booking" items="${deptguesttranallcancel}">
												 <tr>
												 	
												 	<td><c:out value="${booking.carid}" /></td>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.dept}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.pickuppoint}" /></td>
												 	<td><c:out value="${booking.droppoint}" /></td>
												 	<td><c:out value="${booking.noOfpersons}" /></td>
												 	<td><c:out value="${booking.purpose}" /></td>
												 	<td><c:out value="${booking.pickupstartdateandtime}" /></td>
												 	<td><c:out value="${booking.dropenddateandtime}" /></td>
												 	
												 </tr>
													
										     </c:forEach>
									    </tbody>
					   				</table>
					   				<input type="button" id="btnExport34" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput34").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable34 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					
					</div>
					<div id="tranhome" class="tab-pane fade in active">
						<div id="myCarousel3" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
							  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							  <li data-target="#myCarousel" data-slide-to="1"></li>
							  <li data-target="#myCarousel" data-slide-to="2"></li>
							  <li data-target="#myCarousel" data-slide-to="3"></li>
							  <li data-target="#myCarousel" data-slide-to="4"></li>
							  <li data-target="#myCarousel" data-slide-to="5"></li>
							  <li data-target="#myCarousel" data-slide-to="6"></li>
							  <li data-target="#myCarousel" data-slide-to="7"></li>
							  <li data-target="#myCarousel" data-slide-to="8"></li>
							  <li data-target="#myCarousel" data-slide-to="9"></li>
							</ol>

							
								<div class="carousel-inner">
								
								  <div class="item active">
									<img src="Image/b1.jpg" alt="Los Angeles" style="width:100%;">
								  </div>

								  <div class="item">
									<img src="Image/b2.jpg" alt="Chicago" style="width:100%;">
								  </div>
								
								  <div class="item">
									<img src="Image/b3.jpg" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/b4.jpg" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/b5.jpeg" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/b6.png" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/b7.png" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/b8.JPG" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/b9.JPG" alt="New york" style="width:100%;">
								  </div>
								  <div class="item">
									<img src="Image/C1.JPG" alt="New york" style="width:100%;">
								  </div>
								</div>
							<a class="left carousel-control" href="#myCarousel3" data-slide="prev">
							  <span class="glyphicon glyphicon-chevron-left"></span>
							  <span class="sr-only">Previous</span>
							</a>
							<a class="right carousel-control" href="#myCarousel3" data-slide="next">
							  <span class="glyphicon glyphicon-chevron-right"></span>
							  <span class="sr-only">Next</span>
							</a>
						</div>
					
					</div>
				
					<div id="traninfo" class="tab-pane fade">
					<div class="row">
					 <div class="col-sm-2 panelalign">
					 	<div class="panel panel-primary" style="text-align: center">
							
							
    							<div class="panel-heading"><c:out value="Sheld Trip" /></div>
    							<div class="panel-body"><label>Vehicle Id:</label><c:out value="1" /></div>
    							<div class="panel-body"><label>Available seats:</label><c:out value="8" /></div>
    							
    							
    							
								
								
    							<div class="panel-body"><button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#tranregdetail2">Details</button></div>
    							
    							
    											
    							<div class="panel-body"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#requesttran2">Booking</button></div>
    							</div>
    						</div>
						<c:forEach var="tran" items="${tranlist}">
						
						<div class="col-sm-2 panelalign">
							
							
							<div class="panel panel-primary" style="text-align: center">
							
							
    							<div class="panel-heading"><c:out value="${tran.car_name}" /></div>
    							<div class="panel-body"><label>Vehicle Id:</label><c:out value="${tran.carid}" /></div>
    							<div class="panel-body"><label>Available seats:</label><c:out value="${tran.available_seats}" /></div>
    							
    							
								
								
    							<div class="panel-body"><button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#tranregdetail">Details</button></div>
    							
    							
    											
    							<div class="panel-body"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#requesttran">Booking</button></div>
    							
    							<div class="modal fade" id="tranregdetail" role="dialog">
							   		<div class="modal-dialog modal-lg">
							   			
							   			<div class="modal-content">
							   			<div class="modal-header">
									          <button type="button" class="close" data-dismiss="modal">&times;</button>
									          <h4 class="modal-title">Booking details</h4>
									        </div>
							   			<input class="form-control" id="myInput14" type="text" placeholder="Search..">
		  								<br>
		  								<div class="table-responsive">
							   				<table id="myTabless14" class="table table-bordered table-striped">
							   					<thead>
											      <tr>
											        <th>Vehicle ID</th>
											        <th>Vehicle Name</th>
											        <th>Staff name</th>
											        <th>Pickup point</th>
											        <th>Drop point</th>
											        <th>Number of persons</th>
											        <th>Mobile number</th>
											        <th>Pickup Date and Time</th>
											        <th>Drop Date and Time</th>
											      </tr>
											    </thead>
											    <tbody id="myTable14">
											    	<c:forEach var="booking" items="${guesttranbooking}">
														 <tr>
														 	<td><c:out value="${booking.carid}" /></td>
														 	<td><c:out value="${booking.car_name}" /></td>
														 	<td><c:out value="${booking.name}" /></td>
														 	<td><c:out value="${booking.pickuppoint}" /></td>
														 	<td><c:out value="${booking.droppoint}" /></td>
														 	<td><c:out value="${booking.noOfpersons}" /></td>
														 	<td><c:out value="${booking.mnumber}" /></td>
														 	<td><c:out value="${booking.pickupstartdateandtime}" /></td>
														 	<td><c:out value="${booking.dropenddateandtime}" /></td>
														 </tr>
															
														    </c:forEach>
											    </tbody>
							   				</table>
							   				</div>
							   				<div class="modal-footer">
									          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									        </div>
							   			</div>
							   			
							   			<script>
											$(document).ready(function(){
											  $("#myInput14").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable14 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
							   		</div>
							   	</div>
							   	<div class="modal fade" id="tranregdetail2" role="dialog">
							   		<div class="modal-dialog modal-lg">
							   			
							   			<div class="modal-content">
							   			<div class="modal-header">
									          <button type="button" class="close" data-dismiss="modal">&times;</button>
									          <h4 class="modal-title">Booking details</h4>
									        </div>
							   			<input class="form-control" id="myInput12" type="text" placeholder="Search..">
		  								<br>
		  								<div class="table-responsive">
							   				<table id="myTabless12" class="table table-bordered table-striped">
							   					<thead>
											      <tr>
											        <th>Vehicle ID</th>
											        <th>Vehicle Name</th>
											        <th>Excepcted Members</th>
											        <th>Staff name</th>
											        <th>Mobile number</th>
											        <th>Start Date and Time</th>
											        <th>End Date and Time</th>
											      </tr>
											    </thead>
											    <tbody id="myTable12">
											    	<c:forEach var="booking" items="${tranbooking}">
														 <tr>
														 	<td><c:out value="${booking.carid}" /></td>
														 	<td><c:out value="${booking.car_name}" /></td>
														 	<td><c:out value="${booking.except_members}" /></td>
														 	<td><c:out value="${booking.name}" /></td>
														 	<td><c:out value="${booking.mnumber}" /></td>
														 	<td><c:out value="${booking.startdateandtime}" /></td>
														 	<td><c:out value="${booking.enddateandtime}" /></td>
														 </tr>
															
														    </c:forEach>
											    </tbody>
							   				</table>
							   				</div>
							   				<div class="modal-footer">
									          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									        </div>
							   			</div>
							   			
							   			<script>
											$(document).ready(function(){
											  $("#myInput12").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable12 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
							   		</div>
							   	</div>
    							
    							<div class="modal fade" id="requesttran" role="dialog">
							   		<div class="modal-dialog modal-lg">
							   			<div class="modal-content">
									        <div class="modal-header">
									          <button type="button" class="close" data-dismiss="modal">&times;</button>
									          <h4 class="modal-title">Book before verified in Booking details</h4>
									        </div>
									        <div class="modal-body">
									           <form class="form-horizontal" action="requesttran2" method="post">
									           
									        	<div class="form-horizontal">
									        	    <div class="form-group">
												      <label class="control-label col-sm-2" for="Vehicleid">Vehicle Id:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="carid" name="carid" placeholder="Vechile Id" required="required">
												      </div>
												    </div>
									        		<div class="form-group">
												      <label class="control-label col-sm-2" for="Purpose">Purpose:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Purpose" placeholder="Pursose of using" name="purpose" required="required">
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="Purpose">Boarding point:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Purpose" placeholder="Enter the Boarding point" name="pickuppoint" required="required">
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="Purpose">Droping point:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Purpose" placeholder="Enter the Droping point" name="droppoint" required="required">
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="noOfpersons">Except Number of Persons:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="No_of_stud" placeholder="Eneter Number of Persons" name="noOfpersons" required="required">
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="AddHall">Start Date:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Date5" placeholder="Start Date" name="startdate" autocomplete="off" required="required">
												      </div>
												    </div>
												   
												    <div class="form-group">
												      
												        <label class="control-label col-sm-2" for="pickup">Duration Pickup Time:</label>
												      <div class="col-sm-8">
												        <select class="form-control" id="sel1" name="pickupstarttime" required="required">
												        	<option value="" disabled selected>select your pickup time</option>
												        	<option value="07:00">07:00 AM</option>
													        <option value="07:30">07:30 AM</option>
													        <option value="08:00">08:00 AM</option>
													        <option value="08:30">08:30 AM</option>
													        <option value="09:00">09:00 AM</option>
													        <option value="09:30">09:30 AM</option>
													        <option value="10:00">10:00 AM</option>
													        <option value="10:30">10:30 AM</option>
													        <option value="11:00">11:00 AM</option>
													        <option value="11:30">11:30 AM</option>
													        <option value="12:00">12:00 PM</option>
													        <option value="12:30">12:30 PM</option>
													        <option value="13:00">01:00 PM</option>
													        <option value="13:30">01:30 PM</option>
													        <option value="14:00">02:00 PM</option>
													        <option value="14:30">02:30 PM</option>
													        <option value="15:00">03:00 PM</option>
													        <option value="15:30">03:30 PM</option>
													        <option value="16:00">04:00 PM</option>
													        <option value="16:30">04:30 PM</option>
													        <option value="17:00">05:00 PM</option>
													        <option value="17:30">05:30 PM</option>
													        <option value="18:00">06:00 PM</option>
													        <option value="18:30">06:30 PM</option>
													        <option value="19:00">07:00 PM</option>
													      </select>
												      
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="AddHall">Duration end Time:</label>
												      <div class="col-sm-8">
												        <select class="form-control" id="sel1" name="pickupendtime" required="required">
												        	<option value="" disabled selected>select your Drop time</option>
													        <option value="09:30">09:30 AM</option>
													        <option value="10:00">10:00 AM</option>
													        <option value="10:30">10:30 AM</option>
													        <option value="11:00">11:00 AM</option>
													        <option value="11:30">11:30 AM</option>
													        <option value="12:00">12:00 PM</option>
													        <option value="12:30">12:30 PM</option>
													        <option value="13:00">01:00 PM</option>
													        <option value="13:30">01:30 PM</option>
													        <option value="14:00">02:00 PM</option>
													        <option value="14:30">02:30 PM</option>
													        <option value="15:00">03:00 PM</option>
													        <option value="15:30">03:30 PM</option>
													        <option value="16:00">04:00 PM</option>
													        <option value="16:30">04:30 PM</option>
													        <option value="17:00">05:00 PM</option>
													        <option value="17:30">05:30 PM</option>
													        <option value="18:00">06:00 PM</option>
													        <option value="18:30">06:30 PM</option>
													        <option value="19:00">07:00 PM</option>
													        <option value="19:30">07:30 PM</option>
													        <option value="20:00">08:00 PM</option>
													      </select>
												        
												      </div>
												    </div>
												   
												     
												    
												    <div class="form-group">        
												      <div class="col-sm-offset-2 col-sm-10">
												        <button type="submit" class="btn btn-primary">Submit</button>
												      </div>
												    </div>
									        	</div>
									        	</form>
									        </div>
									        <div class="modal-footer">
									          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									        </div>
									     </div>
							   		</div>
					   	</div>
					   	
					   	<div class="modal fade" id="requesttran2" role="dialog">
							   		<div class="modal-dialog modal-lg">
							   			<div class="modal-content">
									        <div class="modal-header">
									          <button type="button" class="close" data-dismiss="modal">&times;</button>
									          <h4 class="modal-title">Book before verified in Booking details</h4>
									        </div>
									        <div class="modal-body">
									           <form class="form-horizontal" action="requesttran" method="post">
									           
									        	<div class="form-horizontal">
									        	    
									        		<div class="form-group">
									        			<input type="hidden" value="0" name="carid">
												      <label class="control-label col-sm-2" for="Purpose">Purpose:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Purpose" placeholder="Pursose of using" name="purpose" required="required">
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="guestname">Except Number of Student</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Except_members" placeholder="Enter except member of student" name="except_members" required="required">
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="AddHall">Date:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Date7" placeholder="Start Date" name="startdate" autocomplete="off" required="required">
												      </div>
												    </div>
												     <div class="form-group">
												      <label class="control-label col-sm-2" for="AddHall">End Date:</label>
												      <div class="col-sm-8">
												        <input type="text" class="form-control" id="Date8" placeholder="End Date" name="enddate" autocomplete="off" required="required">
												      </div>
												    </div>
												     <div class="form-group">
												      
												        <label class="control-label col-sm-2" for="AddHall">Start Time:</label>
												      <div class="col-sm-8">
												        <select class="form-control" id="sel1" name="starttime" required="required">
												        	<option value="" disabled selected>select your start time</option>
												        	<option value="07:00">07:00 AM</option>
													        <option value="07:30">07:30 AM</option>
													        <option value="08:00">08:00 AM</option>
													        <option value="08:30">08:30 AM</option>
													        <option value="09:00">09:00 AM</option>
													        <option value="09:30">09:30 AM</option>
													        <option value="10:00">10:00 AM</option>
													        <option value="10:30">10:30 AM</option>
													        <option value="11:00">11:00 AM</option>
													        <option value="11:30">11:30 AM</option>
													        <option value="12:00">12:00 PM</option>
													        <option value="12:30">12:30 PM</option>
													        <option value="13:00">01:00 PM</option>
													        <option value="13:30">01:30 PM</option>
													        <option value="14:00">02:00 PM</option>
													        <option value="14:30">02:30 PM</option>
													        <option value="15:00">03:00 PM</option>
													        <option value="15:30">03:30 PM</option>
													        <option value="16:00">04:00 PM</option>
													        <option value="16:30">04:30 PM</option>
													        <option value="17:00">05:00 PM</option>
													        <option value="17:30">05:30 PM</option>
													        <option value="18:00">06:00 PM</option>
													        <option value="18:30">06:30 PM</option>
													        <option value="19:00">07:00 PM</option>
													      </select>
												      
												      </div>
												    </div>
												    <div class="form-group">
												      <label class="control-label col-sm-2" for="AddHall">End Time:</label>
												      <div class="col-sm-8">
												        <select class="form-control" id="sel1" name="endtime" required="required">
												        	<option value="" disabled selected>select your Drop time</option>
													        <option value="09:30">09:30 AM</option>
													        <option value="10:00">10:00 AM</option>
													        <option value="10:30">10:30 AM</option>
													        <option value="11:00">11:00 AM</option>
													        <option value="11:30">11:30 AM</option>
													        <option value="12:00">12:00 PM</option>
													        <option value="12:30">12:30 PM</option>
													        <option value="13:00">01:00 PM</option>
													        <option value="13:30">01:30 PM</option>
													        <option value="14:00">02:00 PM</option>
													        <option value="14:30">02:30 PM</option>
													        <option value="15:00">03:00 PM</option>
													        <option value="15:30">03:30 PM</option>
													        <option value="16:00">04:00 PM</option>
													        <option value="16:30">04:30 PM</option>
													        <option value="17:00">05:00 PM</option>
													        <option value="17:30">05:30 PM</option>
													        <option value="18:00">06:00 PM</option>
													        <option value="18:30">06:30 PM</option>
													        <option value="19:00">07:00 PM</option>
													        <option value="19:30">07:30 PM</option>
													        <option value="20:00">08:00 PM</option>
													      </select>
												        
												      </div>
												    </div>
												    <div class="form-group">        
												      <div class="col-sm-offset-2 col-sm-10">
												        <button type="submit" class="btn btn-primary">Submit</button>
												      </div>
												    </div>
									        	</div>
									        	</form>
									        </div>
									        <div class="modal-footer">
									          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									        </div>
									     </div>
							   		</div>
					   	</div>
    						</div>
  						
  							
  							</div>
  					       
					    </c:forEach>
					      
					   	</div>
					   	
					   	<sec:authorize access="hasRole('SUPERUSER')">
							<button type="button" class="btn btn-primary btn-circle btn-xl" data-toggle="modal" data-target="#addtran">+</button>
							<button type="button" class="btn btn-primary btn-circle btn-xl" data-toggle="modal" data-target="#updatetran"><i class="fa fa-edit"></i></button>
							<button type="button" class="btn btn-primary btn-circle btn-xl" data-toggle="modal" data-target="#deletetran"><span class="glyphicon glyphicon-remove"></span></button>
						</sec:authorize>
						
						<div class="modal fade" id="deletetran" role="dialog">
						    <div class="modal-dialog modal-lg">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">Delete Vehicle</h4>
						        </div>
						        <div class="modal-body">
						          <form class="form-horizontal" action="deletetran" method="post">
						            <div class="form-group">
								      <label class="control-label col-sm-2" for="DeletedHall">Vechile Id:</label>
								      <div class="col-sm-8">
								        <input type="text" class="form-control" id="Hall_Id" required="required" placeholder="Enter Vehile Id" name="carid">
								      </div>
								    </div>
								     <div class="form-group">        
								      <div class="col-sm-offset-2 col-sm-10">
								        <button type="submit" class="btn btn-success">Submit</button>
								      </div>
								    </div>
								  </form>
								  </div>
								 </div>
								</div>
							</div>
						
						<div class="modal fade" id="addtran" role="dialog">
						    <div class="modal-dialog modal-lg">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">Add New Vehicle</h4>
						        </div>
						        <div class="modal-body">
						          <form class="form-horizontal" action="addnewcardetails" method="post">
						            <div class="form-group">
								      <label class="control-label col-sm-2" for="AddVehile">Vehile Name:</label>
								      <div class="col-sm-8">
								        <input type="text" class="form-control" id="Car_Name" required="required" placeholder="Enter Vehile Name" name="car_name">
								      </div>
								    </div>
								    <div class="form-group">
								      <label class="control-label col-sm-2" for="System Available">Available Seats:</label>
								      <div class="col-sm-8">
								        <input type="number" class="form-control" id="available" required="required" placeholder="Enter number of seats" name="available_seats">
								      </div>
								    </div>
								    
								    <div class="form-group">        
								      <div class="col-sm-offset-2 col-sm-10">
								        <button type="submit" class="btn btn-success">Submit</button>
								      </div>
								    </div>
								  </form>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						    </div>
						</div>
						
						
						<div class="modal fade" id="updatetran" role="dialog">
						    <div class="modal-dialog modal-lg">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">Update Vehicle Details</h4>
						        </div>
						        <div class="modal-body">
						          <form class="form-horizontal" action="updatecardetails" method="post">
						            <div class="form-group">
								      <label class="control-label col-sm-2" for="vehicleid">Vehicle ID:</label>
								      <div class="col-sm-8">
								        <input type="number" class="form-control" id="VechileId" required="required" placeholder="Enter vehicle ID" name="carid">
								      </div>
								    </div>
						            <div class="form-group">
								      <label class="control-label col-sm-2" for="VehicleName">Vehicle Name:</label>
								      <div class="col-sm-8">
								        <input type="text" class="form-control" id="Vehicle_Name" required="required" placeholder="Enter Vehicle Name" name="vehicle_name">
								      </div>
								    </div>
								    <div class="form-group">
								      <label class="control-label col-sm-2" for="Number of system availables">Number of system Availables:</label>
								      <div class="col-sm-8">
								        <input type="number" class="form-control" id="avalability" required="required" placeholder="Enter number of seats available" name="available_seats">
								      </div>
								    </div>
								    
								    
								    <div class="form-group">        
								      <div class="col-sm-offset-2 col-sm-10">
								        <button type="submit" class="btn btn-success">Submit</button>
								      </div>
								    </div>
								  </form>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						    </div>
						</div>
					</div>
					<div id="Register3" class="tab-pane fade">
						<div class="table-responsive">
						  <input class="form-control" id="myInput10" type="text" placeholder="Search..">
							<table id="myTabless10" class="table table-bordered table-striped">
							
					   					<thead>
									      <tr>
									        <th>Vehicle ID</th>
									        <th>Vehicle Name</th>
									        <th>Staff name</th>
									        <th>Mobile number</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        <th>Accept or cancel</th>
									      </tr>
									    </thead>
									    <tbody id="myTable10">
									    	<c:forEach var="booking" items="${tranrequ}">
												 <tr>
												 	<td><c:out value="${booking.carid}" /></td>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	<td>
												 		<form action="tranrequaccepted" method="post">
												 			<input type="hidden" value="${booking.requestid}" name="requestid">
												 			<button type="submit" class="btn btn-primary" value="Accepted" style="width:90%;">Accepted</button><br>
												 		</form><br>
												 		<form action="tranrequcanceled" method="post">
												 			<input type="hidden" value="${booking.requestid}" name="requestid">
												 			<button type="submit" class="btn btn-primary" value="Cancel" style="width:90%;">Cancel</button>
												 		</form>
												 	</td>
												 </tr>
													
												    </c:forEach>
									    </tbody>
									   
					   				</table>
					   				<br>
					   				<input type="button" id="btnExport" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput10").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable10 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
					<div id="Register4" class="tab-pane fade">
						<div class="table-responsive">
						  <input class="form-control" id="myInput15" type="text" placeholder="Search..">
							<table id="myTabless15" class="table table-bordered table-striped">
							
					   					<thead>
									      <tr>
									        <th>Vehicle ID</th>
									        <th>Vehicle Name</th>
									        <th>Staff name</th>
									        <th>Mobile number</th>
									        <th>Number of persons</th>
									        <th>Boarding point</th>
									        <th>Droping point</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        <th>Accept or cancel</th>
									      </tr>
									    </thead>
									    <tbody id="myTable15">
									    	<c:forEach var="booking" items="${guesttranrequ}">
												 <tr>
												 	<td><c:out value="${booking.carid}" /></td>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.noOfpersons}" /></td>
												 	<td><c:out value="${booking.pickuppoint}" /></td>
												 	<td><c:out value="${booking.droppoint}" /></td>
												 	<td><c:out value="${booking.pickupstartdateandtime}" /></td>
												 	<td><c:out value="${booking.dropenddateandtime}" /></td>
												 	<td>
												 		<form action="tranrequaccepted2" method="post">
												 			<input type="hidden" value="${booking.requestid}" name="requestid">
												 			<button type="submit" class="btn btn-primary" value="Accepted" style="width:90%;">Accepted</button><br>
												 		</form><br>
												 		<form action="tranrequcanceled2" method="post">
												 			<input type="hidden" value="${booking.requestid}" name="requestid">
												 			<button type="submit" class="btn btn-primary" value="Cancel" style="width:90%;">Cancel</button>
												 		</form>
												 	</td>
												 </tr>
													
												    </c:forEach>
									    </tbody>
									   
					   				</table>
					   				<br>
					   				<input type="button" id="btnExport" value="Export" />
							   			<script>
											$(document).ready(function(){
											  $("#myInput15").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable15 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
					<div id="cancel3" class="tab-pane fade">
						<div class="table-responsive">
						<input class="form-control" id="myInput11" type="text" placeholder="Search..">
							<table id="myTabless11" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Vehicle ID</th>
									        <th>Vehicle Name</th>
									        <th>Staff name</th>
									        <th>Mobile number</th>
									        <th>Start Date and Time</th>
									        <th>End Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable11">
									    	<c:forEach var="booking" items="${trancancel}">
												 <tr>
												 	<td><c:out value="${booking.carid}" /></td>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.startdateandtime}" /></td>
												 	<td><c:out value="${booking.enddateandtime}" /></td>
												 	
												 </tr>
													
												    </c:forEach>
									    </tbody>
					   				</table>
					   				<script>
											$(document).ready(function(){
											  $("#myInput11").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable11 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
					<div id="guestcancel" class="tab-pane fade">
						<div class="table-responsive">
						<input class="form-control" id="myInput17" type="text" placeholder="Search..">
							<table id="myTabless17" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Vehicle ID</th>
									        <th>Vehicle Name</th>
									        <th>Staff name</th>
									        <th>Mobile number</th>
									        <th>No of persons</th>
									        <th>Boarding point</th>
									        <th>Droping point</th>
									        <th>Pickup Date and Time</th>
									        <th>Drop Date and Time</th>
									        
									      </tr>
									    </thead>
									    <tbody id="myTable17">
									    	<c:forEach var="booking" items="${guesttrancancel}">
												 <tr>
												 	<td><c:out value="${booking.carid}" /></td>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	<td><c:out value="${booking.name}" /></td>
												 	<td><c:out value="${booking.mnumber}" /></td>
												 	<td><c:out value="${booking.noOfpersons}" /></td>
												 	<td><c:out value="${booking.pickuppoint}" /></td>
												 	<td><c:out value="${booking.droppoint}" /></td>
												 	<td><c:out value="${booking.pickupstartdateandtime}" /></td>
												 	<td><c:out value="${booking.dropenddateandtime}" /></td>
												 	
												 </tr>
													
												    </c:forEach>
									    </tbody>
					   				</table>
					   				<script>
											$(document).ready(function(){
											  $("#myInput17").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable17 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
					<div id="Bookingpro3" class="tab-pane fade">
					  <div class="table-responsive">
					  <input class="form-control" id="myInput18" type="text" placeholder="Search..">
						<table id="myTabless18" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Vehicle Name</th>
									        <th>Request Id</th>
									        <th>Progress Bar</th>
									        <th>Request Cancel</th>
									      </tr>
									    </thead>
									    <tbody id="myTable18">
									    	<c:forEach var="booking" items="${tranpro}">
												 <tr>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	
												 	<td><c:out value="${booking.requestid}" /></td>
												 	<td> <div class="progress" style="width:100%;">
													    <div class="${booking.checker}" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:<c:out value="${booking.progressper}" />">
													      ${booking.progressper} Complete
													    </div>
													  </div>
													  </td>
													  <td>
													  <form action="tranrequcanceledbyuser" method="post">
													  	<input type="hidden" value="${booking.requestid}" name="requestid">
												 		<button type="submit" class="btn btn-primary" value="Cancel">Cancel</button>
												 	</form>
												 	</td>
												 </tr>
													
												    </c:forEach>
									    </tbody>
					   				</table>
					   				<script>
											$(document).ready(function(){
											  $("#myInput18").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable18 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
					<div id="Bookingpro4" class="tab-pane fade">
					  <div class="table-responsive">
					  <input class="form-control" id="myInput16" type="text" placeholder="Search..">
						<table id="myTabless16" class="table table-bordered table-striped">
					   					<thead>
									      <tr>
									        <th>Vehicle Name</th>
									        <th>Request Id</th>
									        <th>Progress Bar</th>
									        <th>Request Cancel</th>
									      </tr>
									    </thead>
									    <tbody id="myTable16">
									    	<c:forEach var="booking" items="${guesttranpro}">
												 <tr>
												 	<td><c:out value="${booking.car_name}" /></td>
												 	
												 	<td><c:out value="${booking.requestid}" /></td>
												 	<td> <div class="progress" style="width:100%;">
													    <div class="${booking.checker}" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:<c:out value="${booking.progressper}" />">
													      ${booking.progressper} Complete
													    </div>
													  </div>
													  </td>
													  <td>
													  <form action="tranrequcanceledbyuser2" method="post">
													  	<input type="hidden" value="${booking.requestid}" name="requestid">
												 		<button type="submit" class="btn btn-primary" value="Cancel">Cancel</button>
												 	</form>
												 	</td>
												 </tr>
													
												    </c:forEach>
									    </tbody>
					   				</table>
					   				<script>
											$(document).ready(function(){
											  $("#myInput16").on("keyup", function() {
											    var value = $(this).val().toLowerCase();
											    $("#myTable16 tr").filter(function() {
											      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
											    });
											  });
											});
										</script>
					   			</div>
					</div>
				</div>
			</div>
		</div>
    </div>
   </div>
</div>

<div class="footer text-center">
  <p>KPR Institute of Engineering and Technology</p>
</div>

</body>

    <script src="table2excel.js" type="text/javascript"></script>
<script>
$(document).ready(function(){
    $('#myTabless').DataTable();
    $('#myTabless2').DataTable();
    $('#myTabless3').DataTable();
    $('#myTabless4').DataTable();
    $('#myTabless5').DataTable();
    $('#myTabless6').DataTable();
    $('#myTabless7').DataTable();
    $('#myTabless8').DataTable();
    $('#myTabless9').DataTable();
    $('#myTabless10').DataTable();
    $('#myTabless11').DataTable();
    $('#myTabless12').DataTable();
    $('#myTabless13').DataTable();
    $('#myTabless14').DataTable();
    $('#myTabless15').DataTable();
    $('#myTabless16').DataTable();
    $('#myTabless17').DataTable();
    $('#myTabless18').DataTable();
    $('#myTabless19').DataTable();
    $('#myTabless20').DataTable();
    $('#myTabless21').DataTable();
    $('#myTabless22').DataTable();
    $('#myTabless23').DataTable();
    $('#myTabless24').DataTable();
    $('#myTabless25').DataTable();
    $('#myTabless26').DataTable();
    $('#myTabless27').DataTable();
    $('#myTabless28').DataTable();
    $('#myTabless29').DataTable();
    $('#myTabless30').DataTable();
    $('#myTabless31').DataTable();
    $('#myTabless32').DataTable();
    $('#myTabless33').DataTable();
    $('#myTabless34').DataTable();
     $("#btnExport").click(function () {
    $("#myTabless6").table2excel({
            filename: "Table.xls"
        });
    });
     $("#btnExport19").click(function () {
    	    $("#myTabless19").table2excel({
    	            filename: "Hallbooking.xls"
    	        });
    	    });
     $("#btnExport20").click(function () {
 	    $("#myTabless20").table2excel({
 	            filename: "HallCancel.xls"
 	        });
 	    });
     $("#btnExport21").click(function () {
  	    $("#myTabless21").table2excel({
  	            filename: "LabBooking.xls"
  	        });
  	    });
     $("#btnExport22").click(function () {
   	    $("#myTabless22").table2excel({
   	            filename: "LabCancel.xls"
   	        });
   	    });
     $("#btnExport23").click(function () {
    	    $("#myTabless23").table2excel({
    	            filename: "TransportBooking.xls"
    	        });
    	    });
     $("#btnExport24").click(function () {
 	    $("#myTabless24").table2excel({
 	            filename: "TransportCancel.xls"
 	        });
 	    });
     $("#btnExport25").click(function () {
 	    $("#myTabless25").table2excel({
 	            filename: "GuestTransportBooking.xls"
 	        });
 	    });
	  $("#btnExport26").click(function () {
		    $("#myTabless26").table2excel({
		            filename: "GuestTransportCancel.xls"
		        });
		    });
	  $("#btnExport27").click(function () {
		    $("#myTabless27").table2excel({
		            filename: "Departmaent Hall Booking.xls"
		        });
		    });
		$("#btnExport28").click(function () {
			    $("#myTabless28").table2excel({
			            filename: "Department Hall Cancel.xls"
			        });
			    });
		$("#btnExport29").click(function () {
		    $("#myTabless29").table2excel({
		            filename: "Departmaent Lab Booking.xls"
		        });
		    });
		$("#btnExport30").click(function () {
			    $("#myTabless30").table2excel({
			            filename: "Department Lab Cancel.xls"
			        });
			    });
		$("#btnExport31").click(function () {
		    $("#myTabless31").table2excel({
		            filename: "Departmaent Cab Booking.xls"
		        });
		    });
		$("#btnExport32").click(function () {
			    $("#myTabless32").table2excel({
			            filename: "Department Cab Cancel.xls"
			        });
			    });
		$("#btnExport33").click(function () {
		    $("#myTabless33").table2excel({
		            filename: "Departmaent Guest car Booking.xls"
		        });
		    });
		$("#btnExport34").click(function () {
			    $("#myTabless34").table2excel({
			            filename: "Department Guest car Cancel.xls"
			        });
			    });
});
</script>
</html>
