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
                
                <div align="center" style="margin: auto;">
                    <img src="https://cdn-icons-png.flaticon.com/512/7331/7331166.png" height="60" width="60">
                    <h4 style="color:red;">Invalid username! Please try again!</h4>
                    
                    <br><br><br><br><br><br>
                    
                    <a  href="resetpassword.jsp">  <button  class="btn btn-danger">Return</button>
                  			
	            </a>
                </div>
              
                
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