<%-- 
    Document   : admin
    Created on : Jun 18, 2017, 2:19:16 PM
    Author     : Rishabh Sachan
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <jsp:include page="admin.header.jsp"></jsp:include>

     <br><br><br>
 <%  %><ul class="nav navbar-nav font5">
     <li><a href="admin.jsp" style="color:black"><span class="glyphicon glyphicon-home"></span> <b>AdminHome</b></a></li>

 </ul><%
     String admin = (String) session.getAttribute("admin");
     if (admin == null) {
         response.sendRedirect("adminlogin.jsp");
     } else {
 %><center><h3><%    out.print("Welcome " + admin); %></h3></center><%
                            }%>
 <div class="row">
     <div class="col-sm-4">
         <div class="panel panel-primary ">
             <div class="panel-heading ">
                 <center><h2>Add news here</h2>
                 </center>
             </div>

             <div class="panel-body">
                 <form action="admin.news.jsp">
                     <div class="form-group">
                         <p>Date</p>
                         <input type="date" name="date" placeholder="Enter Date" class="form-control" required>
                     </div>
                     <div class="form-group">
                         <p>Enter heading</p>
                         <input type="text" name="head" placeholder="Enter Heading" class="form-control" required>
                     </div>    

                     <div class="form-group">
                         <p>Enter news</p>                 
                         <textarea name="news" placeholder="Enter news"  rows="5" style="width: 100%" required>
                         </textarea>
                     </div>
                     <button type="submit" class="btn btn-primary" style="width:100%;" >Public</button>
                 </form>		
             </div>
         </div>
     </div>
     <div class="col-sm-4">
                                 <% 

                         String date = request.getParameter("date");
                         String head = request.getParameter("head");
                         String news = request.getParameter("news");
                        try{

                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            String myDb= "jdbc:derby://localhost:1527/rishi";
                            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
                            java.sql.Statement st=DBconn.createStatement();
                            ResultSet rs= st.executeQuery("select * from news");
                            while(rs.next()){
                            String d=rs.getString("date");
                            String h=rs.getString("head");
                            String n=rs.getString("news"); 

                                 %><table><%
                                 %><tr><%
                                 %><td><%%><b><% out.print(d + ":   "); %></b><% %></td><%
                                 %><td><%%><b><% out.print(h + "");%></b><%%></td><%
                                 %></tr><%
                                 %><tr><%
                                 %><td colspan="3"><% out.print(" " + n); %></td><%
                                 %></tr><%
                                 %></table><%
                                 %><hr><% 
                            }
                            st.execute("insert into news values('"+head+"','"+news+"','"+date+"')");
                        }catch(Exception ex){
                            out.print(ex.getMessage());
                        }
                        %>
                      </div>
                      <div class="col-sm-4">     
                          <%
                       try{
                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            String myDb= "jdbc:derby://localhost:1527/rishi";
                            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
                            java.sql.Statement st=DBconn.createStatement();
                            ResultSet rs= st.executeQuery("select * from news");
                            
                          %><form action='delete.jsp'><div class='form-group'><h2>Delete news:</h2>
                        <select class='form-control' id='sell' name='news'>
                            <option>Select news</option>
                          <%
                            while(rs.next()){
                            String d=rs.getString("date");
                            String h=rs.getString("head");
                            String n=rs.getString("news");   
                              %><option><%
                                  out.print(h);  
                             %></option>  <%
                              }
%> </select></div><input type="submit" value='Delete News' class="btn btn-danger" style="font-size: 20px"></form><%  

                        }catch(Exception ex){
                            out.print(ex.getMessage());
                        }
                                %>
                          
</div>
 </div>
</body>
</html>
