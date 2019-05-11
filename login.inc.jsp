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
        <center><h1>Message</h1></center>
      <%
         
       boolean status= false;
        String uid= request.getParameter("uid");
        String pwd= request.getParameter("pwd");      
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String myDb= "jdbc:derby://localhost:1527/rishi";
            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
            java.sql.Statement st=DBconn.createStatement();
            ResultSet rs= st.executeQuery("select pwd from users2 where uid='"+uid+"' and pwd='"+pwd+"'");
            status=rs.next();
            
            String uname=(String)session.getAttribute("uname");
            if(uname==null){
            if(status){ 
                session.setAttribute("uname", uid);
                response.sendRedirect("test.jsp");
            }else{
                response.sendRedirect("index.jsp");     
            }}else{
                response.sendRedirect("index.jsp");
            }}
            catch(Exception ex){
        
            out.print(ex.getMessage());
        }
        %>
        
    </body>
</html>
