<%-- 
    Document   : chpass
    Created on : Jun 29, 2017, 2:10:34 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%  
       boolean status= false; 
       String uid= request.getParameter("uid");
        String pass0= request.getParameter("password0");
        String pass= request.getParameter("password");
        String pass2= request.getParameter("password2");
                            if(uid==null){
                            response.sendRedirect("test.jsp");
                            }
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String myDb= "jdbc:derby://localhost:1527/rishi";
            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
            java.sql.Statement st=DBconn.createStatement();
            ResultSet check= st.executeQuery("select pwd from users2 where pwd='"+pass0+"' and uid='"+uid+"' ");
            if (check.next()){
            int i=0;
            if(pass.equals(pass2)){
            i= st.executeUpdate("update users2 set pwd='"+pass+"', pwd2='"+pass2+"' where uid='"+uid+"' ");
            if(i>0 ){   
             %>
           <center> <h2>   <%out.print("password has been changed successfully");%> </h2>
                <a href="test.jsp"> go to home page</a></center>
                <%
            }else{
                 %>
            <center> <h2>    <%out.print("pass has not been changed");%></h2>
                 
               <a href="test.jsp"> go to home page</a></center>
                 <%
            }}else{
%><center><h2>OOPs! Some problem Occoured or Both Passsword did not matched please <br><a href="test.jsp">try again</a> 
</h2></center><%}
}else{
out.print("<h2><center>"+"Current pass not found Please inter correct current password"+"</center></h2>");
%><center><a href="test.jsp">Go to Dashboard</a></center><%
}}catch(Exception ex){        
            out.print(ex.getMessage()); }%></body></html>
