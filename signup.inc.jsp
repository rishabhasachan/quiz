<%-- 
    Document   : signup.inc
    Created on : Jun 13, 2017, 4:20:32 AM
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
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
       <center> <h1>Message</h1></center>
      <%  
        String firstname= request.getParameter("firstname");
        String lastname= request.getParameter("lastname");
        String mname= request.getParameter("mname");
        String fname= request.getParameter("fname");
        String email= request.getParameter("email");
        String uid= request.getParameter("uid");
        String pwd= request.getParameter("pwd");
        String pwd2= request.getParameter("pwd2");
        String gen= request.getParameter("gen");
        String seq= request.getParameter("seq");
        String sea= request.getParameter("sea");                  
                            if(uid==null){
                            response.sendRedirect("index.jsp");
                            }
       
        
        try{
         
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String myDb= "jdbc:derby://localhost:1527/rishi";
            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
            java.sql.Statement st=DBconn.createStatement();
            
                ResultSet check= st.executeQuery("select uid from users2 where uid='"+uid+"'");
                 if(check.next()){
             %><center><h1><%    out.print("User name already exit try another one");%></h1><% 
                 %><p> <a href="signup.jsp">Try again</a></p></center><%
                 }else if(pwd.equals(pwd2)) {
             
           
            st.execute("insert into users2 values('"+firstname+"','"+lastname+"','"+email+"','"+uid+"','"+pwd+"','"+pwd+"','"+gen+"','"+mname+"','"+fname+"','"+seq+"','"+sea+"')");
            
            ResultSet rs= st.executeQuery("select * from users2 where uid='"+uid+"' and pwd='"+pwd+"'");
            while(rs.next()){
            String fn=rs.getString("firstname");
            String ln=rs.getString("lastname"); 
            String em=rs.getString("email");
            String id=rs.getString("uid");
            String gn=rs.getString("gen");
            String mn=rs.getString("mname");
            String fan=rs.getString("fname");
            String sq=rs.getString("seq");
            String sa=rs.getString("sea");
           
           
            out.print("Hello : "+fn+" ");
            out.print(ln);%><br><%
             out.print("Mother's Name: "+mn);%><br><%
            out.print("Father's Name: "+fan);%><br><%

            out.print("E-mail: "+em);%><br><%
            out.print("User id: "+id);%><br><%
            out.print("Gender: "+gn);%><br><%
            out.print("Gender: "+sq);%><br><%
            out.print("Gender: "+sa);%><br><%
            %><div class="alert alert-success">
  <strong>Success!</strong> YOU ARE SUCCESSFULLY REGISTERD.
</div><%
            %><center><h4><a href="index.jsp">Go to home page</a></h4></center><%
             %><br><br><br><br><%
               
            }}else{
            %><center><h1><%     out.print("Some problem occurse "+"<br>"+"May be both Password did not matched Please Enter same password"); %></h1><% 
                     %><h3> <a href="signup.jsp">Try again</a></h3></center><%
}
        }catch(Exception ex){
            out.print(ex.getMessage());
        }
        %>
        
        
        
    </body>
</html>
