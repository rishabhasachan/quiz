<%-- 
    Document   : forgetpass.inc
    Created on : Jun 14, 2017, 1:05:39 AM
    Author     : Rishabh Sachan
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>connect</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
       <br> <br>
      <%  
       boolean status= false;
        String uid= request.getParameter("uid");
        String email= request.getParameter("email");
        String seq= request.getParameter("seq");
        String sea= request.getParameter("sea");
                      if (uid == null) {
      %><script type="text/javascript">alert("ERROR!!! Username or Password Empty")</script><%
                                        response.sendRedirect("index.jsp");
                                    }
  
        try{
         
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String myDb= "jdbc:derby://localhost:1527/rishi";
            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
            java.sql.Statement st=DBconn.createStatement();
  
            ResultSet rs= st.executeQuery("select * from users2 where uid='"+uid+"' and email='"+email+"' and seq='"+seq+"' and sea='"+sea+"' ");
            status=rs.next();
           int i=0; 
            if(status){i=i+1; 
             %>
<div class=row>
<div class="col-sm-4" style="text-align:justify"></div>
    <div class="col-sm-4" style="text-align:justify">
        <div class="panel panel-primary animated zoomIn">
                <div class="panel-heading ">
             <center><h2>CHANGE YOUR PASSWORD<br></h2></center> 
               
              
               <%
                %><center><h3> <%
               String f=rs.getString("firstname");
            String l=rs.getString("lastname"); 
           
            out.print(" Hello "+f+" ");
            out.print(l); %></h3></center><%  
        %> 
    <%
  
            %><center><h3><%   out.print(i +" RECORD FOUND");%></h3><%
                
                %>
                </div>
                <div class="panel-body">
                 <form action='forgotpass.inc.inc.jsp' method='post'><h3>
                <!--<input type='password' name='uid' class="form-control" placeholder="Enter same username" required><br>-->
                <input type='password' name='password' class="form-control" placeholder="Enter new password" required><br>
                <input type='password' name='password2' class="form-control" placeholder="Confirm password" required><br>
                <button type="reset" value="Reset">Reset</button>
                <button type="submit" name="uid" value="<%= uid %>">Submit</button></h3>
                </form>
                </div>  
        </div>
    </div>
<div class="col-sm-4" style="text-align:justify"></div>   
</div>
                
                <%
    
            }else{
                 %>
                 <center>
                 <h1>OOPs!</h1>
                <h1>USER NAME OR PASSWORD NOT FOUND PLEASE TRY AGAIN</h1>
                <h1><a href="forgotpass.jsp">TRY AGAIN</a></h1>
                </center>
                <%
            }}
            catch(Exception ex){
        
            out.print(ex.getMessage());
        }
        %>
 
    </body>
</html>
