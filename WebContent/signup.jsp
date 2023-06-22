<!DOCTYPE html>
<html lang="en">

    <head>

        <title>Login &amp Register</title>
		
        <link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/UTM-LOGO-FULL.png/1200px-UTM-LOGO-FULL.png">

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">		
    </head>
	
	
  <body style="background: -webkit-radial-gradient(rgb(136, 15, 159), rgb(6, 19, 31));  background: radial-gradient(rgb(136, 15, 159), rgb(6, 19, 31)); background:url('./assets/img/hotel.jpeg');height:100%; min-height:100%;margin:0;padding:0;">  


            <jsp:include page="/Templates/Navbar.jsp"/>
		 


  
        <!-- Top content -->
        <div class="top-content">
            <div class="inner-bg" style="padding:2px">
                <div class="container">
                    <div class="row">
                        <div class='col-lg-4'></div>
                        <div class="col-lg-5">
                        	<div class="form-box" style='margin-bottom: 10%;'>
	                        	<div class="form-top">
	                        		<div class="form-top-left">
                                                    <center><h3>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspRegister As New User</h3></center>
	                            		
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-lock"></i>
	                        		</div>
	                            </div>
	                            <div class="form-bottom" style="color:white;">
				                    <form action="register" method="post" class="login-form">
				                    	<div class="form-group">
				                    		<label for="form-username">User name</label>
				                        	<input required type="text" name="uname" placeholder="Username" class="form-username form-control" id="form-username" style = "height: 50px;    margin: 0;    padding: 0 20px;    vertical-align: middle;    background: #fff;    border: 3px solid #fff;    font-family: 'Roboto', sans-serif;    font-size: 16px;    font-weight: 300;    line-height: 50px;    color: #888;    -moz-border-radius: 4px;    -webkit-border-radius: 4px;    border-radius: 4px;    -moz-box-shadow: none;    -webkit-box-shadow: none;    box-shadow: none;    -o-transition: all .3s;    -moz-transition: all .3s;    -webkit-transition: all .3s;    -ms-transition: all .3s;    transition: all .3s;">											
				                        </div>
                                                        <div class="form-group">
				                    		<label for="form-username">Email Id</label>
				                        	<input required type="email" name="email" placeholder="email" class="form-username form-control" id="form-username" style = "height: 50px;    margin: 0;    padding: 0 20px;    vertical-align: middle;    background: #fff;    border: 3px solid #fff;    font-family: 'Roboto', sans-serif;    font-size: 16px;    font-weight: 300;    line-height: 50px;    color: #888;    -moz-border-radius: 4px;    -webkit-border-radius: 4px;    border-radius: 4px;    -moz-box-shadow: none;    -webkit-box-shadow: none;    box-shadow: none;    -o-transition: all .3s;    -moz-transition: all .3s;    -webkit-transition: all .3s;    -ms-transition: all .3s;    transition: all .3s;">											
				                        </div>
                                                        <div class="form-group">
				                    		<label for="form-inst">Institution</label>
				                        	<input required type="text" name="institution" placeholder="Instituion" class="form-username form-control" id="form-username" style = "height: 50px;    margin: 0;    padding: 0 20px;    vertical-align: middle;    background: #fff;    border: 3px solid #fff;    font-family: 'Roboto', sans-serif;    font-size: 16px;    font-weight: 300;    line-height: 50px;    color: #888;    -moz-border-radius: 4px;    -webkit-border-radius: 4px;    border-radius: 4px;    -moz-box-shadow: none;    -webkit-box-shadow: none;    box-shadow: none;    -o-transition: all .3s;    -moz-transition: all .3s;    -webkit-transition: all .3s;    -ms-transition: all .3s;    transition: all .3s;">											
				                        </div>
                                                        <div class="form-group">
				                    		<label for="form-bperiod">Booking Period</label>
				                        	<input required type="text" name="bkperiod" placeholder="Booking Period" class="form-username form-control" id="form-username" style = "height: 50px;    margin: 0;    padding: 0 20px;    vertical-align: middle;    background: #fff;    border: 3px solid #fff;    font-family: 'Roboto', sans-serif;    font-size: 16px;    font-weight: 300;    line-height: 50px;    color: #888;    -moz-border-radius: 4px;    -webkit-border-radius: 4px;    border-radius: 4px;    -moz-box-shadow: none;    -webkit-box-shadow: none;    box-shadow: none;    -o-transition: all .3s;    -moz-transition: all .3s;    -webkit-transition: all .3s;    -ms-transition: all .3s;    transition: all .3s;">											
				                        </div>
                                                        <div class="form-group">
				                    		<label for="form-username">Gender</label>
				                        	<input required type="text" name="gender" placeholder="Gender" class="form-username form-control" id="form-username" style = "height: 50px;    margin: 0;    padding: 0 20px;    vertical-align: middle;    background: #fff;    border: 3px solid #fff;    font-family: 'Roboto', sans-serif;    font-size: 16px;    font-weight: 300;    line-height: 50px;    color: #888;    -moz-border-radius: 4px;    -webkit-border-radius: 4px;    border-radius: 4px;    -moz-box-shadow: none;    -webkit-box-shadow: none;    box-shadow: none;    -o-transition: all .3s;    -moz-transition: all .3s;    -webkit-transition: all .3s;    -ms-transition: all .3s;    transition: all .3s;">											
				                        </div>
                                                        <div class="form-group">
				                    		<label for="form-username">Date Of Birth</label>
				                        	<input required type="date" name="dob" placeholder="Date Of Birth" class="form-username form-control" id="form-username" style = "height: 50px;    margin: 0;    padding: 0 20px;    vertical-align: middle;    background: #fff;    border: 3px solid #fff;    font-family: 'Roboto', sans-serif;    font-size: 16px;    font-weight: 300;    line-height: 50px;    color: #888;    -moz-border-radius: 4px;    -webkit-border-radius: 4px;    border-radius: 4px;    -moz-box-shadow: none;    -webkit-box-shadow: none;    box-shadow: none;    -o-transition: all .3s;    -moz-transition: all .3s;    -webkit-transition: all .3s;    -ms-transition: all .3s;    transition: all .3s;">											
				                        </div>
				                        <div class="form-group">
				                        	<label for="form-password">Password</label>
				                        	<input required type="password" name="pwd" placeholder="Password" class="form-password form-control" id="form-password">
				                        </div>
                                                        <table>
                                                            <tr>
                                                                <td>
                                                                   <button style="margin-right:5%;" type="reset" class="btn">Reset</button>
                                                                </td> 
                                                                
                                                                <td>
                                                                 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                                </td>
                                                                
                                                                
                                                                <td>
				                                   <button  style="margin-left:5%;" type="submit" class="btn">Register</button>
                                                        
                                                                </td>
                                                                
                                                            </tr>
                                                        </table>
				                    </form>
                                        
                                        
                                           
                                              <table>
                                                  <tr>
                                                      <td>
                                                <a style="color:white" class="nav-link" href="Login"><b>Login</b><span class="sr-only">(current)</span></a>
                                                      </td>
                                                      <td>
                                                          
                                                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                      </td>
                                                      
                                                      <td>
                                                          
                                                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                      </td>
                                                      
                                                      <td>
                                                          
                                                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                      </td>
                                                      
                                                      <td>
                                                          
                                                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                      </td>
                                                      
                                                      <td>
                                                          
                                                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                      </td>



                                             <td>
                                                 <a style="color:red" class="nav-link" href="resetpassword.jsp"><b>Reset Password</b></a>
                                             </td>
                                              </tr>
                                             
                                              </table>
          
          
          
         
			                    
		                    </div>		            
                        </div>
                        <div class='col-lg-4'></div>                        
                    </div>
                    
                </div>
            </div>
        </div>  		

        
                <jsp:include page="/Templates/Footer.jsp"/>
			

   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
       
    </body>

</html>