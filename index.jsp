<%
String jenkins = request.getParameter("jenkins");
String github = request.getParameter("github");
String monitoring = request.getParameter("monitoring");
String selenium = request.getParameter("selenium");
String stormrunner = request.getParameter("stormrunner");
%>
<!DOCTYPE html>


<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
    <meta name="description" content="HIT Devops Project">
    <meta name="author" content="Netanel Snir">

    <title>HIT Devops Final Project</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<style>
		body {
  padding-top: 70px;
  padding-bottom: 30px;
}

.theme-dropdown .dropdown-menu {
  position: static;
  display: block;
  margin-bottom: 20px;
}

.theme-showcase > p > .btn {
  margin: 5px 0;
}

.theme-showcase .navbar .container {
  width: auto;
}
	</style>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="/">Devops - Final Project</a>
        </div>
      </div>
    </nav>

    <div class="container theme-showcase" role="main">

	
      <div class="starter-template">
		  <div class="page-header">
			<h1>Useful links by category.</h1>
		  </div>
		  
		  <div class="row">
				<div class="col-md-8">
					<p class="lead">Please select at least one category:</p>
					  <form method="get">
						<div class="checkbox">
							<label><input type="checkbox" name="jenkins" value="Jenkins" <% if (jenkins != null) { %> checked <% } %>>Jenkins</label>
						</div>
						<div class="checkbox">
							<label><input type="checkbox" name="github" value="GitHub" <% if (github != null) { %> checked <% } %>>Git & GitHub</label>
						</div>
						<div class="checkbox">
							<label><input type="checkbox" name="monitoring" value="Monitoring" <% if (monitoring != null) { %> checked <% } %>>Monitoring</label>
						</div>
						<div class="checkbox">
							<label><input type="checkbox" name="selenium" value="Selenium" <% if (selenium != null) { %> checked <% } %>>Selenium</label>
						</div>
						<div class="checkbox">
							<label><input type="checkbox" name="stormrunner" value="Stormrunner" <% if (stormrunner != null) { %> checked <% } %>>Storm Runner</label>
						</div>
						<button type="submit" class="btn btn-primary">Query</button>
					  </form>
				</div>
				
				<div class="col-md-4">
					
				  <%				  
				  
				  if (jenkins != null || github != null || monitoring != null || selenium != null || stormrunner != null) {
				  %>
					<p class="lead">You have selected category(s):</p>
					<ul>
				  <%
					
						
					if(jenkins != null) {
						%>
						<li><h2>Jenkins Links</h2>
							<ul>
								<li><a href='http://127.0.0.1:9090'>My Jenkins Server (localhost:9090)</a></li>
								<li><a href='https://jenkins.io/doc/pipeline/tour/getting-started/'>Jenkins Tutorial</a></li>
							</ul>
						</li>
						<%
					}
					
					if(github != null) {
						%>
						<li><h2>Git & GitHub Links</h2>
							<ul>
								<li><a href='https://github.com/netanelsn/devops'>My Repository</a></li>
								<li><a href="https://confluence.atlassian.com/bitbucketserver/basic-git-commands-776639767.html">Basic Git commands</a>
							</ul>
						</li>
						<%
					}
					
					if(monitoring != null) {
						%>
						<li><h2>Monitoring Links</h2>
							<ul>
								<li><a href='http://127.0.0.1:8081'>My Monitor (localhost:8081)</a></li>
								<li><a href='https://github.com/jirkapinkas/sitemonitoring-production'>Site Monitoring</a>
							</ul>
						</li>
						<%
					}
					
					if(selenium != null) {
						%>
						<li><h2>Selenium</h2>
							<ul>
								<li><a href='https://wiki.jenkins.io/display/JENKINS/Seleniumhq+Plugin'>Seleniumhq Plugin</a></li>
							</ul>
						</li>
						<%
					}
					
					if(stormrunner != null) {
						%>
						<li><h2>Storm Runner</h2>
							<ul>
								<li><a href='https://stormrunner-load.saas.microfocus.com/home/?TENANTID=970904390&projectId=1'>My Storm Runner Load Account</a></li>
								<li><a href='https://admhelp.microfocus.com/srl/en/3.5/Content/Storm/t_JenkinsIntegration.htm?Highlight=Storm'>Storm Runner Plugin</a></li>
							</ul>
						</li>
						<%
					}
					
				  %>
					</ul>
					<br/>
					<a class="btn btn-danger btn-block" href="<%= request.getRequestURI() %>">CLEAR</a>
				  <%
				  }
				  %>
				</div>
		  </div>
        
      </div>
	   

    </div><!-- /.container -->


  </body>
</html>



