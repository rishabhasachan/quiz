<%-- 
    Document   : deletetest
    Created on : Jun 23, 2017, 11:51:18 PM
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
        <title>delete test</title>
    </head>
    <body>
       <center> <h1>Message</h1></center>
      <%  

        String que= request.getParameter("que");

        try{
         
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String myDb= "jdbc:derby://localhost:1527/rishi";
            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
            java.sql.Statement st=DBconn.createStatement();
            
            ResultSet rs = st.executeQuery("select * from test where que='"+que+"'");
            
            boolean status =rs.next();
            if (status){
            st.execute("delete from test where que='"+que+"'");
            
            %><script type="text/javascript">
                 alert("Successfully Question  Deleted");
            </script><%
             %><center><%   out.print("Successfully Question  Deleted");%></center><% 
                        %><center><a href="admin.test.jsp">Go Back</a></center><%
            
            }
           else{
                 
                %><script type="text/javascript">
                 alert("No Question Found");
            </script><%
                 %><center><%   out.print("No Question found or Error Found");%></center><% 
                 %><center><a href="admin.test.jsp">Go Back</a></center><%
            }}
            catch(Exception ex){
        
            out.print(ex.getMessage());
        }
        %>

    </body>
</html>
