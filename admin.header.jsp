<%-- 
    Document   : admin.header
    Created on : Jun 22, 2017, 2:17:32 PM
    Author     : Rishabh Sachan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="UTF-8">
	<title>AdminSection</title>
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
       <script src="js/bootstrap.js"></script>
 
       
   
<script type="text/javascript">
    history.forward();
</script>
<style>
    button:hover {
    opacity: 0.8;
}</style>

<style>

button:hover {
    opacity: 0.8;
}
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
<style> /*this style is for admin section ANIMATED SEARCH*/
 .search{
    width: 20%;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('i/search.png');
    background-size: 40px 40px;
    background-position: 1px 5px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}
.search[type=text]:focus {
    width: 30%;box-shadow: 0 0 5px #000;
}
</style>
</head>
<body style="background-color:#6bbaa7;background-image: url(i/bg.jpg) ;background-size:cover;
	background-repeat:no-repeat;">
    <nav class="navbar navbar-inverse navbar-fixed-top" >
        <div class="container-fluid" >
            <div class="navbar-header font5" >
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#r">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>	
            <div class="collapse navbar-collapse" id="r">	
            <span style="float:right;margin-right:20px; margin-top:0px;">	
            <table>  
            <tr class="font5">
            <td><%
            String admin = (String) session.getAttribute("admin");
            %><span style="color:white"><%
            if (admin == null) {
            %><span style="margin-right:20px;"><%out.print("Admin not logged in");
            response.sendRedirect("adminlogin.jsp");  %></span><%
            %></span><%
            %>
            </td>
            <td><ul class="nav navbar-nav">
            <li> <a href="index.jsp"  style="color:white;">
                <button  style="width:100px; background-color: #4CAF50;color: white; padding: 10px 10px;
                border: none;    cursor: pointer; "><span class="glyphicon glyphicon-home"></span> Home
                </button>
                </a>
            </li> 
            </ul>
            </td>
            <td> <%                        } else {

            %>             

             <div class="dropdown" >
             <button class=" dropdown-toggle" type="button" id="menu1" data-toggle="dropdown" style="width:auto;width:100%; background-color: #4CAF50;color: white; padding: 20px 20px;
             border: none;    cursor: pointer; "><%out.print(admin);%>
             <span class="caret"></span></button>
             <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
             <li role="presentation"><a role="menuitem" tabindex="-1" href="admin.jsp">Dashboard</a></li>
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
