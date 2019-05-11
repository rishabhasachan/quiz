<%-- 
    Document   : admin
    Created on : Jun 21, 2017, 3:34:34 PM
    Author     : Rishabh Sachan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <jsp:include page="admin.header.jsp"></jsp:include>
 <br><br><br><br>  <br>  

 <%
     String admin = (String) session.getAttribute("admin");
     if (admin == null) {
         response.sendRedirect("adminlogin.jsp");
     } else {
 %><center><h3><%    out.print("Welcome " + admin); %></h3></center><%
                                }%>
              
      <center>  <h1>Admin Section</h1></center>
       
         
            

      <div class="row">
          <div class="col-sm-2">   
          </div>  

          <div class="col-sm-8">

              <h1></h1>		

              <div class="row" >
                  <div class="col-md-3" style="text-align:center;" >
                      <a href="admin.test.jsp" class="thumbnail" style="background-color:success;">
                          <h2>Edit Exam </h2><p>Link available now</p>

                      </a>
                  </div >
                  <div class="col-md-3" style="text-align:center;">
                      <a href="admin.news.jsp" class="thumbnail"style="background-color:success;">
                          <h2>Edit News </h2><p>Link available now</p> 

                      </a>
                  </div >
                  <div class="col-md-3"style="text-align:center;">
                      <a href="users.detail.jsp" class="thumbnail"style="background-color:success;">
                          <h2>Users Details</h2> <p>Link available now</p> 

                      </a>
                  </div>
                  <div class="col-md-3"style="text-align:center;">
                      <a href="admins.detail.jsp" class="thumbnail"style="background-color:success;">
                          <h2>Admins</h2> <p>Link available now</p>

                      </a>
                  </div>
					    
					  					 
              </div>	
			
          </div>
          <div class="row">
              <div class="col-sm-2">   
              </div>  
          </div>
      </div>






 </body>
 </html>
