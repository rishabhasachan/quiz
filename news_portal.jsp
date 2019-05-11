 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%  
                                             
        try {

    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String myDb = "jdbc:derby://localhost:1527/rishi";
    Connection DBconn = DriverManager.getConnection(myDb, "rishi", "rishi");
    java.sql.Statement st = DBconn.createStatement();


                                                
    ResultSet rs = st.executeQuery("select * from news where date is not null order by date desc");

    while (rs.next()) {
        String d = rs.getString("date");
        String h = rs.getString("head");
        String n = rs.getString("news");
%><b><%
    out.print(d + ": ");%></br><%
             out.print(" " + h);
%></b><%%><br><%
    out.print("" + n);%><hr><%
        }
    } catch (Exception ex) {
        out.print(ex.getMessage());
    }
%>