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


</style> 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/database_project/scripts/external/font-awesome/css/font-awesome.min.css" />


<body>
<spring:url value="http://google.com" var="G-value" />
<a href="${G-value}">Google page</a>
<spring:url value="http://google.com" var="G-value2" />Hello
<a href="${G-value2}">Google page 2</a>

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

</body>
</html>