<%-- 
    Document   : header
    Created on : Jun 12, 2017, 1:23:25 PM
    Author     : Rishabh Sachan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="UTF-8">
	<title>Online-test</title>
	<link rel="stylesheet" href="css/style0.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/bootstrap.css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>     
         <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
         <link href="https://fonts.googleapis.com/css?family=Buda:300" rel="stylesheet">
         <link href="https://fonts.googleapis.com/css?family=Nosifer" rel="stylesheet">
         <link href="https://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">       
         <link href="https://fonts.googleapis.com/css?family=Pangolin" rel="stylesheet">
         <link href="https://fonts.googleapis.com/css?family=Bubbler+One" rel="stylesheet">
         <link href="https://fonts.googleapis.com/css?family=Amatic+SC" rel="stylesheet">
         <link href="https://fonts.googleapis.com/css?family=Calligraffitti" rel="stylesheet">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"><!--for social media icons-->
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <!--this is style for animation of timer-->
<style>
#div11 {
  font-size:48px;
}
</style>
<script><!-- this is a script for timer animation given at test heading-->
function hourglass() {
  var a;
  a = document.getElementById("div11");
  a.innerHTML = "&#xf251;";
  setTimeout(function () {
      a.innerHTML = "&#xf252;";
    }, 1000);
  setTimeout(function () {
      a.innerHTML = "&#xf253;";
    }, 2000);
}
hourglass();
setInterval(hourglass, 3000);
</script>
<script src="js/bootstrap.js"></script>
       
 <style>
       .font1 {font-family: 'Tangerine', serif; font-size: 48px;}
      .font2{font-family: 'Buda', cursive; }
      .font3{font-family: 'Nosifer', cursive;}
      .font4{font-family: 'Poiret One', cursive;}
      .font5{font-family: 'Pangolin', cursive;}
      .font6{font-family: 'Bubbler One', sans-serif;}
      .font7{font-family: 'Amatic SC', cursive;}
      .font8{font-family: 'Calligraffitti', cursive;}
#btn {
    border: none; /* Remove borders */
    color: white; /* Add a text color */
    padding: 14px 28px; /* Add some padding */
    cursor: pointer; /* Add a pointer cursor on mouse-over */
}

#btn {background-color: #2196F3;} /* Blue */
#btn:hover {background: #0b7dda;}



.fa {
  padding: 20px;
  font-size: 30px;
  width: 75px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
}

.fa:hover {
    opacity: 0.7;
    text-decoration: none;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}
