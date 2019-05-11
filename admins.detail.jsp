<%-- 
    Document   : admins.detail
    Created on : Jul 2, 2017, 6:59:17 AM
    Author     : Rishabh Sachan
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <jsp:include page="admin.header.jsp"></jsp:include>
        <br><br><br>
 <%   %><ul class="nav navbar-nav font5">
     <li><a href="admin.jsp" style="color:black"><span class="glyphicon glyphicon-home"></span> <b>AdminHome</b></a></li>
 </ul> <%
     String admin = (String) session.getAttribute("admin");
     if (admin == null) {
         response.sendRedirect("adminlogin.jsp");
     } else {
 %><center><h1><% out.print("Users Details "); %></h1></center><%


         %>
                        
                        
                <div style="margin-right:0px; margin-top:10px; margin-bottom: 20px;">	
                <table>  
                <tr class="font5">   
                <td><!--this is new pop up style form added into header-->
                                
                         
<button onclick="document.getElementById('id01').style.display='block'" style="width:100%;width:auto; 
        background-color: #4CAF50;color: white;padding: 14px 20px;margin: 8px 0;border: none;cursor: pointer;">
    Add new Admin
</button>

<div id="id01" class="modal">
   
    <form class="modal-content animate" action='signupadmin.inc.jsp' method='post'>
        <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="i/user.png" alt="Avatar" class="avatar">
        </div>

    <div class="container1">
        <div class="form-group">
            <label for="firstname">Name:</label>
            <table>    <tr>
                    <td><input type="text" name="firstname" placeholder="First Name" class="form-control" required></td>
                    <td><input type="text" name="lastname" placeholder="Last Name" class="form-control"required><td>
                </tr>    
            </table>
        </div>

        <div class="form-group">
            <label for="email">E-mail:</label>
            <input type="email" name="email" placeholder="Ex: abc_xyz@gmail.com" class="form-control"required>
        </div>
        <div class="form-group">
            <label for="uid">User Id:</label>
            <input type="text" name="uid" placeholder="Set a unique user id" class="form-control"required>
        </div>
        <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" name="pwd" placeholder="set a password" class="form-control"required>
            <input type="password" name="pwd2" placeholder="Confirm password" class="form-control"required>
        </div>

        <div class="radio">
            <b>Gender:</b><br>
            <label><input type="radio" name="gen" value="Male"required>Male </label>
            <label><input type="radio" name="gen" value="Female"required>Female </label>
        </div>

        <div class="checkbox">
            <label><input type="checkbox" required> I accept <a href="admin.terms.jsp" >Terms and Condition</a> of use</label>
        </div>
        <center>
            <button type="reset" class="btn btn-default" >Reset</button>
            <button type="submit" class="btn btn-default" >Register me</button>
    </div>
    <div class="container1" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="btn btn-danger">Cancel</button>
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

         </tr>            
         </table>
         </div> 
                       
                        <%                  
                            
                        
                             
        try{
         
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String myDb= "jdbc:derby://localhost:1527/rishi";
            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
            java.sql.Statement st=DBconn.createStatement();
            
            
            ResultSet rs= st.executeQuery("select * from admin");
           
            %><div class="table-responsive">
                      <table class='table' border="1"> 
                    <thead>     
                   <tr> 
                       <th>First Name</th>
                        <th>Last Name</th> 
                        <th>Email</th>
                        <th>Admin Id</th>                   
                        <th>Password</th>
                        <th>Gender</th> 
                      
                   </tr>
                   <thead>
                     <tbody>  
                              <%String fn,ln,em,id,gn,pass;
            
            while(rs.next()){
             fn=rs.getString("fname");
             ln=rs.getString("lname"); 
             em=rs.getString("email");
             id=rs.getString("uid");
             pass=rs.getString("pwd");
           gn=rs.getString("gen");
          
            
            
           
                       %><tr><%
                           %><td><%out.print(fn);%></td><%
                           %><td><%out.print(ln);%></td><%
                           %><td><%out.print(em);%></td><%
                           %><td><%out.print(id);%></td><%
                           %><td><%out.print(pass);%></td><%
                           %><td><%out.print(gn);%></td><%
                       %></tr><%             
           
           
               
            }%><tbody></table></div><%

        }catch(Exception ex){
            out.print(ex.getMessage());
        }





                            
                            }//else ends here
                     %>
                        
                       
                        
</html>
