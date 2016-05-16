<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<style>

#login-lines {
    color: maroon;
    margin-left: 40px;
	font-family:Arial;
	text-align: center;
	font-weight:bold;
	font-size: 16px;
}

#introduction {
    color: maroon;
    margin-left: 40px;
    margin-right: 40px;
	font-family:Arial;
	text-align: justify;
	font-weight:bold;
	font-size: 14px;
}


@font-face {
    font-family: 'socialfont';
    src: url('http://mediaashley.com/MyFont.ttf') format('truetype');
    font-weight: normal;
    font-style: normal;

}

#first-frame {
  background: #ddd;
	/*width: 150%;*/
  margin: 30px;
}



select {
	width:330px;
  height:30px;
  /*display:inline-block;*/
  font-family:Arial, "Helvetica", sans-serif;
  font-size:16px;
  font-weight:bold;
  color:#fff;
  text-decoration:none;
  text-transform:uppercase;
  text-align:left;
  text-shadow:1px 1px 0px #07526e;

  margin-left:auto;
  margin-right:auto;
border: 2px;
border-style: inset;
border-color:#0000CC;
  position:relative;
  /*cursor:pointer;*/
  background: #109bce;
  background-image: linear-gradient(bottom, rgb(14,137,182) 0%, rgb(22,179,236) 100%);
}


	Deep_maroon{
font:normal 16pt Arial;
color:	#842B00;
font-weight:bold;
}

</style> 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/database_project/scripts/external/font-awesome/css/font-awesome.min.css" />


<body>





<div id="first-frame">

<br><br>


<h3 style= "font:normal 40pt Arial; 
	color:#FFFFFF; text-shadow: 0 1px 0 #ccc, 0 2px 0 #c9c9c9, 0 3px 0 #bbb,
		0 4px 0 #b9b9b9, 0 5px 0 #aaa, 
		0 6px 1px rgba(0,0,0,.1), 
		0 0 5px rgba(0,0,0,.1), 
		0 1px 3px rgba(0,0,0,.3),
		0 3px 5px rgba(0,0,0,.2), 0 5px 10px rgba(0,0,0,.25),
		0 10px 10px rgba(0,0,0,.2),
		0 20px 20px rgba(0,0,0,.15);
	text-align: center;
	">
	
	Category Approaches For Chemical Safety
</h3>

<br><br><br><br>
<div id="login-lines">
	<div id="incorrect-password">&nbsp;	&nbsp;	&nbsp;	
		Sorry, user name and/or Password is incorrect.
	</div><br><br>
	User name:	<input type="text" id="Username">
	<br><br>
	Password:	&nbsp;	<input type="password" id="password-input">
	<br><br>
</div>
	<button id="password-submission" style="
  		width:130px;
  		height:60px;
  		display:inline-block;
  		font-family:Arial;
  		font-size:16px;
  		font-weight:bold;
  		color:#FFFFFF;
  		text-decoration:none;
  		text-transform:uppercase;
  		text-align:center; /*center;*/
  		text-shadow:1px 1px 0px #07526e;
  		padding-top:6px;
  		margin-left:auto;
  		margin-right:auto;
  		left:47%;
  		position:relative;
  		/*cursor:pointer;*/
  		border: none;
  		background: #109bce;
  		background-image: linear-gradient(bottom, rgb(14,137,182) 0%, rgb(22,179,236) 100%);
  		border-radius: 5px;
  		box-shadow: inset 0px 1px 0px #2ab7ec, 0px 5px 0px 0px #07526e, 0px 10px 5px #999;">
  
  Submit</button>
	<br><br>

<br><br><br><br><br><br><br>
	<div id="introduction">
		&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	This web site is part of the New Technologies to 
		Underpin Category Approaches and Read-across in Regulatory Programmes at Texas A&M University.
		One of the most challenging areas in regulatory toxicology is the assessment of UVCBs 
		(Unknown or Variable composition, Complex reaction products and Biological materials). 
		UVCBs present difficult problems for science-informed regulatory decisions. Regulators and 
		registrants have a common interest to understand how to evaluate UVCBs under current 
		chemical regulatory policy and ensure that there is not a large scale underestimation or 
		overestimation of hazard. This project tackles the challenge of UVCBs and will provide 
		regulators and registrants with a cost-effective integrative approach to solve the 
		challenges of UVCBs and will define the best practical strategies for the read-across and 
		grouping approaches. This web site is created and maintained by 
		Dr. Ivan Rusyn's Lab. For questions about this site, please contact 
		dliu(at) cvm(dot) tamu(dot) edu.
	</div>

<br><br><br><br>



</div><!-- End of div first-frame -->







<script>
var i = 0;
var n = 0;
var nn = 0;
var m = 0;
var mm = 0;

$('#password-submission').click(function(){
	password_input = $('#password-input').val();   	
	username_input = $('#Username').val();
	
   	// alert('password-input = ' + password_input + ', username_input = ' + username_input); 
   	
   	for (i = 0; i < 8; i++) { 
   		n = password_input.charCodeAt(i);
   		m = username_input.charCodeAt(i);
   		nn = nn + n;
   		mm = mm + m;
   		// alert("nn = " + nn + ", mm = " + mm);
   	}
   	// alert("nn = " + nn + ", mm = " + mm);
   	
   	if (nn == 463 && mm == 816) {   	
   		$("#first-frame").hide();
   		$("#second-frame").show();
   	}else {
   		// alert("User name or Password is incorrect.");
   		
   		// location.reload();
   		$("#incorrect-password").show();
   	}
});


</script>










<div id="second-frame">
<jsp:include page="fragments/header.jsp" />
<spring:url value="/profile" var="urlProfile" />
<spring:url value="/import" var="urlImport" />
<spring:url value="/export" var="urlExport" />
<spring:url value="/analysis/${projectId}" var="urlDisplayAnalysis" />
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Welcome</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <img class="img-responsive" src="http://placehold.it/1200x300" alt="">
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Services</h2>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-5x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-user fa-stack-1x fa-inverse"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <h4>My Page</h4>
                        <p>Information about your projects.</p>
                        <a href="${urlProfile}" class="btn btn-primary">GoTo</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-5x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-download fa-stack-1x fa-inverse"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <h4>Import</h4>
                        <p>Import data from csv file.</p>
                        <a href="${urlImport}" class="btn btn-primary">Goto</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-5x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-upload fa-stack-1x fa-inverse"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <h4>Export</h4>
                        <p>Export data to csv file.</p>
                        <a href="${urlExport}" class="btn btn-primary">GoTo</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <span class="fa-stack fa-5x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-bar-chart fa-stack-1x fa-inverse"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <h4>Analysis</h4>
                        <p>Analysis all data in current project.</p>
                        <a href="${urlDisplayAnalysis}" class="btn btn-primary">GoTo</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="fragments/footer.jsp" />
</div><!-- end of second frame -->
<script type="text/javascript">
	// alert("should hide.");
	$("#second-frame").hide();	
	$("#incorrect-password").hide();
	
	// alert("should hide.");
</script>
</body>
</html>