<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Creature Report</title>
        <meta name="description" content="Wrangling and reporting on your little monsters so you can determine what to do with them">
      
        <link rel="stylesheet" href="<c:url value="resources/css/normalize.css"/>"/>
        <link rel="stylesheet" href="<c:url value="resources/css/main.css"/>"/>
       
        <link rel="stylesheet" href="<c:url value="resources/css/bootstrap-responsive.min.css"/>"/>
        <link rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css"/>"/>
        <link rel="stylesheet" href="<c:url value="resources/css/style.css"/>"/>
        
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
	<form id="login"
		action="<c:url value='j_spring_security_check' />" method="POST"
		name="f">
		<c:set var="loginErrorDiv" value="${post.loginerror}"/>
		<div class="container">
			<img id="logo" src="<c:url value="/resources/images/logoSmall.png"  />" alt="" />
		</div>
		<div class="row-fluid">
			<div class="span4">
				<h1>Welcome !</h1>
				<fieldset id="user-details">
					<label for="j_username">User Name : <span class="required">*</span></label>
					<input id="j_username" type="text" name="j_username" value="" /> <label
						for="password">Password: <span class="required">*</span>
					</label> <input id="j_password" type="password" name="j_password" value="" />
					<input class="submit btn" type="submit" name="submit" value="Login" />
				</fieldset>
			</div>
			<div class="span7 offset1 well about-well">
				<h2>Sign Up Now !</h2>
				<ul class="unstyled" style="text-align: justify;">
					<li><em class="icon-tags"></em> <small> Create you daily reports with ease and style!</small></li>
					<li><em class="icon-tags"></em> <small> Download our
							Mobile App and free yourself from the tedium!</small></li>
					<li><em class="icon-tags"></em> <small> Use our reporting tools to chart progress.</small></li>
					<li><em class="icon-tags"></em> <small> Earn back that lost time from having to handwrite all reports! </small></li>
				</ul>
				<a class="btn" href="#">More »</a>
			</div>
		</div>
		<div class="errorblock" id="loginErrorDiv" style="display:none">
		Invalid Username or Password <br>
		Please try again.
		</div>
	</form>
	</div>
	<script src="<c:url value="resources/js/bootstrap.js"/>"></script>
	<script type="text/javascript">
	document.ready
		$("#${loginErrorDiv}").toggle();
	</script>
    </body>
</html>