.fa-google {
  background: #dd4b39;
  color: white;
}
.fa-instagram {
  background: #125688;
  color: white;
}
.fa-twitter {
  background: #55ACEE;
  color: white;
}
.buttonsign {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.buttonsign:hover {background-color: #3e8e41}

.buttonsign:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>

<script type="text/javascript">
    
<%
    /* so not go back*/
    String back=(String)session.getAttribute("uname");
if (back!=null){
  %>
    history.forward();
    <%
   

    
}%>
        
</script>

<style>

button:hover {
    opacity: 0.8;
}


/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container1 {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 375px; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>

</head>
<body style="background-color:#6bbaa7;background-image: url(i/bg.jpg) ;background-size:cover;
	background-repeat:no-repeat;">
<nav class="navbar navbar-inverse navbar-fixed-top" >
<div class="container-fluid" >
   <!-- <span>
   <a href="index.jsp"> <button class="btn info"id="btn">Home</button></a>
   <a href="about.jsp"> <button class="btn info"id="btn">About</button></a>
   <a href="news.jsp"> <button class="btn info"id="btn">News</button></a>
   <a href="contact.jsp"> <button class="btn info"id="btn">Contact</button></a>
    </span>-->
    
 	<div class="navbar-header font5" style="margin-top:0px;">
	<a href="index.jsp" class="navbar-brand">
            <img class="im animated bounce" src="i/icon4.png" style="width:45px; float:left; margin-top:-10px;">
              
          <b id="study" style="font-size:30px;"> Online-</b>
            <em style="color:yellow;">Test</em>
       
        </a>
        
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#r">
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		</button>
	</div>	
	
	<div class="collapse navbar-collapse" id="r">

        <span style="float:left; ">
            <table>
                <tr>
                <td> <a href="index.jsp"  style="color:white;"><button  style="width:100px; background-color: #4CAF50;color: white; padding: 20px 20px;
                border: none;    cursor: pointer; "><span class="glyphicon glyphicon-home"></span> Home</button></a>
                </td>                                                                                               
                                                                                                  
                <td> <a href="about.jsp"  style="color:white;"><button  style="width:100px; background-color: #4CAF50;color: white; padding: 20px 20px;
                border: none;    cursor: pointer; "><span class="glyphicon glyphicon-tasks"></span> About</button></a>
                </td>  
                
                <td> <a href="news.jsp"  style="color:white;"><button  style="width:100px; background-color: #4CAF50;color: white; padding: 20px 20px;
                border: none;    cursor: pointer; "><span class="glyphicon glyphicon-pencil"></span> News</button></a>
                </td>  
                
                <td> <a href="contact.jsp"  style="color:white;"><button  style="width:120px; background-color: #4CAF50;color: white; padding: 20px 20px;
              border: none;    cursor: pointer; "><span class="glyphicon glyphicon-earphone"></span> Contact</button></a>
                </td>
                
                <td> <a href="adminlogin.jsp"  style="color:white;"><button  style="width:120px; background-color: #4CAF50;color: white; padding: 20px 20px;
               border: none;    cursor: pointer; "><span class="glyphicon glyphicon-user"></span> Admin</button></a>
                </td>
                
                </tr>
             </table>
        </span>
             <span style="float:right;margin-right:20px; ">	
                <table>  
                    <tr class="font5">
                            
                            
               
                        <td><% 
                            String uname=(String)session.getAttribute("uname");
                            %><span style="color:white"><%
                            if(uname==null){
                %><span style="margin-right:20px;"><%out.print("You are not logged in");   %></span><% 
                            %></span><% 
                            %>
                        </td>
    
              <td><!--this is new pop up style form added into header-->
                                
                         
<button onclick="document.getElementById('id01').style.display='block'" style="width:100px; background-color: #4CAF50;
                                                                                                    color: white;
                                                                                                    padding: 20px 20px;
                                                                                                  
                                                                                                    border: none;
                                                                                                    cursor: pointer;
                                                                                                    ">Login</button>

<div id="id01" class="modal">
   
  <form class="modal-content animate" action="login.inc.jsp" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="i/user.png" alt="Avatar" class="avatar">
    </div>
<a href="adminlogin.jsp" style="color:blue;float: right">Admin Login</a>
    <div class="container1">
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uid" class="form-control" required>

      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pwd" class="form-control" required>
        <br>
     <button type="submit" class="btn btn-primary" style="width:100%;"><span class="glyphicon glyphicon-log-in"></span> Login</button>
     <!--<input type="checkbox" checked="checked"> Remember me--> 
    </div>

    <div class="container1" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="btn btn-danger">Cancel</button>
      <span class="psw">Forgot <a href="forgotpass.jsp">password?</a></span> 
       
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

         </td>
        <td> <a href="signup.jsp"  style="color:white;"><button  style="width:100px; background-color: #4CAF50;color: white; padding: 20px 20px;
                  border: none;    cursor: pointer; "><span class="glyphicon glyphicon-user"></span>Sign up</button></a></td>                                                                                               
                                                                                                   
                        
                        <td> <%      
                                } else {

                        %> 
                            <div class="dropdown" >
                                        <button class=" dropdown-toggle" type="button" id="menu1" data-toggle="dropdown" style="width:auto;width:100%; background-color: #4CAF50;color: white; padding: 20px 20px;
                                           border: none;    cursor: pointer; "><%out.print(uname);%>
                                            <span class="caret"></span></button>
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                              <li role="presentation"><a role="menuitem" tabindex="-1" href="test.jsp">Dashboard</a></li>
                                              <li role="presentation" class="divider"></li>
                                              <li role="presentation"><a role="menuitem" tabindex="-1" href="logout.jsp">Logout</a></li>
                                            </ul>
                                   </div>
                                    
                        <%
                                }%>
                            
                        </td>

                    </tr>          
		</table>		
		</span>
                                
                                
                           
            
	
	
        
        
        
                

	</div>
	</div>
	
	
	
	
	
</nav>
