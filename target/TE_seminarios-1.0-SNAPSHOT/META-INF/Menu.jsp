<%
    String opcion = request.getParameter("opcion");
    
%>          
    
  <header>
      <!-- Fixed navbar -->
      <nav class="navbar navbar-expand-md navbar-dark bg-dark">
     <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="LoginControlador" class="navbar-brand">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="ParticipanteControlador" class="nav-link px-2 <%=(opcion.equals("participantes")? "text-secondary": "text-white") %>">Participante</a></li>
          <li><a href="SeminarioControlador" class="nav-link px-2 <%=(opcion.equals("seminarios")? "text-secondary": "text-white") %>">Seminarios</a></li>
        </ul>
      </div>
    </div>
   </nav>
  </header>