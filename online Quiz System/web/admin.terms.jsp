<%-- 
    Document   : admin.terms
    Created on : Jul 2, 2017, 9:29:59 AM
    Author     : Rishabh Sachan
--%>
<jsp:include page="admin.header.jsp"></jsp:include>
    <br>   <br>  
    <br>   <br>  

    <ul class="nav navbar-nav font5">
        <li><a href="admin.jsp" style="color:black"><span class="glyphicon glyphicon-home"></span> <b>AdminHome</b></a></li>
    </ul> 
<%
    String admin=(String)session.getAttribute("admin");
    if(admin==null){
    response.sendRedirect("adminlogin.jsp");
    }else{
%>
<center>
    <h1>
        <% out.print("Terms and condition for admins of use "); %>
    </h1>
</center>  
<br> <br>  <br> <br>    
<div style="width:80%; margin-left: 10%">
    <h3>We are glad to have you here hope we are doing well to satisfy you with our hard work and services.
        For the better flow of our work following terms and condition should be followed </h3>
    <ul>
        <li>All contents and website is a certified and coping this is a officially wrong and doing so one may have to face 
            problems</li>
        <li>We always welcome feedback from our users but we can remove any user if caused any abusive or unwanted comment </li>
        <li>Any fault in result should not be blamed to the admin as this is a testing website</li>
        <li>All others offence regarding website will be in the favour of admin of the website</li>

    </ul>
</div>
<br>   <br> <br> <br> <br> <br>  <br> <br>  <br> <br>  <br> <br>  <br> <br>  <br> <br>  <br>       
<% }%>
<jsp:include page="footer.jsp"></jsp:include>

