<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">
        
        <title>Proyecto ventas</title>
  </head>
  <body>
      <jsp:include page="META-INF/Menu.jsp">
              <jsp:param name="opcion" value="participantes"/>
      </jsp:include>
      <div class="container">
          <h1>Formulario De Participantes</h1>
         
          <br>
          <form action="ClienteControlador" method="POST">
              <input type="hidden" name="id" value="${participante.id}">
              <div class="mb-3">
                  <label for="nombre" class="form-label">Nombre:</label>
                  <input type="text"  name="nombre" value="${participante.nombre}" class="form-control" id="nombre" placeholder="Escriba su nombre">
              </div>
              <div class="mb-3">
                  <label for="apellido" class="form-label">Apellidos:</label>
                  <input type="text" name="apellido" value="${participante.apellidos}" class="form-control" id="apellido" placeholder="Escriba su apellido">
              </div>
              <div class="mb-3">
                    <label for="celular" class="form-label">Seminario:</label>
                    <input type="text" name="celular" value="${participante.seminario}" class="form-control" id="seminario" placeholder="Escriba el seminario">
                </div>
              <button type="submit" class="btn btn-primary">Enviar</button>
          </form>

      </div>  
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
  </body>
</html>