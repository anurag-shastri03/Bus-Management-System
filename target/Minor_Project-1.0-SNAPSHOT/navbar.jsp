<!-- ---------------------------Navigation--------------------------------------- -->
<section class="navigation"style="position: sticky" >
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

      <a class="navbar-brand " href="index.jsp"><img src="img/bus.jpg" alt="logo" style="width:30px; border-radius: 30px; "> </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
      <i class="fa-solid fa-xmark"style="display:none" onclick="hideMenu()"></i>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about.jsp">About </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contact.jsp">Contact </a>
        </li>
        <li class="nav-item">
          <a class="nav-link"  style= "padding-left: 820px" href="#"></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login_page.jsp">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="register_page.jsp"><span class="fa fa-user-plus"> </span>    Sign Up</a>
        </li>
      </ul>
    </div>

    <i class="fa-sharp fa-solid fa-bars"style="display:none" onclick="showMenu()"></i> 
    </nav>
</section>