<!DOCTYPE html>
<html lang="en">

    <head>

        <title>Book Room</title>
		
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
            
            <br>
            <br>
		 
             
            <div style="width:1000px;
                
                 margin: auto;
                 height: 500px;
                padding: 60px 35px 35px 35px;
                border-radius: 40px;
                background: #ecf0f3;
                opacity: 0.7;
                box-shadow: 13px 13px 20px #cbced1,
              -13px -13px 20px 0.5;
">
                <h2 style="color:black"><b>Booking Information</b></h2>
                <hr width="50%" color="black" size="10px" align="center">
                <form action="roomsearch.jsp" method="post">
                <div align="center">
                <table>
                    <tr>
                        <td>
                            <h3 style="color:red">Select Date</h3>
                            <hr width="100%" color="black" size="10px" align="center">
                        </td>
                        
                        <td>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        </td>
                        <td>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        </td>
                        
                        <td>
                            <h3 style="color:red">Select Time</h3>
                            <hr width="100%" color="black" size="10px" align="center">
                        </td>
                        <td>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        </td>
                        
                        <td>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        </td>
                        
                        <td>
                            <h3 style="color:red">Select Room</h3>
                            <hr width="100%" color="black" size="10px" align="center">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <input type="date" name="bdate" required>
                        </td>
                        
                        <td>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        </td>
                        <td>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        </td>
                        
                        <td>
                            <input type="time" name="btime" required>
                        </td>
                        <td>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        </td>
                        
                        <td>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        </td>
                        
                        <td>
                            <label for="room"></label>

                             <select name="room" id="room">
                                 <option value="">Choose Room Type</option>
                                   <option value="single">Single Bed Room</option>
                                   <option value="double">Double Bed Room</option>
                                   <option value="triple">Triple Bed Room</option>
                                   
                               </select>
                        </td>
                    </tr>
                </table>
                    
                </div>
                    
                    <br>
                    <br>
                    <br>
                    <br>
                    
                   
                    <hr width="100%" color="black" size="10px" align="center">
                    
                    <div align="center">
                        
                        <button   type="submit" class="btn">Book Room</button>
                    
                    </div>
                    
                </form>
                
          
                
            </div>
            
            <br>
            <br>
            
            
  
        	

        
                <jsp:include page="/Templates/Footer.jsp"/>
			

   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
       
    </body>

</html>