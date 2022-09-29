<%-- 
    Document   : index
    Created on : 8/09/2022, 5:35:10 p. m.
    Author     : Dev
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.taller3empleadosadmini.entities.Empleados"%>
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
                    <span class="navbar-brand mb-0 h1">Empleados</span>
                </div>
            </nav>
            <!--cuerpo pagina-->
            <div class="w-100 p-3">
                <!--Formulario-->
                <form class="needs-validation" action="EmpServlet?accion=Add" method="post" >
                   <div class="row">
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="documento_tipo" id="documento_tipo" placeholder="name@example.com" value="" required>
                                                        <label for="nombre">Tipo de documento</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe el Tipo de documento.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="documento_numero" id="documento_numero" placeholder="name@example.com" value="" required>
                                                        <label for="apellido">Numero de documento</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe el Numero de documento.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                        
                                                        <div class="row">
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="nombres" id="nombres" placeholder="name@example.com" value="" required>
                                                        <label for="nombre">Nombres</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe nombres.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="apellidos" id="apellidos" placeholder="name@example.com" value="" required>
                                                        <label for="apellido">Apellidos</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe el apellidos.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                        
                                                        <div class="row">
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="departamentos_id" id="departamentos_id " placeholder="name@example.com" value="" required>
                                                        <label for="nombre">ID de departamentos</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe ID de departamentos.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="ciudad" id="ciudad" placeholder="name@example.com" value="" required>
                                                        <label for="apellido">Ciudad</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe la ciudad.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                        <div class="row">
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="correo_electronico" id="correo_electronico" placeholder="name@example.com" value="" required>
                                                        <label for="nombre">Correo Electronico</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe el Correo Electronico.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="telefono" id="telefono" placeholder="name@example.com" value="" required>
                                                        <label for="telefono">telefono</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe la ciudad.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                                <div class="row">
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="direccion" id="direccion" placeholder="name@example.com" value="" required>
                                                        <label for="nombre">Direccion</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe el Correo Electronico.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                    <button type="submit"  class="btn btn-primary" href="">Enviar</button>
                    <button type="reset" id="limpiar" class="btn btn-primary">Limpiar</button>
                </form>
            
            <div class="w-100 p-3">
                <table class="table table-dark table-striped" id="tablaDepartamentos">
                    <thead>
                        <tr>
                            <th scope="col">Id Empleado</th>
                            <th scope="col">Tipo de documento</th>
                            <th scope="col">Numero de documento</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">ID departamento</th>
                            <th scope="col">Ciudad</th>
                            <th scope="col">Dirección</th>
                            <th scope="col">Correo Electronico</th>
                            <th scope="col">Telefono</th>
                            <th scope="col">Fecha de creación</th>
                            <th scope="col">Fecha de Modificación</th>
                        </tr>
                    </thead>
                    <tbody id="datos" name="datos">

                        <c:forEach var="emp" items="${empleados}">           
                            <tr>
                                <td>${emp.id_empleado}</td>
                                <td>${emp.documento_tipo}</td>
                                <td>${emp.documento_numero}</td>
                                <td>${emp.nombres}</td>
                                <td>${emp.apellidos}</td>
                                <td>${emp.departamentos_id}</td>
                                <td>${emp.ciudad}</td>
                                <td>${emp.direccion}</td>
                                <td>${emp.correo_electronico}</td>
                                <td>${emp.telefono}</td>
                                <td>${emp.fecha_hora_crea}</td>
                                <td>${emp.fecha_hora_modifica}</td>
                                <td><a id="delete" href="EmpServlet?accion=delete&id=${emp.id_empleado}"><button type="button" name="btnEliminar" class="btn btn-danger m-3"><i class="bi bi-trash"></i></button></a>
                                    <!--<a id="delete" class="delete" href="#"><button type="button" name="btnEliminar" class="btn btn-danger m-3"><i class="bi bi-trash"></i></button></a>
                                    <input type="text" class="id${dep.id_departamento}" name="id" id="id" value="${dep.id_departamento}"/>-->
                                    <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#number${emp.id_empleado}"><i class="bi bi-pencil-square"></i></button></td>
                            </tr>

                        <div class="modal" tabindex="-1" id="number${emp.id_empleado}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">ID N°: ${emp.id_empleado}</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form class="needs-validation" action="EmpServlet?accion=Update&id=${emp.id_empleado}" method="post">
                                            <div class="row">
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="documento_tipo" id="documento_tipo" placeholder="name@example.com" value="${emp.documento_tipo}" required>
                                                        <label for="nombre">Tipo de documento</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe el Tipo de documento.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="documento_numero" id="documento_numero" placeholder="name@example.com" value="${emp.documento_numero}" required>
                                                        <label for="apellido">Numero de documento</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe el Numero de documento.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                        
                                                        <div class="row">
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="nombres" id="nombres" placeholder="name@example.com" value="${emp.nombres}" required>
                                                        <label for="nombre">Nombres</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe nombres.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="apellidos" id="apellidos" placeholder="name@example.com" value="${emp.apellidos}" required>
                                                        <label for="apellido">Apellidos</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe el apellidos.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                        
                                                        <div class="row">
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="departamentos_id" id="departamentos_id " placeholder="name@example.com" value="${emp.departamentos_id }" required>
                                                        <label for="nombre">ID de departamentos</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe ID de departamentos.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="ciudad" id="ciudad" placeholder="name@example.com" value="${emp.ciudad}" required>
                                                        <label for="apellido">Ciudad</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe la ciudad.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                        <div class="row">
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="correo_electronico" id="correo_electronico" placeholder="name@example.com" value="${emp.correo_electronico }" required>
                                                        <label for="nombre">Correo Electronico</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe el Correo Electronico.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="number" class="form-control" name="telefono" id="telefono" placeholder="name@example.com" value="${emp.telefono}" required>
                                                        <label for="telefono">telefono</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe la ciudad.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="row">
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <input type="text" class="form-control" name="direccion" id="direccion" placeholder="name@example.com" value="${emp.direccion }" required>
                                                        <label for="nombre">Direccion</label>
                                                        <div class="valid-feedback">
                                                            Bien!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Por favor, escribe el Correo Electronico.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">

                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <h6>Fecha y hora de creación: ${emp.fecha_hora_crea}</h6>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating mb-3">
                                                        <h6>Fecha y hora de modificacion: ${emp.fecha_hora_modifica}</h6>
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
