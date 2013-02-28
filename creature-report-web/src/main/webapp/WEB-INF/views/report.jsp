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
<title>Creature Report</title>
<meta name="description" content="Wrangling and reporting on your little monsters so you can determine what to do with them">
<link rel="stylesheet"	href="<c:url value="resources/css/normalize.css"/>" />
<link rel="stylesheet" href="<c:url value="resources/css/main.css"/>" />
<link rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css"/>" />
<link rel="stylesheet" href="<c:url value="resources/css/bootstrap-responsive.min.css"/>" />
<link rel="stylesheet" href="<c:url value="resources/css/custom-theme/jquery-ui-1.10.0.custom.css" />"/>
<link rel="stylesheet" href="<c:url value="resources/css/datepicker.css" />"/>
<link rel="stylesheet" href="<c:url value="resources/css/bootstrap-timepicker.css" />"/>
<link rel="stylesheet" href="<c:url value="resources/css/select2.css"/>"/>
<link rel="stylesheet" href="<c:url value="resources/css/timepicker.css"/>"/>
<link rel="stylesheet" href="<c:url value="resources/css/style.css"/>"/>
</head>
<body>
<!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

<header>
  <div id="headerPanel" class="headerPanel">
  <div class="container">
    <div class="panelL"> <img src="<c:url value="resources/images/logo.png"/>"/>
      <h3>Creature Report - iz teh best!</h3>
    </div>
   </div>
  </div>
</header>
<div class="subnav">
  <div class="container" id="menuBar">
    <ul class="nav nav-pills">
      <li><a href="home.htm">Home</a></li>
      <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Admin <!-- <b class="caret"></b> --></a>
        <ul class="dropdown-menu" >
          <li><a tabindex="-1" href="#">Add Students</a></li>
          <li><a tabindex="-1" href="#">Add Teachers</a></li>
          <li class="divider"></li>
          <li><a tabindex="-1" href="#">Admin Dashboard</a></li>
        </ul>
      </li>
      <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> User <!-- <b class="caret"></b> --></a>
        <ul class="dropdown-menu" >
          <li><a tabindex="-1" href="report.htm">Create Report</a></li>
          <li class="divider"></li>
          <li><a tabindex="-1" href="#">User Dashboard</a></li>
        </ul>
      </li>
      <li><a href="#">About</a></li>
      <li><a href="<c:url value="resources/signup"/>">Sign Up</a></li>
      <li><a href="#">Mobile</a></li>
      <li><a href="#global">Contact Us</a></li>
    </ul>
  </div>
