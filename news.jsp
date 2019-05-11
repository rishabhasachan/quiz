<%-- 
    Document   : news
    Created on : Jun 17, 2017, 12:37:58 PM
    Author     : Rishabh Sachan
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
 <jsp:include page="header.jsp"></jsp:include>

<div class="container" style="margin-top: 75px;">
        <div class="well font2" style=" background-image: url(i/s2.jpg);background-attachment: fixed;background-size: 100%">
            <center><span style="font-size:50px;">NEWS</span><br>
            <span style="font-size: 30px;">
             
            </span>
            
            </center>
        </div>
	<div class="row bg-danger">
			<div class="col-sm-8" style="text-align:justify">
			<div class="panel panel-primary">
					<div class="panel-heading">
					Rishabha 
					</div>
					<div class="panel-body bg-success">
				<p style=" font-size:20px;font-family: 'Buda', cursive; color:#000055; ">
				<img src="i/3.png" class="img-responsive img-thumbnail"  width="300" align="left" vspace="2" hspace="2"/>
				This website is designed to improove the performence in college for B.tech student facing problems regarding 
				availability of study materials and old exam papers. We also provide online free test facolity so that students can test them selfs and 
				can inproove with the help of study material and old exam papers. This website gonna help 
				to collect old papers as well as student can also get imoprtent 
				Lecture vedios link that will help them to study online better.
				</p>
				</div>
			</div>
                            
                        <div class="panel panel-primary">
					<div class="panel-heading">
					Rishabha 
					</div>
					<div class="panel-body bg-success">
				<center> <h3  style=" font-family: 'Buda', cursive; color:#000055; ">Onlinexams is a web based interactive, independent and intelligent examination platform for students. 
                        This platform covers wide range of subject examination.
                    </h3> </center>
                    <p   style=" font-size:20px;font-family: 'Buda', cursive; color:#000055; " > 

                            <b>Online test</b> is an plateform for students to take varbal and aptitude tests online. 
                            It provieds mock test for campus placements as well as other exam. Using Online test, you can 
                            take any test anu number of times and see your performance metrices, Preparing for Campus Placement
                            or any other examination, online test provides you a number of mock tests to <b>Engage, Analyze </b>
                            your performance and <b>Improve</b> your skills!
                    </p>
				</div>
			</div> 
                           
			<iframe width=100% height="480" src="https://www.youtube.com/embed/ayGOIUuMfuA" frameborder="0" allowfullscreen></iframe>
                           
                           
			</div>
			
			<div class="col-sm-4" style="text-align:justify">
                            
                            <div class="panel panel-primary">
					<div class="panel-heading">
					Latest News
					</div>
					<div class="panel-body">
                                         <jsp:include page="news_portal.jsp"></jsp:include>
                                     </div>
								
				
				<div class="panel-body" >	  
				<div style="float:left;">
				      <marquee direction="up" onmouseover="this.stop()" onmouseout="this.start()" >
				      
						<p>Registrations for new session will start soon</p>	
						<p>Fee can only be pay through DD</p>
                                                <p>Visit <a href="http://uietkanpur.org" target="_blank">UIET web site</a></p>
						<p>the site is designed by Rishabha Sachan</p>
						
						  
				     </marquee>
                                </div>
                                </div>
                            </div>
                            
                            
                            
			<div class="panel panel-success">				
					<div class="panel-body bg-success">			
					<a href="signup.jsp"><button class="buttonsign"  style="width:100%"><h2>Sign up for free</h2>
                                                <center><h2 class="font2">Click Here <span class="glyphicon glyphicon-menu-right"></span></h2></center>
                                            </button>
                                        </a>
					</div>
					
			</div>
 
	</div>
 </div>
 </div>
  <jsp:include page="footer.jsp"></jsp:include>