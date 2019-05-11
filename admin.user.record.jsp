<%-- 
    Document   : admin.user.record
    Created on : Jul 6, 2017, 9:54:05 AM
    Author     : Rishabh Sachan
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Records</title>
        <link rel="stylesheet" href="css/bootstrap.css"/>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
      <%
       try{
         String uname=(String)request.getParameter("uname");
         if(uname==null){
            response.sendRedirect("index.jsp");
         }else{
          %><span style="float:right">
                 <ul class="nav navbar-nav font5" >
                             <li><a href="admin.jsp" style="color:black"><span class="glyphicon glyphicon-home"></span> <b> Go to Dashboard</b></a></li>
                 </ul>
             </span><% 
                %><span style="float:left">
                 <ul class="nav navbar-nav font5" >
                             <li><a href="users.detail.jsp" style="color:black"> <b><< Go Back</b></a></li>
                 </ul>
             </span><%
                             
%><center style="background-color: lightblue;color:darkblue"><span style="font-size: 35px">Record: </span><span style="font-size: 25px">User id- <% out.print("<b>"+uname+"</b>");%></span></br></center><hr><%

            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String myDb= "jdbc:derby://localhost:1527/rishi";
            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
            java.sql.Statement st=DBconn.createStatement();
      
              ResultSet rs= st.executeQuery("select * from record where uid='"+uname+"'");
              int i=0;
              %><div class="table-responsive">
                      <table class='table' border="1"> 
                    <thead>     
                   <tr> 
                       
                       <th>S.N.</th>
                        <th>Date & Time</th> 
                        <th>Subject</th>
                        <th>Score</th>
                        <th>Max. Marks</th>
                        <th>percentage</th>
    
                   </tr>
                   </thead>
                     <tbody>  
                              <%  
              
            while(rs.next()){
                
            String date=rs.getString("date");
            String score=rs.getString("score"); 
            String mm=rs.getString("mm");
            String per=rs.getString("per");
            String sub=rs.getString("sub");      
            i=i+1;

                        %><tr><%
                           %><td><%out.print(i);%></td><%   
                           %><td><%out.print(date);%></td><%
                           %><td><%out.print(sub);%></td><%
                           %><td><%out.print(score);%></td><%
                           %><td><%out.print(mm);%></td><%
                           %><td><%out.print(per+" %");%></td><%                          
                       %></tr><% 
           
}%></tbody></table></div><%
                  }}catch(Exception ex){
                        out.print(ex.getMessage());
                    }
      
%>
    </body>
</html>