</div>
<div class="wrapper">
<div class="container">
 <form class="cmxform" id="reportForm" method="post" action="">
  <div class="row-fluid">
    <div class="span12">
      <div class="well" id="formContainer">
        <div id="mainForm"> 
              <div id="warnBox" class="alert alert-block">
			    <button type="button" onclick="javascript:dismissWarning();" class="close" data-dismiss="alert">&times;</button>
			    
			    <h4>Warning!</h4>&nbsp;<br/>
			    <div id="warningTextContainer"></div>
			    <div><a href="javascript:dismissWarning();" class="btn">Dismiss</a></div>      
			  </div>
			   <div id="errorBox" class="alert alert-error">
			    
			    <h4>Error!</h4>
			    <div id="errorTextContainer"></div>     
			   
			   </div>
			   
          <!-- #first_step -->
          <div id="first_step" >
         
            <legend>General Information:</legend>
            <div class="row-fluid">
              <div class="span6">
                <label>Child's Name</label>
                <select id="childrenList"  style="width:300px" required="true">
                  <option></option>
                  <option value="1">Arnold, Saga</option>
                  <option value="2">Makarov, Mila</option>
                  <option value="3">Van Paemel, Patrick</option>
                </select>
              </div>
              <!--/span-->
              <div class="span6">
                <div class="control-group">
                  <label class="control-label">Todays Date:</label>
                  <div class="controls">
                    <div data-date-format="mm/dd/yy" id="datepicker" class="input-append date">
                      <input type="text" placeholder="mm/dd/yy" id="datepicker" value="" required="true">
                      <span class="add-on"><i class="icon-th"></i></span> </div>
                  </div>
                </div>
              </div>
              <!--/span--> 
            </div>
            <!--/row -->
            <div class="row-fluid">
              <div class="span6">
                <div class="control-group">
                  <label class="control-label">Room:</label>
                  <div class="controls">
                    <select id="roomList" style="width:300px" required="true">
                      <option value="1">Blue</option>
                      <option value="2">Purple</option>
                      <option value="3">Yellow</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="span6">
                <div class="control-group">
                  <label class="control-label">My Teachers Today:</label>
                  <div class="controls">
                    <select id="teachersList"  multiple="multiple" style="width:300px" required="true">
                      <option></option>
                      <option value="1">Kate Winslet</option>
                      <option value="2">Meryl Streep</option>
                      <option value="3">Juliette Binoche</option>
                      <option value="4">Emma Thompson</option>
                      <option value="5">Hilary Swank</option>
                    </select>
                  </div>
                </div>
              </div>
              </div>
               <legend>Actvities</legend>
              <div class="row-fluid">
             
              <div class="span3">
                <div class="control-group">
                  <label id="activityCheckboxesOne" required="true" class="control-label">Today I...</label>
                  <div id="activityCheckboxesOneDiv" class="controls">
                    <label class="checkbox">
                      <input id="gymActivity" type="checkbox" value="went to the gym">
                      Went to the Gym </label>
                    <label class="checkbox">
                      <input id="outsideActivity" type="checkbox" value="went outside">
                      Went Ouside </label>
                    <label class="checkbox">
                      <input id="artsActivity" type="checkbox" value="did arts and crafts">
                      Did Arts and Crafts </label>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="control-group">
                  <label id="activityCheckboxesTwo"   class="control-label">&nbsp;</label>
                  <div  class="controls">
                    <label class="checkbox">
                      <input id="otherActivity" type="checkbox" value="" id="otherActivity">
                      Other </label>
                    <div id="otherTextInputDiv">
                      <input type="text" id="otherTextInput" value="" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!--/row -->
        
          
         <legend>Eating</legend>
            <div class="row-fluid">
            
            <div class="span6">
                <label class="control-label">Breakfast</label>
                <div id="slider"></div>
                <label class="control-label">Lunch</label>
                <div id="slider2"></div>
                <label class="control-label">Snack</label>
                <div id="slider3"></div>
              </div>
            </div>
            </div>
             <legend>Attitude</legend>
            <div class="row-fluid">
           
            <!--/span-->
              <div class="span6">
                <div class="control-group">
                  <label class="control-label">Today I was:</label>
                  <div class="controls">
                    <select id="personalityList"  multiple="multiple" style="width:300px" required="true">
                      <option></option>
                      <option value="1">Helpful</option>
                      <option value="2">Not Myself</option>
                      <option value="3">Sad</option>
                      <option value="4">Happy</option>
                      <option value="5">Friendly</option>
                      <option value="6">Silly</option>
                      <option value="7">Curious</option>
                      <option value="8">Sleepy</option>
                      <option value="9">Quiet</option>
                      <option value="10">Chatty</option>
                      <option value="11">Teary</option>
                      <option value="12">Cranky</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
            <!--/row -->
             <legend>Sleep</legend>
            <div class="row-fluid">
           
            <div id="sleepyDiv" class="span2">
                    <label id="sleepy" required="true">I slept from:</label>
                    <div class="input-append bootstrap-timepicker">
                      <input id="timepicker1" type="text" class="input-small" required="true">
                      <span class="add-on"><i class="icon-time"></i></span> </div>
                       
                  </div>
                  <div id="sleepyDiv2" class="span4">
                    <label id="sleepy2">to:</label>
                    <div class="input-append bootstrap-timepicker">
                      <input id="timepicker2" type="text" class="input-small" required="true">
                      <span class="add-on"><i class="icon-time"></i></span> </div>
                  </div>
            	
            </div>
            <div class="row-fluid">
              <div class="span6">
            <div class="control-group">
		                  <label class="control-label">&nbsp;</label>
		                  <div class="controls">
		                    <label id="sleepy3"  class="checkbox">
		                      <input type="checkbox" value="" id="notSleepy">
		                      I was not sleepy! </label>
		                  </div>
                		</div>
                		</div>
              <!--/span-->
              
            </div>
            <!--/row-->
             <legend>Potty</legend>
            <div class="row-fluid">
            <div class="span6">
            <label>Undergarment fashion:</label>
             <div class="control-group radio">
		       <div class="controls">
		       <label><input type="radio" name="optionsRadios3" id="diapersCheckbox" value="diapers" checked/>diapers</label>
		       <label><input type="radio" name="optionsRadios3" id="underwearCheckbox" value="underwear" />underwear</label>
	            </div>
		       </div>
             </div>
              <div class="span6">
               <label>Potty Mode:</label>
             <div class="control-group radio">
		       <div class="controls">
		       <label><input type="radio" name="optionsRadios2" id="pottyTrainingCheckbox" value="Potty Training" />In Training</label>
		       <label><input type="radio" name="optionsRadios2" id="naCheckbox" value="N/A" checked/>N/A or already trained</label>
	            </div>
		       </div>
             </div>
            </div>
           <div class="row-fluid">
           <div id="pottyEventTable">
           </div>
            
                  <div class="span2"> <label>&nbsp;</label><a data-toggle="modal" class="btn btn-small" role="button" href="#pottyTrainingTable">Potty Event �</a>
                    <div aria-hidden="true" aria-labelledby="pottyTrainingTable" role="dialog" tabindex="-1" class="modal hide fade" id="pottyTrainingTable">
                      <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">�</button>
                        <h3 id="leadTimeLabel">Potty Event:</h3>
                      </div>
                      <div class="modal-body">
	                  <div class="row-fluid">
		                   <div id="pottyTimeSelectorDiv" class="span4">
		                    <label id="pottyTimeSelector">New Potty Event Time:</label>
		                    <div class="input-append bootstrap-timepicker">
		                      <input id="timepicker3" type="text" class="input-small" required="true">
		                      <span class="add-on"><i class="icon-time"></i></span> </div>
		                  </div>
	                  </div>
	                  <div class="row-fluid">
	                   <div class="span12">
	                   <div class="control-group checkbox">
	                   	<div class="controls">
	                   		<div><label><input type="checkbox" name="options4" id="peeBox" value="option1"/> Pee </label></div>
		                  		<div><label><input type="checkbox" name="options4" id="pooBox" value="option1" /> BM </label></div>
	                   	</div>
	                   </div>
	                  	<div id="wetBoxDiv"><label class="radio inline"><input type="radio" name="options" id="wetBox" value="Wet" /> Wet </label>
		                  	<label class="radio inline"><input type="radio" name="options" id="dryBox" value="Dry" /> Dry </label>
		                </div>     	
	                  </div>
	                 
	                  </div>
	                  <div class="row-fluid">
	                  <div class="span6">
	                  	<div class="control-group checkbox">
	                  		<div class="controls">
	                  		<div><label><input type="checkbox" name="options4" id="accidentBox" value="option1"/> I had an accident </label></div>
	                  		<div><label><input type="checkbox" name="options4" id="triedBox" value="option1" /> Tried </label></div>
	                  		</div>
	                  		</div>
	                  </div>
	                  </div>
                      </div>
                      <div class="modal-footer">
                        <button aria-hidden="true" data-dismiss="modal" onclick="javascript:addPottyEvent(event);" class="btn">OK</button>
                      </div>
                    </div>
                  </div>
            </div>
        
        </div>
       
        <!-- #second_step -->
        <div id="second_step">
        <legend>Incidentals and Comments</legend>
          <div class="row-fluid">
              <div class="span6">
                <div class="control-group">
                  <label class="control-label">Needed Items:</label>
                  <div class="controls">
                    <select id="neededItemsList" name="neededItemsList" multiple="multiple" style="width:300px" required="true">
                      <option></option>
                      <option value="1">Diapers</option>
                      <option value="2">Wipes</option>
                      <option value="3">Extra Clothes</option>
                      <option value="4">Sheet</option>
                      <option value="5">Blanket</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="span6">
              	<div class="control-group">
                	<label class="control-label">Teachers' Comments</label>
                	<div class="controls">
                		<textarea placeholder="Today we ..." rows="6" id="teacherComments" class="field span12" required="true"></textarea>
                	</div>
                </div>
              </div> 
          </div>
        </div>
               
             
              <div class="row-fluid">
              	<div class="span12 pull-right">
              	<div class="pull-right"><a class="btn" role="button" href="javascript:doSave();"><i class="icon-list-alt"></i>&nbsp;Save</a> <a id="submitBtn" class="btn btn-success" role="button" href="javascript:doSubmit();">Submit �</a></div>
              	</div>
              </div>
             
            </div>
          </div>
          </div>
          </form><!--/mainForm--> 
        </div><!--/end container Div -->
      </div><!--/end Wrapper Div -->
  
