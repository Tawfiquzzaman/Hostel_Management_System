<!--Navigation Bar-->
    <nav class="navbar navbar-expand-md navbar-dark font-weight-bold nav justify-content-center nav-justified" style="background:url('https://www.xmple.com/wallpaper/plain-one-colour-solid-color-white-single-2000x1200-c-eaf1fd-f-24.svg'); border:3px solid black;">
      <a class="navbar-brand" href="home.jsp">
          <img height="20" width="50" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/UTM-LOGO-FULL.png/1200px-UTM-LOGO-FULL.png" alt="UTM Logo">				
	  </a>
	  
	 <!-- When navigation bar is collapsed"-->
	 <div class="collapse navbar-collapse" style="display:inline!important;" id="navbarCollapse">
        <ul class="navbar-nav mr-auto nav nav-justified">
          <li  class="nav-item">
            <a style="color:black" class="nav-link" href="/HostelManagementSystem/WelcomeServlet">Home<span class="sr-only">(current)</span></a>
          </li>
          
          
          <li class="nav-item">
            <a style="color:black" class="nav-link" href="bookroom.jsp">Request Service</a>
          </li>
          
          
          <% if(session.getAttribute("userid")!=null) { %>
          <li class="nav-item">
            <a style="color:black" class="nav-link" href="contact">Hi ! ${sessionScope.uname }</a>
          </li>
          <li class="nav-item">
            <a style="color:black" class="nav-link" href="logout">Logout</a>
          </li>
          <% } else { %>
          <li class="nav-item">
              <a style="color:black" class="nav-link" href="/HostelManagementSystem/Login">Login
             <img height="30" width="30" src="https://toppng.com/uploads/preview/free-login-icon-png-ico-11563401608uwa0wznx2e.png" alt="Login">     
              </a>
          </li>
          <% }  %>
        </ul>
      </div>
    </nav>