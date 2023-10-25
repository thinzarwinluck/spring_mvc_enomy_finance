<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
<link href="/SpringMVC_Enomy_Finance/css/mystyle.css" rel="stylesheet" />

<%@ page isELIgnored="false" %>
<style>
.aboutus{
	margin-left: 10%;
    margin-right: 10%;
    background-color: rgba(255, 255, 255, 0.8);
	-webkit-box-shadow: 5px 6px 20px -5px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 5px 6px 20px -5px rgba(0, 0, 0, 0.75);
	box-shadow: 5px 6px 20px -5px rgba(0, 0, 0, 0.75);
	border-radius: 6px !important;
}
  .jumbotron {
            background-color: transparent; /* Remove default background color */
        }
</style>
</head>

<body>


	<!-- First Container -->
	
	
	<%@ include file="header.jsp"%>

	<!-- First Container -->
	<div class="container-fluid aboutus">
		<div class="jumbotron">
			<h3>WE HELP YOU GET A GREAT OPPORTUNITY ON SAVING & INVESTMENT  !</h3>



			<p class="lead">Enomy Finance is xxxxx   xxxxxxxxxxx  xxxxxxxxxx </p>

			<hr class="my-4">
			<p>Enomy Finance is xxxxx   xxxxxxxxxxx  xxxxxxxxxx</p>
			<p class="lead">
				<a class="btn p-2 ml-auto mr-auto mt-5" style="background: linear-gradient(45deg, #ffa600dd, #ff4400d3); color:white" href="new" role="button">Join Us Now!</a>
			</p>
		</div>
	</div>


	<%@ include file="footer.jsp"%>

</body>
</html>
