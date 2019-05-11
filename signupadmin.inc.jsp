<%-- 
    Document   : signupadmin.inc
    Created on : Jul 2, 2017, 8:14:53 AM
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
       <center> <h1>Message</h1></center>
      <%  
        String firstname= request.getParameter("firstname");
        String lastname= request.getParameter("lastname");
        String email= request.getParameter("email");
        String uid= request.getParameter("uid");
        String pwd= request.getParameter("pwd");
        String pwd2= request.getParameter("pwd2");
        String gen= request.getParameter("gen");                     
                            if(uid==null){
                            response.sendRedirect("adminlogin.jsp");
                            }
        
        try{
         
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String myDb= "jdbc:derby://localhost:1527/rishi";
            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
            java.sql.Statement st=DBconn.createStatement();
            
                ResultSet check= st.executeQuery("select uid from admin where uid='"+uid+"'");
                 if(check.next()){
             %><center><h1><%    out.print("User name already exit try another one");%></h1><% 
                 %><p> <a href="admins.detail.jsp">Try again</a></p></center><%
                 }else if(pwd.equals(pwd2)) {
             
           
            st.execute("insert into admin values('"+firstname+"','"+lastname+"','"+email+"','"+uid+"','"+pwd+"','"+pwd2+"','"+gen+"')");
            
            ResultSet rs= st.executeQuery("select * from admin where uid='"+uid+"' and pwd='"+pwd+"'");
            while(rs.next()){
            String fn=rs.getString("fname");
            String ln=rs.getString("lname"); 
            String em=rs.getString("email");
            String id=rs.getString("uid");
            String gn=rs.getString("gen");
          
           
            out.print("Hello : "+fn+" ");
            out.print(ln);%><br><%
            out.print("E-mail: "+em);%><br><%
            out.print("User id: "+id);%><br><%
            out.print("Gender: "+gn);%><br><%
           
            out.print("<h2>"+"You are Successfully Registered"+"</h2>");
            %><center><h4><a href="admin.jsp">Go to home page</a></h4></center><%
             %><br><br><br><br><%
               
            }}else{
            %><center><h1><%     out.print("Some problem occurse "+"<br>"+"May be both Password did not matched Please Enter same password"); %></h1><% 
                     %><h3> <a href="admin.jsp">Try again</a></h3></center><%
}
        }catch(Exception ex){
            out.print(ex.getMessage());
        }
        %>    
        
    </body>
</html>
