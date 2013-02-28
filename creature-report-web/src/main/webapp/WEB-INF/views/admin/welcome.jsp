<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Admin Home</title>
<meta name="description"
	content="One's Price, where we tell you the nearest store that has the cheapest price for the stuff you are looking for">

<link rel="stylesheet"
	href="<c:url value="resources/css/normalize.css"/>" />
<link rel="stylesheet" href="<c:url value="resources/css/main.css"/>" />

<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap-responsive.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap.min.css"/>" />
<link rel="stylesheet" href="<c:url value="resources/css/style.css"/>" />


<script src="<c:url value="resources/js/jquery-1.9.0.min.js" />"></script>        
<script src="<c:url value="resources/js/modernizr-2.6.2.min.js"/>"></script>
</head>
<body>
	<!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->
	<header>
		<div id="headerPanel" class="headerPanel">
			<div class="panelL">
					<img src="<c:url value="/resources/images/logo.png"/>">
					<h3>Creature Report - i iz teh best!</h3>
			</div>
		</div>
	</header>

	
	<div class="subnav">
		<div class="container" id="menuBar">
			<ul class="nav nav-pills">
				<li><a href="<c:url value="/" />">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="<c:url value="/signup" />">Sign Up</a></li>
				<li><a href="#">Mobile</a></li>
				<li><a href="#global">Contact Us</a></li>
				<li><a href="#global">Send Feedback</a></li>
			</ul>
		</div>
	</div>

	<div class="wrapper">
		<div class="container home-container">

			<form name='f' id="login"
				action="<c:url value='j_spring_security_check' />" method="POST">
				<div class="container">
				<img id="logo"
					src="<c:url value="/resources/images/logoSmall.png" />">
				</div>
				<div class="row-fluid">
					<div class="span8">
						<h1>Welcome ${userName}!</h1>
					</div>
				</div>
			</form>
		</div>

	</div>
	<script src="<c:url value="resources/js/bootstrap.js"/>"></script>
</body>
</html>