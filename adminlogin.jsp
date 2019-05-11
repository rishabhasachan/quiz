<%-- 
    Document   : adminlogin
    Created on : Jun 18, 2017, 2:21:33 PM
    Author     : Rishabh Sachan
--%>
 <jsp:include page="admin.header.jsp"></jsp:include>
 <br><br><br><br>
        <br>  <br><br>

        <div class="row">
        <div class="col-sm-4" style="text-align:justify"></div>
        <div class="col-sm-4" style="text-align:justify">
            
                <div class="panel panel-primary animated zoomIn">
		<div class="panel-heading ">
                            
		<center><h2>Admin Login </h2>
                        
                </center>
		</div>
                    <div class="panel-body">
                        <form action="adminlogin.inc.jsp" method="post">
                            <div class="form-group">
                                <label for="uid">User Id:</label>
                                <input type="text" name="uid" placeholder="Enter user id" class="form-control"required>
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" name="pwd" placeholder="Enter password" class="form-control"required>

                            </div>
                            <button type="reset" class="btn btn-default" >Reset</button>
                            <button type="submit" class="btn btn-default" >Admin login</button>
                        </form>		
                    </div>

	</div>
        </div>
        <div class="col-sm-4" style="text-align:justify"></div>
    	 
        </div>
        
         <%
             //NOT IN USE****************************************************************************###################!
             boolean statusadmin=false;
            String uid= request.getParameter("uid");
            String pwd= request.getParameter("pwd");
          try{  
            if(pwd.equals("admin") && uid.equals("admin")) {
                statusadmin=true;
                session.setAttribute("statusadmin",statusadmin);
                session.setAttribute("admin", uid);
               response.sendRedirect("admin.jsp"); 
            }else{
             %>
             <script stype='text/javascript' >
                 alert("username or password is incorrect");
                 
                 </script>
            <%
        
            }
          }catch(Exception ex){
            out.print(ex.getMessage());
        }
        %>
        <br><br><br><br><br><br><br><br>
        
        
   <jsp:include page="footer.jsp"></jsp:include>
