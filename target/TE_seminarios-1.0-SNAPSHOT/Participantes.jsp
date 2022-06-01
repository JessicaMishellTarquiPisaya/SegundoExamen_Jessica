<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
      <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">
   </head>
  <body>
      <center><textarea name="nombre" rows="4" cols="35" readonly="readonly">

PRIMER PARCIAL TEM-742
Nombre:Jessica Mishell Tarqui Pisaya
Carnet: 6972928
        </textarea>
      <jsp:include page="META-INF/Menu.jsp">
              <jsp:param name="opcion" value="participantes"/>
      </jsp:include>
      <div class="container">
          <h1>Registro de Participantes</h1>    
          <br>
          <a href="ParticipanteControlador?action=add" class="btn btn-primary btn-sm mb-3"><i class="fa-solid fa-circle-plus"></i> Nuevo </a>
          <br>
          <table class="table table-striped">
              <tr>
                  <th>ID</th>
                  <th>NOMBRES</th>
                  <th>APELLIDOS</th>
                  <th>SEMINARIO</th>
                  <th>CONFIRMADO</th>
                  <th></th>
                  <td></td>
              </tr>
              <c:forEach var="item" items="${participantes}">
              <tr>
                  <td>${item.id}</td>
                  <td>${item.nombres}</td>
                  <td>${item.apellidos}</td>
                  <td>${item.id_seminario}</td>
                  <td>${item.confirmado}</td>
                  <td><a href="ParticipanteControlador?action=edit&id=${item.id}" ><i class="fa-solid fa-pen-to-square"></i></a></td>
                  <td><a href="ParticipanteControlador?action=delete&id=${item.id}" onclick="return(confirm('esta seguro de eliminar el registro?'))"><i class="fa-solid fa-trash"></i></a></td>
              </tr>
              </c:forEach>
          </table>
      </div>    </center>
    
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
     </body>
</html>

