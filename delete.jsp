<%-- 
    Document   : delete
    Created on : Jun 20, 2017, 10:09:41 AM
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
    </head>
    <body>
        <center><h1>Message</h1></center>
      <%  
       
        String news= request.getParameter("news");
 
        try{
         
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String myDb= "jdbc:derby://localhost:1527/rishi";
            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
            java.sql.Statement st=DBconn.createStatement();
            
            ResultSet rs = st.executeQuery("select * from news where head='"+news+"'");
            
            boolean status =rs.next();
            if (status){
            st.execute("delete from news where head='"+news+"'");
            %>  <script type="text/javascript"> alert("Successfully news deleted")</script><%
            %><center><%out.print("Successfully news deleted");%></center><br><%
            %><center> <a href="admin.news.jsp">Go back</a></center><%
            
            }
           else{
          %>  <script type="text/javascript"> alert("No news found")</script><%       
        %><center><h1><%out.print("No news found");%></h1></center><% 
           %><center> <a href="admin.news.jsp">Go back</a></center><%      
            }}
            catch(Exception ex){
        
            out.print(ex.getMessage());
        }
        %>

    </body>
</html>
