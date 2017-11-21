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
 <jsp:include page="admin.header.jsp"></jsp:include><br><br><br>
 

 <%  %><ul class="nav navbar-nav font5">
     <li><a href="admin.jsp" style="color:black"><span class="glyphicon glyphicon-home"></span> 
             <b>AdminHome</b></a>
     </li>
 </ul><%
     String admin = (String) session.getAttribute("admin");
     if (admin == null) {
         response.sendRedirect("adminlogin.jsp");
     } else {
 %><center><h3><center> <h1>Message</h1></center></h3></center><%
                            }%>
      <%  

String uid = request.getParameter("uid");
try {
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   String myDb = "jdbc:derby://localhost:1527/rishi";
   Connection DBconn = DriverManager.getConnection(myDb, "rishi", "rishi");
   java.sql.Statement st = DBconn.createStatement();
   ResultSet rs = st.executeQuery("select * from users2 where uid='" + uid + "'");
   boolean status = rs.next();
   if (status) {
       st.execute("delete from users2 where uid='" + uid + "'");
       st.execute("delete from record where uid='" + uid + "'");
      %><script type="text/javascript">
            alert("User and User record Successfully Deleted");
      </script><%
      %><center><%   out.print("User and User Record Successfully Deleted");%></center><%
      %><center><a href="users.detail.jsp">Go Back</a></center><%
      }else {
            %><script type="text/javascript">
                 alert("No User Found");
            </script><%
      %><center><%   out.print("No User found or Error Found");%></center><%
      %><center><a href="users.detail.jsp">Go Back</a></center><%
                         }
       } catch (Exception ex) {
         out.print(ex.getMessage());
       }
        %>
    </body>
</html>
