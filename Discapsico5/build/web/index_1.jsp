<%-- 
    Document   : index.jsp
    Created on : 17/02/2024, 08:56:55 PM
    Author     : admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-8 col-lg-8"clas>
            <div class="card col-sm-10">
                <div  class="card-body ">
                    <form class="from-sing" method="POST"action="Ctrl_idTipoEntidad"> 
                        <div class="from-group text-center">
                            <h3>ENTIDAD</h3>
                            <label>Digita el nombre de la entidad </label>
                        </div>

                        <div class="from-group">
                            <label>Entidad:</label>
                            <input type="text" name="txt_TipoEntidad" class="form-control">
                        </div>

                        <div class="from-group"></div>
                        <input type="submit" name="accion" value="Ingresar" class="btn btn-primary w-100">
                    </form>

                </div>
            </div>

        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>