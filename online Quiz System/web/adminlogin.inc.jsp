<%-- 
    Document   : adminlogin.inc
    Created on : Jun 18, 2017, 2:31:54 PM
    Author     : Rishabh Sachan
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <jsp:include page="admin.header.jsp"></jsp:include>
 
 <br><br><br>
        <center><h1>Message</h1></center>
        
       <%
           boolean statusadmin=false;
       boolean status= false;
        String uid= request.getParameter("uid");
        String pwd= request.getParameter("pwd");
 
        try{
         
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String myDb= "jdbc:derby://localhost:1527/rishi";
            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
            java.sql.Statement st=DBconn.createStatement();

            ResultSet rs= st.executeQuery("select pwd from admin where uid='"+uid+"' and pwd='"+pwd+"'");
            status=rs.next();
            
            String admin=(String)session.getAttribute("admin");
            if(admin==null){
           
            if(status){
                
               session.setAttribute("statusadmin",statusadmin);
               session.setAttribute("admin", uid);
               response.sendRedirect("admin.jsp"); 
                
            }else{
                
                %><center><h2><%%> <div class='alert alert-warning'>
        <strong>ERROR!</strong> USERNAME OR PASSWORD IS INCORRECT
            </div><%%>

<br><a href="adminlogin.jsp">Try again</a></h2></center><%
           
            }}else{
                %><center><h2><% out.print("You are already logged in!");%>
				<br><a href="admin.jsp">Go to Dashboard</a></h2></center><%
                
            }}
            catch(Exception ex){
        
            out.print(ex.getMessage());
        }
        %>
        
    </body>
</html>
