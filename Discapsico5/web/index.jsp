
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>

    <body class="d-flex h-100 text-center text-bg-light">


        <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">

            <header class="mb-auto">
                <div>
                    <h1 class="float-md-start mb-0">DISCAPSICO</h1>
                    <nav class="nav nav-masthead justify-content-center float-md-end">
                        <a class="nav-link fw-bold py-1 px-0 active" aria-current="page"  href="Vistas/registrarme.jsp">REGISTRO</a>
                    </nav>
                    <nav class="nav nav-masthead justify-content-center float-md-end">
                        <a class="nav-link fw-bold py-1 me-4   px-0 active "  aria-current="page" style="color: blue" 
                           href="ControladorUsuario?accion=listar"">LISTA USUARIOS</a>
                    </nav>
                    <nav class="nav nav-masthead justify-content-center float-md-end">
                        <a class="nav-link fw-bold py-1 me-4   px-0 active "  aria-current="page" style="color: blue" 
                           href="ControladorUsuario?accion=listar2"">LISTA USUARIOS2</a>
                    </nav>
                </div>
            </header>

            <div class="container">
                <main class="px-3">
                    <h2>Riesgo de  discapacidad psicosocial.</h2>
                    <p class="lead"> Discapacidad personal y emocional, discapacidad en el funcionamiento familiar, discapacidad social y discapacidad laboral de la persona con afectación en su salud mental.
                    </p>
                    <p class="lead">
                        <a href="Vistas/iniciosesion.jsp" class="btn btn-lg btn-light fw-bold border-primary bg-white">INICIO SESION</a>
                    </p>
                </main>

            </div>

            <footer class="mt-auto text-dark-50">
                <p>Aplicacion de uso exclusivo <a href="https://www.saludcapital.gov.co/Paginas2/Inicio.aspx" class="text-dark">SECRETARIA DE SALUD </a>, de <a href="https://www.saludcapital.gov.co/Paginas2/Inicio.aspx" class="text-dark">BOGOTA</a>.</p>
            </footer>
        </div>
        <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>