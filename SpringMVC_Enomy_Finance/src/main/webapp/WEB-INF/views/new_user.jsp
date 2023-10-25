 <%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page isELIgnored="false" %>

<html>

<head>

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">

<!-- Access the Static Resources  using spring Url  -->
<!--
<spring:url value="/css/style.css" var="myCss" />
<spring:url value="/js/custom.js" var="myJS" />

<link href="${myCss}" rel="stylesheet" />
<script src="${myJS}"></script>
-->
<style>


textarea:focus,
input:focus{
	outline: none;
}

.card {
	width: 100%;
	height: 61%;
	border: 0;
	margin-bottom: 150px;
	margin-top: 150px;
	padding: 0px 15px 10px 15px;
	background-color: rgba(255, 255, 255, 0.8);
	-webkit-box-shadow: 5px 6px 20px -5px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 5px 6px 20px -5px rgba(0, 0, 0, 0.75);
	box-shadow: 5px 6px 20px -5px rgba(0, 0, 0, 0.75);
	border-radius: 6px !important;
}

.glowBox {
	background: linear-gradient(45deg, #ffa600dd, #ff4400d3);
	padding: 20px 0;
	width: 51%;
	margin-bottom: 15px;
	box-shadow: 0 0 10px rgba(255, 68, 0, 0.5);
	border-radius: 6px;
  position: absolute;
  top: 9%;
    left: 26%;
}

.title {
	margin-top: 0.625rem;
	margin-bottom: 0.75rem;
	font-size: 2rem;
	line-height: 1.5em;
	text-align: center;
	color: #fff;
}

.socialMedia {
	text-align: center;
	margin-top: 1rem;
	padding: 0;
}

.socialMedia i {
	color: #fff;
}

.form {
	display: block;
	width: 100%;
	padding: 0.4375rem 0;
	font-size: 1rem;
	line-height: 1.5;
	color: white;
	background-color: transparent;
	background-clip: padding-box;
	border: 0;
	border-bottom: 1px solid #d2d2d2;
	border-radius: 0;
	-webkit-box-shadow: none;
	box-shadow: none;
	-webkit-transition: border-color 0.15s ease-in-out,
		-webkit-box-shadow 0.15s ease-in-out;
	transition: border-color 0.15s ease-in-out,
		-webkit-box-shadow 0.15s ease-in-out;
	transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
	transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out,
		-webkit-box-shadow 0.15s ease-in-out;
	padding-bottom: 7px;
	margin: 27px 0 0 0;
}

.btn.btn-primary.btn-link {
	background-color: transparent;
	color: orange;
	-webkit-box-shadow: none;
	box-shadow: none;
	border: none;
	cursor: pointer;
	text-decoration: none;
	padding: 1.125em 2.25em;
  font-size: 1em;
  line-height: 1.5;
  border-radius: .2em;
}

.validationText{
  font-size: 13px;
}
</style>

</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	
	<%@ include file="header.jsp"%>
<div class="content">
		<div class="d-flex h-100 align-items-center justify-content-center">
			<div class="container">
				<div class="row position-relative">
				<div class="col-sm-4"></div>
					<div class="col-sm-4">
	<div class="glowBox">
              <h5 class="title">Create User</h5>
              <c:if test="${register_success != null}">
					<div class="alert">
						<p>${register_success} </p>
					</div>
				</c:if>
             
            </div>
	
 <div class="card " style="background-color: rgba(255, 255, 255, 0.1); padding-top:15% ; padding-bottom:15% ; padding-left : 10% ; padding-right:10%">
             
							<div class="card-body p-5">
			<form:form action="register_process" method="post" modelAttribute="user">
				<div class="form-group">
					<label for="fullname">Your Full Name:</label>
					<form:input path="name" class="form-control" required="true"/>
				</div>
				
				<div class="form-group">
					<label for="loginname">Your Login User Name:</label>
					<form:input path="userName" class="form-control" required="true"/>
					
				</div>
				
				
				<div class="form-group">
					<label for="password">Your Password:</label>
					<form:password path="password" class="form-control" required="true"/>
					
				</div>
				
				<input type="submit" value="Register" class="btn p-2 ml-auto mr-auto mt-5" style="background: linear-gradient(45deg, #ffa600dd, #ff4400d3); width: 100%;"/>
					
			</form:form>

			</div>


			<div class="col-md-4"></div>

		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		
	
		
		<%@ include file="footer.jsp"%>




	

</body>
</html>
