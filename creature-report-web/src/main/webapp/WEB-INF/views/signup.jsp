<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Sign Up</title>
<meta name="description"
	content="Wrangle your little creatures a good daily report">

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
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

<script>
var geocoder;
var map;
var lat;
var lng;
function initialize() {
  geocoder = new google.maps.Geocoder();
  var latlng = new google.maps.LatLng(-34.397, 150.644);
  var mapOptions = {
    zoom: 16,
    center: latlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
};

function codeAddress() {
    var address = document.getElementById('address').value;
    geocoder.geocode( { 'address': address}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
	  console.log
        map.setCenter(results[0].geometry.location);
        var marker = new google.maps.Marker({
            map: map,
            position: results[0].geometry.location
        });
      } else {
        alert('Geocode was not successful for the following reason: ' + status);
      }
    });
};

$(document).ready(function() {
	initialize();
	$('#getAdd').click(function() {
	codeAddress();
	initialize();
	});
});

</script>

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

			<form:form method="POST" commandName="user" modelAttribute="user"
				id="signup">
				<img id="logo"
					src="<c:url value="/resources/images/logoSmall.png" />">
				<div class="row-fluid">
					<div class="span10">
						<h3>Sign Up Now !</h3>
						<table>
							<tr>
								<td><form:label path="userName">User Name</form:label> <form:input
										path="userName" required="true" /></td>
							</tr>
							<tr>
								<td><form:label path="password">Password</form:label> <form:input
										type="password" path="password" required="true" /></td>
							</tr>
							<tr>
								<td><label for="retype">Retype Password</label> <input
									type="password" required id="retype" /></td>
							</tr>
							<tr>
								<td><form:label path="email">Email</form:label> <form:input
										path="email" required="true" type="email" /></td>
							</tr>

							<tr>
							    <td><form:label path="address">Address</form:label>
									<form:input path="address" required="true" style="width:400px;" id="address"/>
									<a href="#getAdd" class="btn btn-small" id="getAdd" style="margin-top:-8px;">Find Address</a> 
							    </td>										
							</tr>										
							<tr>
							  	<td>
							      <div class="map_canvas" id="map_canvas"></div>
								</td>
							</tr>
							<tr>
							    <td><form:label path="latitude">Latitude</form:label>
									<form:input path="latitude" type="text" class="latitude"/></td>
							</tr>
							<tr>
							    <td><form:label path="longitude">Longitude</form:label>
								<form:input path="longitude" type="text" id="longitude"/></td>
							</tr>
							<tr>
								<td><input type="submit" value="SignUp"
									class="btn btn-large" /></td>
							</tr>
						</table>
					</div>



				</div>
			</form:form>
		</div>

	</div>



	<script src="<c:url value="resources/js/bootstrap.js"/>"></script>
</body>
</html>