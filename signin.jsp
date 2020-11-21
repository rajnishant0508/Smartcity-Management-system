
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>Signin Template � Bootstrap</title>
	<script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="604363038445-65f3t60727ed14blijjqhtbcptqs2dj7.apps.googleusercontent.com">
	
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/sign-in/">
    <script type="text/javascript">
	  function validate(){
	   var email=document.getElementById("inputEmail").value;
	   var pwd=document.getElementById("inputPassword").value;
	   if(email.trim()==""){
	      document.getElementById("em").innerHTML="*please enter a valid Email ID";
		   return false;  
	   }else if(email.indexOf(".")==-1){
	       document.getElementById("em").innerHTML="*please enter a valid Email ID";
		   return false;
	   }else if(pwd.trim()==""){
	      document.getElementById("pw").innerHTML="*Please enter a valid Password";
		    return false; 
	   }else{
	       return true;
	   }
	   }
	
	
	
	
	</script>
    
 


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }
	  .form-control{
	    width: 25%; 
		margin: 10px;
	  }
	  .btn-block{
	    width: 25%;
	  }
	  .text-center{
	    margin-top:10%;
		background: #ECF0F1;
	  }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
    <form onSubmit="return validate()" class="form-signin" action="login.jsp">
  
  <center>
  <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
  <label for="inputEmail" class="sr-only">User Name</label>
  <input type="email" name="t1" id="inputEmail" class="form-control" placeholder="Email Address">
  <span id="em" style="color:#FF0000;"> </span>
  <label for="inputPassword" class="sr-only">Password</label>
  <input type="password" name="t2" id="inputPassword" class="form-control" placeholder="Password">
  <span id="pw" style="color:#FF0000;"> </span>
  <div class="checkbox mb-3">
    <label>
      <input type="checkbox" value="remember-me"> Remember me
    </label>
  </div>
  <button class="btn btn-lg btn-primary btn-block" type="submit" style="color:#FFFFFF; text-decoration:none;">Sign in</a></button>
  <%
    try{
	   String z=request.getParameter("a1");
	   if(z.equalsIgnoreCase("Invalid ID and Password")){
	     out.print("<font color=red size=3>Invalid ID and Password</font>");
	   }
	}catch(Exception e){   }
  %>
  <br><br><label><a href="forget.jsp" style="text-decoration:none; color:#000000;">Forget Password</a></label>
  <br><label><a href="signup.jsp" style="text-decoration:none;">New to Smartcity BBS? Create an account</a></label>
  
  
  <!-- google Signin Component -->
  <!-- <div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
      <img id="myImg"><br>
      <p id="name"></p>
      <div id="status">
   </div>
   <script type="text/javascript">
      function onSignIn(googleUser) {
      // window.location.href='success.jsp';
      var profile = googleUser.getBasicProfile();
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden";
      document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=success.jsp?email='+email+'&name='+name+'/>Continue with Google login</a></p>'
   }
   </script>
   <button onClick="myFunction()">Sign Out</button>
   <script>
      function myFunction() {
      gapi.auth2.getAuthInstance().disconnect();
      location.reload();
   }
   </script>-->
  <!-- Google signin End -->
  
  
  <p class="mt-5 mb-3 text-muted">&copy; 2017-2019</p>
  </center>
</form>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
