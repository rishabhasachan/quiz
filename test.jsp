
<jsp:include page="header.jsp"></jsp:include>
<div class="container"  style="margin-top:60px;">
<jsp:include page="face.jsp"></jsp:include>

	<div class="row">
	<div class="col-sm-12">                   <%
                            String uname=(String)session.getAttribute("uname");            
                            %>
                <div style="float:left;margin-right:20px; margin-top:10px;">	
                <table>  
                <tr class="font5">   
                <td><!--this is new pop up style form added into header-->          
<button onclick="document.getElementById('id01').style.display='block'" style="width:100%;width:auto; background-color: #4CAF50;
                                                                                                    color: white;
                                                                                                    padding: 14px 20px;
                                                                                                    margin: 8px 0;
                                                                                                    border: none;
                                                                                                    cursor: pointer;
                                                                                                   ">Change Password</button>

<div id="id01" class="modal">
   
  <form class="modal-content animate" action='chpass.inc.jsp' method='post'>
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="i/user.png" alt="Avatar" class="avatar">
    </div>

    <div class="container1">
      <label><b>Current Password</b></label>
      <input type="password" name='password0' class="form-control" placeholder="Enter current password" required>
      
      <label><b>New Password</b></label>
      <input type="password" name='password' class="form-control" placeholder="Enter new password" required>

      <label><b>Confirm Password</b></label>
      <input type='password' name='password2' class="form-control" placeholder="Confirm password" required>
        <br>
     <button type="submit" name="uid" value="<%= uname %>" class="btn btn-primary"style="width:100%;">Change Password</button>
     <!--<input type="checkbox" checked="checked"> Remember me--> 
    </div>

    <div class="container1" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="btn btn-danger">Cancel</button>
      
       
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

         </td>    
         <td>  <form action='record.jsp' method='post'>      <button name="uname" value="<%= uname %>" style="width:100%;width:auto; background-color: #4CAF50;
                      color: white;
                      padding: 14px 20px;
                      margin: 8px 0;
                      border: none;
                      cursor: pointer;
                      ">My Record</button></form>
      </td>                
                      
                    </tr>            
         </table>
         </div>             <%
                               if(uname==null){
                            response.sendRedirect("index.jsp");
                            }else{
                        %><span style="color: darkblue;"><h3><%    out.print("You are Logged in as UserId: <b>"+uname +"</b>, You can start your test now"); %></h3></span><br><%  
                            }%>
                        <div><center><h2 style="color:black">Select Subject</h2></center></div>
                        
                        
	                   <div class="row" >
                               <h3 class="font2"><b>Programming</b></h3>
					  <div class="col-md-3" style="text-align:center;" >
						<a href="html2.jsp" class="thumbnail" style="background-color:success;">
						  <h2>HTML</h2><p> Start test  </p> 
						   
						</a>
					  </div >
					  <div class="col-md-3" style="text-align:center;">
						<a href="css2.jsp" class="thumbnail"style="background-color:success;">
						   <h2>CSS</h2> <p> Start test  </p>
						 
						</a>
					  </div >
					  <div class="col-md-3"style="text-align:center;">
						<a href="javascript2.jsp" class="thumbnail"style="background-color:success;">
						  <h2>JavaScript</h2>  <p> Start test  </p>
						 
						</a>
					  </div>
					    <div class="col-md-3"style="text-align:center;">
						<a href="sql2.jsp" class="thumbnail"style="background-color:success;">
						   <h2>SQL</h2><p> Start test  </p> 
						 
						</a>
					  </div>
					    
					  					 
					</div>	

					<div class="row" >
                                         <h3 class="font2"><b>General Knowledge</b></h3>
                                        <div class="col-md-3"style="text-align:center;">
                                            <form action='Exam.jsp' method='get'>
                                              
                                                <button type='submit'  name='subject' value='Geography' class="btn btn-primary btn-lg" style="height:110px;width:260px;"> <h2>Geography</h2><p> Start test </p></button>
                                            </form>
					</div>
                                        <div class="col-md-3" style="text-align:center;">
					   <form action='Exam.jsp' method='get'>
                                                <button type='submit' name='subject' value='History' class="btn btn-primary btn-lg" style="height:110px;width:260px;"> <h2>Indian History</h2><p> Start test </p></button>
                                            </form>
                                        </div>	
                                        <div class="col-md-3" style="text-align:center;">
                                            <form action='Exam.jsp' method='get'>
                                                <button type='submit' name='subject' value='Economy' class="btn btn-primary btn-lg" style="height:110px;width:260px;" > <h2>Indian Economy</h2><p> Start test </p></button>
                                            </form>
					</div>
                                        <div class="col-md-3" style="text-align:center;">
                                            <form action='Exam.jsp'method='get'>
                                                <button type='submit' name='subject' value='Polity' class="btn btn-primary btn-lg" style="height:110px;width:260px;"> <h2>Indian Polity</h2><p> Start test </p></button>
                                            </form>
					</div>
                                            
					</div>
                                            <br>
                            <div class="row" >
                                         <h3 class="font2"><b>Science</b></h3>
                                        <div class="col-md-3" style="text-align:center;">
                                            <form action='Exam.jsp'method='get' >
                                                <button type='submit' name='subject' value='Physics' class="btn btn-default btn-lg" style="height:110px;width:260px;" ><h2>Physics</h2><p> Start test </p></button>
                                            </form>
					</div>
                                         <div class="col-md-3" style="text-align:center;">
                                            <form action='Exam.jsp'method='get' >
                                                <button type='submit' name='subject' value='Chemistry' class="btn btn-default btn-lg" style="height:110px;width:260px;" ><h2>Chemistry</h2><p> Start test </p></button>
                                            </form>
					</div>
                                         <div class="col-md-3" style="text-align:center;">
                                            <form action='Exam.jsp'method='get' >
                                                <button type='submit' name='subject' value='Biology' class="btn btn-default btn-lg" style="height:110px;width:260px;" ><h2>Biology</h2><p> Start test </p></button>
                                            </form>
					</div>
                                         <div class="col-md-3" style="text-align:center;">
                                            <form action='Exam.jsp'method='get' >
                                                <button type='submit' name='subject' value='Science' class="btn btn-default btn-lg" style="height:110px;width:260px;" ><h2>General Science</h2><p> Start test </p></button>
                                            </form>
					</div>
			    </div>
					
	</div>
	</div>
<br>


<br>
</div>
<br><br><br><br><br>
<jsp:include page="footer.jsp"></jsp:include>