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
              <jsp:param name="opcion" value="Seminarios"/>
      </jsp:include>
      <div class="container">
          <h1>Formulario De Seminarios</h1>
         
          <br>
          <form action="ClienteControlador" method="POST">
              <input type="hidden" name="id" value="${seminarios.id}">
              <div class="mb-3">
                  <label for="titulo" class="form-label">Titulo:</label>
                  <input type="text"  name="titulo" value="${seminarios.titulo}" class="form-control" id="titulo" placeholder="Escriba el titulo">
              </div>
              <div class="mb-3">
                  <label for="fecha" class="form-label">Fecha:</label>
                  <input type="text" name="fecha" value="${seminarios.fecha}" class="form-control" id="fecha" placeholder="Escriba la fecha">
              </div>
              <div class="mb-3">
                    <label for="cupos" class="form-label">Cupos:</label>
                    <input type="text" name="cupos" value="${seminarios.cupos}" class="form-control" id="cupos" placeholder="Escriba los cupos">
                </div>
              <button type="submit" class="btn btn-primary">Enviar</button>
          </form>

      </div>  
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
  </body>
</html>