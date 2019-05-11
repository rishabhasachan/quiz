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
        <%   %><ul class="nav navbar-nav font5">
		<li><a href="admin.jsp" style="color:black"><span class="glyphicon glyphicon-home"></span> 
                        <b>AdminHome</b></a>
                </li>
	        </ul> <%
                            String admin=(String)session.getAttribute("admin");
                            if(admin==null){
                            response.sendRedirect("adminlogin.jsp");
                            }else{
                        %><center><h3><%    out.print("Welcome "+admin ); %></h3></center><%  
                            }%>
                        <div class="row">
                            <div class="col-sm-4">

                                <div class="panel panel-primary ">
                                    <div class="panel-heading ">

                                        <center><h2>Add Exam questions here</h2>

                                        </center>
                                    </div>

                                    <div class="panel-body">
                                        <form action="admin.test.jsp">
                                            <div class="form-group">
                                                <p>Subject</p>
                                                <input type="text" name="sub" placeholder="html/js/css/sql/java" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <p>Enter Question</p>
                                                <input type="text" name="que" placeholder="Enter Question" class="form-control" required>
                                            </div>   

                                            <div class="form-group">
                                                <p>Option 1</p>
                                                <input type="text" name="op1" placeholder="Enter option 1" class="form-control" required>
                                            </div> 

                                            <div class="form-group">
                                                <p>Option 2</p>
                                                <input type="text" name="op2" placeholder="Enter option 2" class="form-control" required>
                                            </div> 

                                            <div class="form-group">
                                                <p>Option 3</p>
                                                <input type="text" name="op3" placeholder="Enter option 3" class="form-control" required>
                                            </div> 

                                            <div class="form-group">
                                                <p>Option 4</p>
                                                <input type="text" name="op4" placeholder="Enter option 4" class="form-control" required>
                                            </div> 

                                

                                            <div class="form-group">
                                                <p>Enter answer</p>

                                                <select class='form-control' id='sell' name='ans'>
                                                    <option value="a">select correct answer</option>
                                                    <option value="a">A</option>
                                                    <option value="b">B</option>
                                                    <option value="c">C</option>
                                                    <option value="d">D</option>

                                                </select>
                                            </div>
                                            <button type="submit" class="btn btn-primary" style="width:100%;" >Public</button>


                                        </form>		
                                    </div>
                                </div>

                            </div>

            
            <div class="col-sm-4">
                            <%
                       try{
                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            String myDb= "jdbc:derby://localhost:1527/rishi";
                            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
                            java.sql.Statement st=DBconn.createStatement();
                            ResultSet rs= st.executeQuery("select * from test");
                            
%><form action='deletetest.jsp'><div class='form-group'><h2>Delete Question:</h2>
                        <select class='form-control' id='sell' name='que'>
                            <option>Select Question to delete</option>
                            <%
                            while(rs.next()){
                            String s=rs.getString("sub");
                            String q=rs.getString("que");
                           
                            //out.println(d+": ");
                              %><option><%
                                  
                                  out.print(q);
                                  
                             %></option>  <%//out.print(n);
                              }
%> </select></div><input type="submit" value='Delete Question' class="btn btn-danger" style="font-size: 20px"></form><%  
  
                        }catch(Exception ex){
                            out.print(ex.getMessage());
                        }
          
                                %>      
 
                      </div>

                      <div class="col-sm-4">
                          
                          
                          <h1>All questions list from database</h1>
                          <% 
                        try{

                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            String myDb= "jdbc:derby://localhost:1527/rishi";
                            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
                            java.sql.Statement st=DBconn.createStatement();

                            ResultSet rs= st.executeQuery("select * from test");
                            int i=1;
  
                            while(rs.next()){
                            String s=rs.getString("sub");
                            String q=rs.getString("que");
       
                          %><b><%out.print(i+"- "+s+" ::");  out.println(q);%></b><%i=i+1;%><br><%
     
                          %>
                          <%
                          %><hr><%     
                        }}catch(Exception ex){
                            out.print(ex.getMessage());
                        }
                        %>
                        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                        
                         <% 

                         String sub = request.getParameter("sub");
                             String que = request.getParameter("que");
                             String ans = request.getParameter("ans");
                             String op1 = request.getParameter("op1");
                             String op2 = request.getParameter("op2");
                             String op3 = request.getParameter("op3");
                             String op4 = request.getParameter("op4");

                        try{
                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            String myDb2= "jdbc:derby://localhost:1527/rishi";
                            Connection DBconn2 = DriverManager.getConnection(myDb2,"rishi","rishi");
                            java.sql.Statement st2=DBconn2.createStatement();
                            st2.execute("insert into test values('"+sub+"','"+que+"','"+ans+"','"+op1+"','"+op2+"','"+op3+"','"+op4+"')");
                        }catch(Exception ex){
                            out.print(ex.getMessage());
                        }
                         %>               
                      </div>
     
	</div>
        
        
        
        
        
    
   
    </body>
</html>
