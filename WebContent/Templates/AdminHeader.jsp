            
<header>
        <nav class="navbar navbar-expand-md navbar-dark font-weight-bold nav justify-content-center nav-justified" style="background:url('https://www.xmple.com/wallpaper/plain-one-colour-solid-color-white-single-2000x1200-c-eaf1fd-f-24.svg'); border:3px solid black;">
                <div class="collapse navbar-collapse" style="display:inline!important;" id="navbarCollapse">
        <ul class="navbar-nav mr-auto nav nav-justified">
          <li  class="nav-item">
            <a style="color:black" class="nav-link" href="/HostelManagementSystem/WelcomeServlet">Home<span class="sr-only">(current)</span></a>
          </li>
          
          
          <li class="nav-item">
            <a style="color:black" class="nav-link" href="dashboard.jsp">Dashboard</a>
          </li>
          <%
          if(session.getAttribute("role")=="Admin") { %>
          <li class="nav-item">
            <a style="color:black" class="nav-link" href="users.jsp">Users</a>
          </li>
          <li class="nav-item">
            <a style="color:black" class="nav-link" href="logout">Logout</a>
          </li>
          <% } %>
          <li class="nav-item">
            <a style="color:black" class="nav-link" href="news">News</a>
          </li>
          
          
        </ul>
        </nav>
</header>


