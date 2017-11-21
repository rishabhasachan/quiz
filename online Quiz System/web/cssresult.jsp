<%-- 
    Document   : cssresult
    Created on : Jun 26, 2017, 4:31:36 AM
    Author     : Rishabh Sachan
--%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HTML Exam</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
          <%
                            String uname=(String)session.getAttribute("uname");
                            if(uname==null){
         %><script type="text/javascript">alert("YOU ARE NOT LOGGED IN!");</script><%
                            response.sendRedirect("index.jsp");
                            }else{
                        %><center style="background-color: lightblue"> <h1>Result</h1></center> 
                            <ul class="nav navbar-nav font5" style="float:right">
                             <li><a href="test.jsp" style="color:black"><span class="glyphicon glyphicon-home"></span> <b> Go to Dashboard</b></a></li>
                            </ul><%  
                            }
         %>

        <%  
            int i=1;
            String nameD="answer";
 
          String n2= (String)request.getParameter("noq");
          int n= Integer.parseInt(n2);

            String[] nameA=new String[20];
            
            for(i=1;i<=n;i++){
            nameD=nameD+i;
            nameA[i]= request.getParameter(nameD);
            nameD="answer";
           
            }
                 try{

                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            String myDb= "jdbc:derby://localhost:1527/rishi";
                            Connection DBconn = DriverManager.getConnection(myDb,"rishi","rishi");
                            java.sql.Statement st=DBconn.createStatement();

                             ResultSet rs1= st.executeQuery("select * from users2 where uid='"+uname+"'");
                            if(rs1.next()){
                            String fname=rs1.getString("firstname");
                            String lname=rs1.getString("lastname");
          %><center><h3><table><td><% out.print("<b>"+"Name: "+"</b>"+fname+" "+lname+"<br>");%></td><td style="padding-left:20px;"><%
                            out.print("<b>"+"Subject:"+"</b>"+ "CSS" ); %></td></table></h3></center><%
                            }

                            ResultSet rs= st.executeQuery("select * from test where sub='css'");
                          
                             i=1;
                             int number=0;%><center><%
                                 
                                 
                  %><div class="table-responsive">
                      <table class='table' border="1"> 
                          <thead>
                   <tr> 
                       <th>S.N.</th>
                        <th>Your Answer</th> 
                        <th>Correct Answer</th>
                        <th>Status</th>
  
                   </tr>
                          </thead>
                          <tbody>
                      <%
                     
                            while(rs.next()){
                           
                            String s=rs.getString("sub");
                            String q=rs.getString("que");
                            String a=rs.getString("ans");
        
                    %><tr><%    
                        %><td><%out.print("Question: "+i);%></td><%
                        %><td><%out.print(nameA[i].toUpperCase());%></td><% //Your Answer
                        %><td><%out.print(a.toUpperCase());%></td><% //CORRECT ANSWER
                            
                            if(nameA[i].equals(a)){
                                
                        %><td><%out.print(" CORRECT  "); 
                        %>  <img src="i/correct.png" alt="Correct answer" height="30" width="30"></td><% 
                               number++;  
                            }else if(nameA[i].equals("Not Selected")){
                           %><td><% out.print(" Not selected "+" "); 
                             %><img src="i/wrong.png" alt="Wrong answer" height="30" width="30"></td><% 
                        }
                        else{

                        %><td><%      out.print(" WRONG  ");  
                        %><img src="i/wrong.png" alt="Wrong answer" height="30" width="30"></td><% 
                            
                            }
                              
                            i++;
                                %></tr><%         } %></tbody></table></div><%
                %><h3><%
                  out.print("<b>"+"you scored: "+number+"/"+n+"</b><br>");
                    float per=(number*100)/n;
                 out.print("<b>"+"Percentage: "+per+"%"+"</b>");
                 
                 %></h3><br></center><%
                 
         String num=""+number ;
         String mm=""+n;;
         String p=""+per;  
         Date date = new Date();
         String d=date.toString();
         st.execute("insert into record values('"+uname+"','"+d+"','"+num+"','"+mm+"','"+p+"','CSS')");      
                 
                 
                 }catch(Exception ex){
                            out.print(ex.getMessage());
                        }
                             
        %>
        
        <center>
                    <ul class="nav navbar-nav font5">
                    <li><a href="test.jsp" style="color:black"><span class="glyphicon glyphicon-home"></span> <b> Go to Dashboard</b></a></li>
                    </ul>
                </center>
    </body>
</html>
