<%-- 
    Document   : index
    Created on : 8/09/2022, 5:35:10 p. m.
    Author     : Dev
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.taller3empleadosadmini.entities.Departamentos"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reto Java</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <<script src="resources/js/people/people.js"></script>
    </head>
    <body  style="background-color: #212529;">
        <div class="container-fluid">
            <!-- Esto es el menu -->
            <nav class="navbar navbar-dark bg-dark">
                <div class="container-fluid">
                    <span class="navbar-brand mb-0 h1">Departamentos</span>
                </div>
            </nav>
            <!--cuerpo pagina-->
            <div class="w-100 p-3">
                <!--Formulario-->
                <form class="needs-validation" action="DepartamentosServlet?accion=Add" method="post" >
                    <div class="row">
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" name="nombre_departamento" id="nombre_departamento" placeholder="name@example.com" required>
                                <label for="nombre">Nombre del departamento</label>
                                <div class="valid-feedback">
                                    Bien!
                                </div>
                                <div class="invalid-feedback">
                                    Por favor, escribe el nombre del departamento.
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" name="codigo_departamento" id="codigo_departamento" placeholder="name@example.com" required>
                                <label for="apellido">Codigo del departamento</label>
                                <div class="valid-feedback">
                                    Bien!
                                </div>
                                <div class="invalid-feedback">
                                    Por favor, escribe el codigo del departamento.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3 form-check">
                        <div class="valid-feedback">
                            Bien!
                        </div>
                        <div class="invalid-feedback">
                            Por favor, acepta los terminos y condiciones.
                        </div>
                    </div>
                    <button type="submit"  class="btn btn-primary" href="">Enviar</button>
                    <button type="reset" id="limpiar" class="btn btn-primary">Limpiar</button>
                </form>
            </div>
            <div class="w-100 p-3">
                <table class="table table-dark table-striped" id="tablaDepartamentos">
                    <thead>
                        <tr>
                            <th scope="col">Id Departamento</th>
                            <th scope="col">Departamento Codigo</th>
                            <th scope="col">Departamento Nombre</th>
                            <th scope="col">Fecha y Hora Creada</th>
                            <th scope="col">Fecha y Hora Modificada</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody id="datos" name="datos">

                        <c:forEach var="dep" items="${departamentos}">           
                            <tr>
                                <td>${dep.id_departamento}</td>
                                <td>${dep.departamento_codigo}</td>
                                <td>${dep.departamento_nombre}</td>
                                <td>${dep.fecha_hora_crea}</td>
                                <td>${dep.fecha_hora_modifica}</td>
                                <td><a id="delete" href="DepartamentosServlet?accion=delete&id=${dep.id_departamento}"><button type="button" name="btnEliminar" class="btn btn-danger m-3"><i class="bi bi-trash"></i></button></a>
                                    <!--<a id="delete" class="delete" href="#"><button type="button" name="btnEliminar" class="btn btn-danger m-3"><i class="bi bi-trash"></i></button></a>
                                    <input type="text" class="id${dep.id_departamento}" name="id" id="id" value="${dep.id_departamento}"/>-->
                                    <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#number${dep.id_departamento}"><i class="bi bi-pencil-square"></i></button></td>
                            </tr>

                        <div class="modal" tabindex="-1" id="number${dep.id_departamento}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">ID N°: ${dep.id_departamento}</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form class="needs-validation" action="DepartamentosServlet?accion=Update&id=${dep.id_departamento}" method="post">
                                            <div class="row">
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="departamento_cod_nuevo" id="departamento_cod_nuevo" placeholder="name@example.com" value="${dep.departamento_codigo}" required>
                                                        <label for="nombre">Departamento Codigo</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe el codigo del departamento.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="departamento_nombre_nuevo" id="departamento_nombre_nuevo" placeholder="name@example.com" value="${dep.departamento_nombre}" required>
                                                        <label for="apellido">Nombre Departamento</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe el nombre del departamento.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">

                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <h6>Fecha y hora de creación: ${dep.fecha_hora_crea}</h6>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <h6>Fecha y hora de modificacion: ${dep.fecha_hora_modifica}</h6>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Actualizar</button>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
    </body>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict'

            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.querySelectorAll('.needs-validation')

            // Loop over them and prevent submission
            Array.prototype.slice.call(forms)
                    .forEach(function (form) {
                        form.addEventListener('submit', function (event) {
                            if (!form.checkValidity()) {
                                event.preventDefault()
                                event.stopPropagation()
                            }

                            form.classList.add('was-validated')
                        }, false)
                    })
        })()
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</html>
