
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="utm.hostel.management.DbUtils"%>
<%@page import="java.sql.Connection"%>
<html>
<head>

        <title>Admin Dashboard</title>
		
        <link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/UTM-LOGO-FULL.png/1200px-UTM-LOGO-FULL.png">

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">		
    </head>
	
	
  <body style="background: -webkit-radial-gradient(rgb(136, 15, 159), rgb(6, 19, 31));  background: radial-gradient(rgb(136, 15, 159), rgb(6, 19, 31)); background:url('./assets/img/hotel.jpeg');height:100%; min-height:100%;margin:0;padding:0;">  


            <jsp:include page="/Templates/AdminHeader.jsp"/>
            
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
                <h2 style="color:black"><b>Admin Panel - Users</b></h2>
                <hr width="50%" color="black" size="10px" align="center">
                
                <div>
                <table style="width:100%;margin:auto;">
                    <tr>
                        <td>
                            <h3 style="color:red">Name</h3>
                        </td>
                        <td>
                            <h3 style="color:red">Email</h3>
                        </td>
                        <td>
                            <h3 style="color:red">Gender</h3>
                        </td>
                        <td>
                            <h3 style="color:red">Status</h3>
                        </td>
                        
                        <td>
                            <h3 style="color:red">Action</h3>
                        </td>
                        
                    </tr>
                    <%
                    Connection con=DbUtils.connect();
                    ResultSet rs=con.createStatement().executeQuery("select * from users");
                    while(rs.next()){
                    %>
                    <tr style="color:black">
                    	<td><%= rs.getString("uname") %></td>
                    	<td><%= rs.getString("userid") %></td>
                    	<td><%= rs.getString("gender") %></td>
                    	<td><%= rs.getBoolean("isactive") ? "Active":"Inactive" %></td>
                   
                        <td>
                        <%
                        if(!rs.getBoolean("isactive")){
                        %>
                            <a href="activate?id=<%=rs.getString("userid") %>" type="button" class="btn btn-success btn-sm">Activate User</button>
                            <% } %>
                        </td>
                        
                    </tr>
                    <% } %>
                    
                    
                </table>
                    
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