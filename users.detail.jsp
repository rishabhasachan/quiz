<%-- 
    Document   : users.detail
    Created on : Jun 27, 2017, 11:27:25 PM
    Author     : Rishabh Sachan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <jsp:include page="admin.header.jsp"></jsp:include>
        <br><br><br><br>
        <%   %><ul class="nav navbar-nav font5">
		<li><a href="admin.jsp" style="color:black"><span class="glyphicon glyphicon-home"></span> <b>AdminHome</b></a></li>
                
	        </ul>
                             
        <%
                            String admin=(String)session.getAttribute("admin");
                            if(admin==null){
                            response.sendRedirect("adminlogin.jsp");
                            }else{
                                %><center><span style="font-size: 40px;"><% out.print("Users Details "); %></span> </center>
                            <!--form to search users by user name-->
                            <div style="margin-left: 10px;">  
                                <form action="userdetails.jsp" method="post">
                               <input type="text" class="search" name="username" placeholder="Search users by Name">
                               
                                </form>    
                            </div>
                               <br>
                            
                           
                        <%                   
        try{
         
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String myDb= "jdbc:derby://localhost:1527/rishi";
            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
            java.sql.Statement st=DBconn.createStatement();
            
            
            ResultSet rs= st.executeQuery("select * from users2");
           
            %><div class="table-responsive">
                      <table class='table' border="1"> 
                    <thead>     
                   <tr> 
                       <th>First Name</th>
                        <th>Last Name</th> 
                        <th>Mother's Name</th>
                        <th>Father's Name</th>
                        <th>Email</th>
                        <th>User Id</th>
                        <th>Gender</th>
                        <th>Security Question</th>
                        <th>Security Answer</th>
                        <th>Password</th>
                        <th>Test Record</th>
                        <th>Delete user</th>
                      
                   </tr>
                   <thead>
                     <tbody>  
                              <%String fn,ln,em,id,gn,mn,fan,seq,sea,pass;
            
            while(rs.next()){
             fn=rs.getString("firstname");
             ln=rs.getString("lastname"); 
             em=rs.getString("email");
             id=rs.getString("uid");
             gn=rs.getString("gen");
             mn=rs.getString("mname");
             fan=rs.getString("fname");
             seq=rs.getString("seq");
             sea=rs.getString("sea");
             pass=rs.getString("pwd");
                       %><tr><%
                           %><td><%out.print(fn);%></td><%
                           %><td><%out.print(ln);%></td><%
                           %><td><%out.print(mn);%></td><%
                           %><td><%out.print(fan);%></td><%
                           %><td><%out.print(em);%></td><%
                           %><td><%out.print(id);%></td><%
                           %><td><%out.print(gn);%></td><%
                           %><td><%out.print(seq);%></td><%
                           %><td><%out.print(sea);%></td><%
                            %><td><%out.print(pass);%></td><%
                     %>
                     
                        <td><form  action="admin.user.record.jsp" method="post">
                                <button type="submit" class='btn btn-primary' name="uname" value="<%= id %>">Record
                                </button>
                            </form>
                        </td>
                         
                         
                        <td><form  action="admin.delete.user.jsp" method="post">
                                <button type="submit" class='btn btn-danger' name="uid" value="<%= id %>">Remove
                                </button>
                            </form>
                        </td>
                        
                     <%
                       %></tr><%             
           
           
               
            }%><tbody></table></div><%

        }catch(Exception ex){
            out.print(ex.getMessage());
        }

                            
                            }//else ends here
                     %>
                        
                       
                        
</html>
