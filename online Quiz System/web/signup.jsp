<%-- 
    Document   : signup
    Created on : Jun 13, 2017, 1:17:50 AM
    Author     : Rishabh Sachan
--%>

 <jsp:include page="header.jsp"></jsp:include>
<br /><br /><br /><br />
 <%
        String uname=(String)session.getAttribute("uname");
                            if(uname==null){
                          
                            }else{
                             %><script type="text/javascript">alert("You are already registerd");</script><% 
                            response.sendRedirect("index.jsp"); 
                                             }
                        %>
<div class="sign" style="">
   
    <div class="row">
        <div class="col-sm-7" style="text-align:justify;background-image: url(i/img0.png); background-repeat: no-repeat; height:100%;background-size: 90%;margin-left:40px;">
            <center class="animated fadeInUp"> <img src="i/online.png" style="margin-top:5%; width:55%; margin-left: 20%; "></center>
            <br><br>
            <h2><center class="animated fadeInLeft"><b class="font3">LUCK</b><span class="font1"> is for the lazy...</span><br><b class="font3" style="color:red">SUCCESS</b><span class="font1">is for those who</span><br><b class="font3" style="color:green;">WORK HARD</b> </center></h2>
            <br><br>
        </div>
    <div class="col-sm-4" style="text-align:justify">
	<div class="panel panel-primary animated zoomIn">
		<div class="panel-heading ">
                    <img src="i/user2.png" alt="." width="100px"><span style="font-size: 30px;">Sign up for FREE</span>
		</div>
		<div class="panel-body">
                    
                            <form action="signup.inc.jsp">
                                
                                
                                   
                               
                                    <div class="form-group">
                                      <label for="first">Name:</label>
                                  <table>    <tr>
                                      <td><input type="text" name="firstname" placeholder="First Name" class="form-control" required></td>
                                      <td><input type="text" name="lastname" placeholder="Last Name" class="form-control"required><td>
                                            </tr>    
                                 </table>
                                    </div>
                                
                                <div class="form-group">
                                      <label for="mname">Mother's Name:</label>
                                      <input type="text" name="mname" placeholder="Mother's Name" class="form-control" required>
                                    </div>
                                
                                <div class="form-group">
                                      <label for="fname">Fathers's Name:</label>
                                      <input type="text" name="fname" placeholder="Father's Name" class="form-control" required>
                                    </div>

                                    <div class="form-group">
                                      <label for="email">E-mail:</label>
                                      <input type="email" name="email" placeholder="Ex: abc_xyz@gmail.com" class="form-control"required>
                                    </div>
                                    <div class="form-group">
                                      <label for="uid">User Id:</label>
                                      <input type="text" name="uid" placeholder="Set a unique user id" class="form-control"required>
                                    </div>
                                    <div class="form-group">
                                      <label for="pwd">Password:</label>
                                      <input type="password" name="pwd" placeholder="set a password" class="form-control"required>
                                      <input type="password" name="pwd2" placeholder="Confirm password" class="form-control"required>
                                    </div>
                                      
                                    <div class="form-group">
                                         <label for="seq">Select security question:</label>
                                        <select class='form-control' id='sell' name='seq'>
                                            <option>What is the name of your favorite childhood friend?</option>
                                             <option>What street did you live on in third grade?</option>
                                             <option>In what city does your nearest sibling live?</option>
                                             <option>What is your maternal grandmother's maiden name?</option>
                                             <option>Where were you when you first heard about 9/11?</option>
                                        </select>
                                          <input type="text" name="sea" placeholder="Sequrity answer" class="form-control" required>
                                    </div>


                                   <div class="radio">
                                        <b>Gender:</b><br>
                                         <label><input type="radio" name="gen" value="Male"required>Male </label>
                                         <label><input type="radio" name="gen" value="Female"required>Female </label>
                                    </div>

                                   <div class="checkbox">
                                      <label><input type="checkbox" required> I accept <a href="terms.jsp" >Terms and Condition</a> of use</label>
                                    </div>
                                    <center>
                                    <button type="reset" class="btn btn-default" >Reset</button>
                                    <button type="submit" class="btn btn-default" >Register me</button>
                            </form>		
		</div>
					
	</div>
     </div>
     <div class="col-sm-1" style="text-align:justify"></div>
    	
    </div>
	
		<br /><br /><br /><br />
	</div>
	<br /><br />

<br />


 <jsp:include page="footer.jsp"></jsp:include>