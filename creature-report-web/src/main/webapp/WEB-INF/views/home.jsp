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
        
        <script src="<c:url value="resources/js/jquery-1.8.0.min.js" />"></script>        
        <script src="<c:url value="resources/js/modernizr-2.6.1.min.js"/>"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->


	<header>
		<div id="headerPanel" class="headerPanel">
			<div class="panelL">
					<img src="<c:url value="/resources/images/logoSmall.png"/>">
					<h3>Creature Report - i iz teh best!</h3>
			</div>
		</div>
	</header>

	<div class="subnav">
			<ul class="nav nav-pills">
			<li><a href="<c:url value="/" />">Home</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Sign Up</a></li>
			<li><a href="#">Register Your Store</a></li>

			<li style="float: right;">
				<ul class="nav nav-pills pull-right">
					<li><a href="#global">Contact Us</a></li>
					<li><a href="#global">Send Feedback</a></li>
				</ul>
			</li>
		</ul>
	</div>

       <script src="<c:url value="resources/js/bootstrap.js"/>"></script>
    </body>
</html>