<script type="text/javascript" src="<c:url value="resources/js/jquery-1.9.0.min.js"/>"></script> 
<script type="text/javascript" src="<c:url value="resources/js/bootstrap.min.js"/>"></script> 
<script type="text/javascript" src="<c:url value="resources/js/jquery-ui-1.10.0.custom.min.js"/>"></script> 
<script type="text/javascript" src="<c:url value="resources/js/modernizr-2.6.2.min.js"/>"></script> 
<script type="text/javascript" src="<c:url value="resources/js/bootstrap-typeahead.js" />"></script> 
<script type="text/javascript" src="<c:url value="resources/js/select2.js"/>"></script> 
<script type="text/javascript" src="<c:url value="resources/js/bootstrap-datepicker.js"/>"></script> 
<script type="text/javascript" src="<c:url value="resources/js/bootstrap-timepicker.js"/>"></script> 


<script type="text/javascript">

var warn = true;
var isValid = false;
	$(document).ready(function(){
			        	  var d = new Date();

			        	  var month = d.getMonth()+1;
			        	  var day = d.getDate();

			        	  var output = ((''+month).length<2 ? '0' : '') + month  + '/'+ 
			        	   ((''+day).length<2 ? '0' : '') + day +
			        	  	'/' + d.getFullYear(); 
			        	 
			        	 
			        	 $("#warnBox").hide();
			        	 $("#errorBox").hide();
			        	 $('#datepicker').datepicker('setValue', d);
			        	
			        	$("#childrenList").select2({ 
			        	    placeholder: "Select a Child"
			        		});
			        	
			        	$("#roomList").select2({ 
			        	   disabled:true
			        		}).select2("disable"); 
			        	
			        	
			        	$("#teachersList").select2({ 
			        	    placeholder: "Select Teachers"
			        		});
			        	
			        	$("#neededItemsList").select2({ 
			        	    placeholder: "Select Needed Items"
			        		});
			        	
			        	$("#personalityList").select2({ 
			        	    placeholder: "Select a Personality"
			        		});
			        	 
			        	
			        	 $('#timepicker1').timepicker({
			        	     //defaultTime: false
			        	 });
			        	 $('#timepicker2').timepicker({
			        	    // defaultTime: false
			        	 });
			        	 
			        	 $('#timepicker3').timepicker({
			        	    // defaultTime: false
			        	 });
			        	 
			        	 $('#otherActivity').click(function(event){
			        	    
			        	     $('#otherTextInputDiv').toggle('fast');
			        	     if(!$("#otherActivity").is(":checked")){
			        	     	$("#otherTextInput").val("");
			        	 	}
			        	     
			        	 });
						 
						  $('#notSleepy').click(function(event){
			        	    
			        	     $('#sleepyDiv').toggle();
							 $('#sleepyDiv2').toggle();
							
			        	 });
	
	 					$('#otherTextInputDiv').hide();
	
	 					var slider =  $( "#slider" ).slider({
	 					    range: "min"
	 					    }); 
	 					var options = [ "25%", "50%", "75%", "100%"];
	 					
	 					//how far apart each option label should appear
	 					var width = slider.width() / (options.length);

	 					//after the slider create a containing div with p tags of a set width.
	 					slider.after('<div style="width:'+width+'" ><span style="width:' + width + 'px;display:inline-block;text-align:right">' + options.join('</span><span style="width:' + width + 'px;display:inline-block;text-align:right">') +'</span></div>');
	 					//slider.after('<div class="ui-slider-legend"><p style="width:' + width + 'px;">' + options.join('</p><p style="width:' + width + 'px;">') +'</p></div>');
	 					
	 					var slider2 =  $( "#slider2" ).slider({
	 					    range: "min"
	 					    }); 
	 					slider2.after('<div style="width:'+width+'" ><span style="width:' + width + 'px;display:inline-block;text-align:right">' + options.join('</span><span style="width:' + width + 'px;display:inline-block;text-align:right">') +'</span></div>');
	 					

	 					var slider3 =  $( "#slider3" ).slider({
	 					    range: "min"
	 					    }); 
	 					slider3.after('<div style="width:'+width+'" ><span style="width:' + width + 'px;display:inline-block;text-align:right">' + options.join('</span><span style="width:' + width + 'px;display:inline-block;text-align:right">') +'</span></div>');
	 					
	 					
	 					
	 					$("#optionsRadios3").change(function(){
	 					   var $this = $(this);
	 					    if ($this.val()== "diapers") {
	 						console.log("diapers checked");
	 							$("#wetBoxDiv").show();
		 					   	$("#dryBoxDiv").show();
	 					    }
	 					    else{
	 						console.log("diapers unchecked");
		 						$("#wetBoxDiv").hide();
		 					   	$("#dryBoxDiv").hide();
	 					    }
	 					  
	 					   
	 					});
	 					

		
		

		
		

		$('#submit').click(function(event) {
			
			//alert(this.id);
			
			var success = false;
			var $option =  $("input:radio[name ='optionsRadios']:checked").val();
			
			if($option === "")
				return; 
			//alert($option);
			$.ajax({
			    type: "POST",
			    url: 'SetterServlet',
			    contentType : "text/xml",
			    data: { service : $option, id : "TR_SERVICE"},
			    success: function(data,status,xhr){
			        alert("Hurrah!");
			        success = true;
			    
			        $('#formContainer').load('test.html',function(response, status, xhr) {
			        	  if (status == "error") {
			        		    var msg = "Sorry but there was an error: ";
			        		    $("#formAlertMessage").html(msg + xhr.status + " " + xhr.statusText);
			        		  }
			        	  
			        	}
					);
			    },
			    error: function(xhr, status, error){
			        //alert("Error!" + xhr.status + " : " + status + " : " + error);
			       var alertBox = $('#formAlertMessage');
			       
					$('#formAlertMessage div').html('');
			    	  
			       var msg = $('<div id="message"><strong>Attention!</strong> You do not have permission to continue with this request.<button id=\"overide\" class=\"btn btn-mini btn-danger pull-right\" type=\"button\">overide</button></div>');
			       
			       msg.appendTo(alertBox);
			        alertBox.show();
			        $('#overide').click(function(){
			        	
			        	success = true;
			        	window.location.hash = "~STEP_1";
			        	//console.log(location.hash);
			        	 $('#formContainer').load('test.html',function(response, status, xhr) {
				        	  if (status == "error") {
				        		    var msg = "Sorry but there was an error: ";
				        		    $("#formAlertMessage").html(msg + xhr.status + " " + xhr.statusText);
				        		  }
				        	  $('#formAlertMessage').hide();
				        	  $('#first_step').show();
				        	
				        	  
				        	 // var d= Date();
				        	  //$('#datepicker').datepicker('setValue', d);
				        	  //$('#datepicker').datepicker();
				        	  
				        	
				        	  $(':button').click(function(event){
					  				
					  				
					  				switch(this.id)
					  				{
					  				case "next":
					  					alert(this.id);
					  					getNextItem(currentStep);
					  					break;
					  					
					  				case "save":
					  					doSaveForm();
					  					break;
					  					
					  					default:
					  					
					  				}
					  				
					  				
				  				});
				        	  
				        	  
				        	  
				        	  
				        		}
			        	
							);
					});
			    },
			    complete: function(){
			        if(!success){
			             //alert('Intalio says: You must not be allowed to continue with this workflow!');
			        }
			    },
			    dataType: "xml"
			});
			
				
			
			  
			});
		
	
	});
	function addPottyEvent(evt){
	   // console.log("new potty event @"+ $("#timepicker3").val());
	   var msg = "";
	   
	   var timeMsg = "@" + $("#timepicker3").val();
	   msg += timeMsg;
	   
	    var triedMsg  = "";
	    if($("#triedBox").is(":checked")){
			triedMsg = "I tried to go Potty";
			msg+=" " + triedMsg;
	    }
	    
	    var wetMsg = "";
	    if($("#wetBox").is(":checked")){
			wetMsg = "my diaper was wet";
			msg+= " " +wetMsg;
	    }
	    else if($("#dryBox").is(":checked")){
		 	var dryMsg = "";
		    
				dryMsg = "my diaper was checked but I was dry";
				msg += " " + dryMsg;
		    
	    }
	   
	    
	    var peeMsg = "";
	    if($("#peeBox").is(":checked") && $("#diapersBox").is(":checked")){
			peeMsg = "I had done a pee";
			msg += " " + peeMsg;
	    }
	    else if($("#peeBox").is(":checked") && !$("#diapersBox").is(":checked")){
			peeMsg = "I went pee";
			msg += " " + peeMsg;
	    }
	    
	    var bmMsg = "";
	    if($("#pooBox").is(":checked") && $("#diapersBox").is(":checked")){
			bmMsg = "I had done a BM";
			msg += " " + bmMsg;
	    }
	    else if ($("#pooBox").is(":checked") && !$("#diapersBox").is(":checked")){
			bmMsg = "I made a  BM";
			msg += " " + bmMsg;
	    }
	    
	    var accidentMsg = "";
	    if($("#accidentBox").is(":checked")){
		
			accidentMsg = "it was an accident";
			msg += " " +  accidentMsg;
	    }
	    
	    var pottyEventItem = $('<div class="alert alert-info"><button type="button" class="close" data-dismiss="alert">&times;</button><strong>Potty Event- </strong>'+msg+'</div>');
		pottyEventItem.appendTo("#pottyEventTable");
		
		//reset potty event form:
		$("#pottyTrainingTable input").attr('checked', false);
	}
	function doSave()
	{
	    //TODO: Write code that commits form data to backend
	    //saveForm();
		//call ajax (handleResult, handleError);
	    alert("Save the form");
	}
	function doSubmit()
	{
		validateForm();	
	}
	function validateForm() {
	   
	    if(warn) {
	    	doCheckWarning();
	    }
	  
	   $("#errorTextContainer").html("");
	   var hasError = false;
	   hasError = validateItem();
	  
	   	if(hasError===false){
			$("#errorTextContainer").html("");
			$("#errorBox").hide();
			
			if(!warn){
				submitFormData();
			}
		}
	   else{
		 	$("#errorBox").show();
		}
	   	 $("html, body").animate({ scrollTop: 0 }, "slow");
	 
	}
	function submitFormData()
	{
	  //TODO write saveForm
		//saveForm();
	 	alert("Submitting Form to Back end!!");  
	 	//$("#submitBtn").removeClass("btn-success");
	 	$("#submitBtn").addClass("disabled");
	
		 
		 //get teachers list from dropdown
		 var tl = $("#teachersList option:selected").map(function(){return this.text});
		 
		 //get daily activities items
		 var dl = $("#activityCheckboxesOneDiv label input:checked").map(function(){return this.value});
		 activityString = dl.get().join("|");
		 if($("#otherActivity").is(':checked')){
		     
		     var otherActString = $("#otherTextInput").val();
		     activityString = (activityString==="") ? otherActString : activityString+ "|"+otherActString;
		 }
		 
		 //get needed items
		 var nl = $("#neededItemsList option:selected").map(function(){return this.text});
		 
		 var al = $("#personalityList option:selected").map(function(){return this.text});
		 console.log("attitude List: " + al.get().join("|"));
		 
		 //get sleep status
		 var sleepMessage = "";
		 if(!$("#notSleepy").is(':checked')){
		     sleepMessage = "I slept from: " + $("#timepicker1").val() + " to: "+ $("#timepicker2").val()+ ".";
		 }
		 else sleepMessage = "I was not sleepy.";
		
		 console.log("sleep message: " + sleepMessage);
		 console.log
		
		 var creatureReport = {
			 "status" : "SUBMITTED",
			 "student" : $("#childrenList option:selected").text(),
			 "date" : $("#datepicker").data('date'),
			 "teachers" : tl.get().join("|"),
			 "dailyActivity" : activityString,
			 "neededItems" : nl.get().join("|"),
			 "attitudes" : al.get().join("|"),
			 "sleepMessage" : sleepMessage,
			 "percentageBreakfastComplete" : $('#slider').slider("option", "value"),
		 	 "percentageLunchComplete" : $('#slider2').slider("option", "value"),
		 	 "percentageSnackComplete" : $('#slider3').slider("option", "value"),
		 	 "pottyEvents" : $("#pottyEventTable div").text().split("�").join("|"),
		 	 "teacherComments" : $("#teacherComments").val()
			 
		 }
	 	 	 	 
// 	 	 $.ajax({
// 	 	        type: "POST",
// 	 	        async: true,
// 	 	        data: JSON.stringify(creatureReport),
// 	 	        dataType: "JSON",
// 	 	        url: '<c:url value="/report/SaveReport"/>',
// 	 	        contentType: "application/json",
// 	 	        beforeSend: function(x) {
// 	 	            if (x && x.overrideMimeType) {
// 	 	              x.overrideMimeType("application/j-son;charset=UTF-8");
// 	 	            }
// 	 	        },
// 	 	        success: function(result) {
// 	 	 	   		//alert(result.date + " : " + result.student);
// 	 	 	   		//TODO: Reset form, 
// 	 	 	   		console.log(result);
// 	 	 	   		//resetForm();
// 	 	          },
// 	 	       error: function (request, status, error) {
// 	 		   		alert(status + " : " + error);
// 	 		        //alert(request.responseText);
// 	 		   		//resetForm();
// 	 		    }
// 	 	    });
		 var dat = JSON.stringify(creatureReport);
		 $.ajax({
	                url : '<c:url value="/report/save"/>',
	                type : "POST",
	                traditional : true,
	                contentType : "application/json",
	                dataType : "json",
	                data : dat,
	                success : function (response) {
	                    alert('success ' + response.status);
	                },
	                error : function (request, status, error) {
			   		alert(status + " : " + error);
		 		        //alert(request.responseText);
		 		   		//resetForm();
		 		    }
	            });
		 
		 
	}
	function resetForm(){
	  
		 $("#childrenList").select2("data", null);
		 $("#teachersList").select2("data", null);
		 $("#personalityList").select2("data", null);
		 $("#neededItemsList").select2("data", null);
		 $("#timepicker1").val("");
		 $("#timepicker1").timepicker('setTime', 'current');
		 $("#timepicker2").val("");
		 $("#timepicker2").timepicker('setTime', 'current');
		 $("#timepicker3").val("");
		 $("#timepicker3").timepicker('setTime', 'current');
		 $("#notSleepy").attr("checked", false);
		 $("#gymActivity").attr("checked", false);
		 $("#outsideActivity").attr("checked", false);
		 $("#artsActivity").attr("checked", false);
		 $("#otherActivity").attr("checked", false);
		 $("#otherTextInput").val("");
		
		 $("#slider").slider("value", $("#slider").slider("option", "min") );
		 $("#slider2").slider("value", $("#slider2").slider("option", "min") );
		 $("#slider3").slider("value", $("#slider3").slider("option", "min") );
		
	}
	function cb(data){
	    
	    alert( data.user.name);
	   // myTweets = dataToObj;
	    //document.write(myTweets.user.name + " says:<br/>\"" + myTweets.text + "\"");
	}
	function validateItem(){
	    var hasError= false;
	    $('*[required="true"]').each(function(i, el){
	    	
	    switch($(el).get(0).tagName){
	    	case "LABEL":
	    	    if($(el).attr('id') === "sleepy")
			    {
	    			if($("#timepicker1").val()==="" || ($("#timepicker1").val()=== $("#timepicker2").val()) && !$("#notSleepy").is(":checked")){
		    			var msg = "Error: You must indicate when a child took a nap or else indicate that he/she did not."
					    	
					    var p = $('<p>'+msg+'</p>');
					    p.appendTo("#errorTextContainer");  
					    $(el).css('border', '1px solid #f00');
					    hasError = true;
	    			}
	    			else{
	    			    $(el).css('border', 'none');
	    			}
	    			    
	    			
			    		
			    }
	    	    else
	    		{
	    		    		
			    	if(!didActivity()){
				    	var msg = "Error: You did not select an activity."
				    	
					    var p = $('<p>'+msg+'</p>');
					    p.appendTo("#errorTextContainer");  
					    $(el).css('border', '1px solid #f00');
					    hasError = true;
			    	}
			    	else if($("#otherActivity").is(":checked") && $("#otherTextInput").val().trim()===""){
						var msg = "Error: You did not enter any description for 'other' activity."
					    var p = $('<p>'+msg+'</p>');
					    p.appendTo("#errorTextContainer");  
					    $(el).css('border', '1px solid #f00');
					    hasError = true;
				    }
			    	else{
			    		$(el).css('border', 'none');
			    	}
			    	console.log($("#otherActivity").is(":checked"));
	    		}
			break;
			
		    case "SELECT":
			var select = $(el).attr('id');
			//if(select == "childrenList" || select == "neededItemsList" || select == "teachersList" || select == "personalityList")
			//handleSelect2ComboboxValidation(select);
			var tmp = $("#" + select).select2("data");
			
			if(select == "childrenList" && (tmp == null || tmp.length == 0))
			{
			   
			    var msg = "Error: You did not select a child."
			    var p = $('<p>'+msg+'</p>');
			    p.appendTo("#errorTextContainer");  
			    $("#s2id_"+select).css('border', '1px solid #f00');
			    hasError = true;
			      
			}
			else if(select == "teachersList" && (tmp == null || tmp.length == 0))
			{
			    var msg = "Error: You did not select a teacher."
			    var p = $('<p>'+msg+'</p>');
			    p.appendTo("#errorTextContainer");  
			    $("#s2id_"+select).css('border', '1px solid #f00');
			    hasError = true;
			      
			}
			
			else if(select == "personalityList" && (tmp == null || tmp.length == 0))
			{
			    var msg = "Error: You did not select a personality."
			    var p = $('<p>'+msg+'</p>');
			    p.appendTo("#errorTextContainer");  
			    $("#s2id_"+select).css('border', '1px solid #f00');
			    hasError = true;
			      
			}
			else{
				$("#s2id_"+select).css('border', 'none');
			}
			break;
			
		    case "TEXTAREA":
				//$(el).css('border', '1px solid #f00');
				if($(el).val().trim()==="")
				{
				    var msg = "Error: You did not enter teacher comments."
					var p = $('<p>'+msg+'</p>');
					p.appendTo("#errorTextContainer"); 
					$(el).css('border', '1px solid #f00');
					hasError = true;
				}
				else{
				    $(el).css('border', 'none');
				}
			break;
			
		    case "INPUT":
			var input = $(el).attr('id');
			//$(el).css('border', '1px solid #f00');
			if($(el).val().trim()==="" && input==="")
			{
			    var msg = "Error: You did not enter teacher comments."
				var p = $('<p>'+msg+'</p>');
				p.appendTo("#errorTextContainer"); 
				$(el).css('border', '1px solid #f00');
				hasError = true;
			}
			else{
			    $(el).css('border', 'none');
			}
		break;
			
		   
		
			default:
		    break
	    }
	    
	    });
	   
	    return hasError;
	}
	function didActivity(){
	    
	    /*console.log($("#gymActivity").is(':checked'));
	    console.log($("#outsideActivity").is(':checked'));
	    console.log($("#artsActivity").is(':checked'));
	    console.log($("#otherActivity").is(':checked'));
	    console.log($("#otherTextInput").val());*/
	    if($("#gymActivity").is(':checked') || $("#outsideActivity").is(':checked') || $("#artsActivity").is(':checked') || $("#otherActivity").is(':checked') )
	    return true;
	    else return false;
	}
	function handleSelect2ComboboxValidation(select)
	{
	    
	    var tmp = $("#" + select).select2("data");
	    /*for(var i=0; i < tmp.length; i++)
		{
			console.log(tmp[i].text);
		}*/
		if(tmp == null || tmp.length == 0)
		{
		    switch(select)
		    {
			    case "childrenList":
				$("#s2id_"+select).css('border', '1px solid #f00');
				//$("#s2id_"+select).attr('title', "Please select a child from the dropdown");
				$("#s2id_"+select).alert();
				/*$("#s2id_"+select).popover({
				    html: "true",
				    title: "<strong>Select a Child</strong>",
				    content: "Please select a child from the dropdown",
					trigger: "hover"    
				});
				$("#s2id_"+select).click(function(){
				    $(this).popover('hide');
				    $(this).popover('disable');
				});*/
				break;
				
			    default:
				    break;
		    }
	    	
		}
	}
	
	function doCheckWarning(){
	  //clear warn/error headers:
		  $("#warningTextContainer").html("");
		  var hasWarning = false;

		 
		  
		  var val = $('#slider').slider("option", "value");
		  if(val===0)
		  {
		      var msg = "Warning: No breakfast eaten?"
		      var p = $('<p>'+msg+'</p>');
		  	  p.appendTo("#warningTextContainer");  
		      hasWarning = true;
		  }
		  
		  var val2 = $('#slider2').slider("option", "value");
		  if(val2===0)
		  {
		      var msg = "Warning: No lunch eaten?"
		      var p = $('<p>'+msg+'</p>');
		  	  p.appendTo("#warningTextContainer");  
		      hasWarning = true;
		  }
		  
		  var val3 = $('#slider3').slider("option", "value");
		  if(val3===0)
		  {
		      var msg = "Warning: No snack eaten?"
		      var p = $('<p>'+msg+'</p>');
		  	  p.appendTo("#warningTextContainer");  
		      hasWarning = true;
		  }
		  

		  if($("#pottyEventTable").children().size() === 0){
		      var msg = "Warning: You did not list any potty events for today."
			     var p = $('<p>'+msg+'</p>');
			     p.appendTo("#warningTextContainer"); 
		      hasWarning = true;
		  }
		  
		  /* Do time check
		  *
		  * uh...  would much rather
		  * just convert time to 24 hours
		  */
		  var time1 = $("#timepicker1").val();
		  time1 = convertToMeridian(time1);
		  var time2 = $("#timepicker2").val();
		  time2 = convertToMeridian(time2);
		  var ind = compareTime(time1,time2);//returns -1 if A<B, 0 if A==B, and 1 if A>B
		 // console.log("ind: " + ind);
		 if(ind>0){
		     //console.log("gotta be something wrong, time is long");
		     var msg = "Warning: The start and end time of the nap appears to be quite long."
		     var p = $('<p>'+msg+'</p>');
		     p.appendTo("#warningTextContainer");  
		     hasWarning = true;
		 }
		
		  if(hasWarning===false)
		  {
		      $("#warningTextContainer").html("");
		      $("#warnBox").hide();
		      warn = false;
		  }
		  else{
		 	$("#warnBox").show();
		  }
	}
	function convertToMeridian(time){
	     
		  var dayPeriod1 = time.split(" ")[1];
		  var hour1 = parseInt(time.split(":")[0]);
		  var min1 = parseInt(time.split(":")[1]);
		  
		
		  if(dayPeriod1==="PM" && hour1 !== 12){
		      hour1+=12;
		  }
		  else if(dayPeriod1==="AM" && hour1 === 12){
		  	hour1 = 0;
		  }
		  //console.log(hour1+":"+min1);
		  return hour1+":"+min1;  
	}
	function compareTime(A,B)
	{
	    var tmpA = A.split(":");
	    var hoursA = parseInt(tmpA[0]);
	    var minsA = parseInt(tmpA[1]);
	    
	    var tmpB = B.split(":");
	    var hoursB = parseInt(tmpB[0]);
	    var minsB = parseInt(tmpB[1]);
	    if(hoursA > hoursB)
		{
			return 1;
		}
	    else if(hoursA < hoursB)
		{
			return -1;
		}
	    else{
			if(minsA === minsB){
				return 0;
			}
			else if(minsA > minsB){
					return 1;
			}
			else if(minsA < minsB){
			    return -1;
			}
			
	    }
		
	}
	function dismissWarning(){
	    console.log("dismissWarning called");
	    $("#warningTextContainer").html("");
	    $("#warnBox").hide();
	    warn = false;
	}
	</script>
</body>
</html>