<!-- Navbar -->
<spring:url value="/images/logof.png" var="myLogo" />


<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<nav class="navbar navbar-expand-md navbar-light mynav">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			
			
		  <!-- <a class="navbar-brand" href="index.jsp"> <img class="rounded mylogo" src="/SpringMVC_Enomy_Finance/images/logo.png"> </a>	 -->
		</div>
<div class="collapse navbar-collapse" id="myNavbar">
		

					
				<img src="${myLogo}" width="120px" />
					
			<ul class="nav navbar-nav navbar-right text-warning" style="    margin-top: 45px;
    margin-right: 49px;">

				<sec:authorize access="!isAuthenticated()">
					<li><a style="color:orange" href="login">Login</a></li>
					<li><a style="color:orange" href="register_form">Register</a></li>
					<li><a style="color:orange" href="aboutUs">About Us</a></li>
					<li><a style="color:orange" href="contactUs">Contact Us</a></li>
				</sec:authorize>


				<sec:authorize access="isAuthenticated()">

				<sec:authorize access="hasRole('Client')">
					 <li><a href="#" style="color:orange"><span class="mylink">Home</span></a></li>
					 <li><a href="converter" style="color:orange"><span class="mylink">Currency Conversion</span></a>
					 <li><a href="save_invest_plan" style="color:orange"><span class="mylink">Saving and Investment</span></a>
				</sec:authorize>
				
				<sec:authorize access="hasRole('Staff')">
					 <li><a href="#"><span class="mylink" style="color:orange" >Home</span></a></li>
					 <li><a href="users"><span class="mylink" style="color:orange">User Management</span></a></li>
					 
				</sec:authorize>
				
					
			    <!-- /logout must be a POST request, as csrf is enabled.
			        This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
					
					<li>
					<form action="logout" method="post" style="padding:7px;">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
							<input type="submit"
							name="Logout" value="Logout" class="btn p-2 ml-auto mr-auto mt-5" style="background: linear-gradient(45deg, #ffa600dd, #ff4400d3); color : white"></input>
					</form>
					</li>
				</sec:authorize>
				



			</ul>
		</div>
	</div>
</nav>
