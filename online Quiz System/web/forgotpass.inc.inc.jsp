<%-- 
    Document   : login.inc
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
    </head>
    <body>
      <center>  <h1>Message</h1></center>
      <%  
       boolean status= false;
       
       String uid= request.getParameter("uid");
        String pass= request.getParameter("password");
        String pass2= request.getParameter("password2");
                            if(uid==null){
                            response.sendRedirect("index.jsp");
                            }
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String myDb= "jdbc:derby://localhost:1527/rishi";
            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
            java.sql.Statement st=DBconn.createStatement();       
            int i=0;
            if(pass.equals(pass2)){
            i= st.executeUpdate("update users2 set pwd='"+pass+"', pwd2='"+pass2+"' where uid='"+uid+"' ");
            if(i>0 ){               
             %>
           <center> <h2>   <%out.print("password has been changed successfully");%> </h2>
                <a href="index.jsp"> go to home page</a></center>
                <%
            }else{
                 %>
            <center> <h2>    <%out.print("pass has not been changed");%></h2>     
               <a href="index.jsp"> go to home page</a></center>
                 <%                
            }}else{
%><center><h2>OOPs! Some problem Occoured or Both Passsword did not matched please <br><a href="forgotpass.jsp">try again</a> </h2></center><%}
            }
            catch(Exception ex){
            out.print(ex.getMessage());
        }
        %>
    </body>
</html>
