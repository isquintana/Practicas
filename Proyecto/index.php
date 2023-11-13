<?php
include "include/conecta.php";
include "include/login.php";
error_reporting(0);
if(isset($_POST['btningresar'])){
    $User = "riacdeveloper";
    $Password = "admin506";
    $User =$_POST['usuario'];
    $Pass =$_POST['contra'];
    /* verificar que se reciba la informacion
    echo "el ususario es: ".$User." y el password es: ".$Pass;
 */
if ($UserSistem == $User and $Passworsistem == $Pass) {
    $alerta.='<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Bienvenido</strong> se bienvenido a la familia BoT :)
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>';
}
else {
    $alerta.='<div class="alert alert-danger alert-dismissible fade show" role="alert">
    <strong>Oye</strong> Vos quien chota sos? >:(
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>';
}   
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/dark.css">
  <link rel="stylesheet" href="css/pace.css">
  <script src="js/jquery.js"></script>
  <title>Login</title>
</head>
<body>
  <div class="container">
      <div class="justify-content-center mt-5">
          <div class="row mt-3 text-center">
            <div class="col-sm-12 col-md-12 col-lg-12 text-center">
                <h1 class="text-center display-6"> | <span>Login</span></h1>
                <div class="row mt-2 px-1 justify-content-center mt-5">
                    <div class="col-sm-6 col-md-6 col-lg-6">
                    <div>  
                    <div class="row mt-2 justify-content-center">
                      <img src="img/" alt="logo" style="width: 250px;">
                    </div>
                    <div class="row mt-2">
                      <div class="col-sm-4 col-md-4 col-lg-4"></div>
                      <div class="col-sm-8 col-md-8 col-lg-8">
                        <a href="recuperarPass.php" class="text-primary text-decoration-none"> 
                            <svg class="bi" width="20" height="20" fill="currentColor">
                                <use xlink:href="library/icons/bootstrap-icons.svg#key"/>
                            </svg> Perdiste tu Password
                        </a>
                      </div>
                    </div>
                    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" autocomplete="off" class="needs-validation" novalidate>
                      <div class="row mt-2 justify-content-center">
                        <div class="col-sm-8 col-md-8 col-lg-8">
                            <input type="text" name="Usuario" id="Usuario" placeholder="Usuario" class="form-control border-3 rounded-pill border-primary" autocomplete="off" required />
                            <div class="invalid-feedback">Por favor ingresa tu Usuario</div>
                        </div>
                      </div>
                      <div class="row mt-2 mb-2 justify-content-center">
                          <div class="col-sm-8 col-md-8 col-lg-8">
                            <input type="password" name="Password" id="pass" placeholder="contraseña" class="form-control border-3 rounded-pill border-primary" autocomplete="off" required />
                            <div class="invalid-feedback">Por favor ingresa tu contraseña</div>
                          </div>
                      </div>
                      <div class="row mt-1 justify-content-center">
                          <div class="col-sm-3 col-md-3 col-lg-3">
                            <div class="form-check form-switch">
                              <input class="form-check-input border-light" type="checkbox" id="darkSwitch">
                              <label class="darkSwitch" for="verPass">
                                <svg class="bi" width="20" height="20" fill="currentColor">
                                  <use xlink:href="library/icons/bootstrap-icons.svg#brightness-low-fill"/>
                                </svg> |
                                <svg class="bi text-primary" width="15" height="15" fill="currentColor">
                                  <use xlink:href="library/icons/bootstrap-icons.svg#moon-stars-fill"/>
                                </svg>
                              </label>
                            </div>
                          </div>
                          <div class="col-sm-3 col-md-3 col-lg-3">
                              <div class="form-check form-switch">
                                <input class="form-check-input border-light" type="checkbox" id="ver" onclick="verpass(this);">
                                <label class="form-check-label" for="ver">Ver Contraseña</label>
                              </div>
                          </div>
                      </div>
                      <div class="row mt-4 mb-2 justify-content-center">
                          <div class="col-sm-8 col-md-8 col-lg-8">
                              <div class="d-grid gap-2">
                                <input type="submit" name="btn-ingresar" id="btn-ingreso" class="btn btn-sm btn-outline-primary bg-gradient rounded-pill">
                              </div>
                          </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="row mt-2 justify-content-center">
                <div class="col-sm-12 col-lg-12 col-md-12">
                  <a href="#" target="_blank" class="text-decoration-none text-success">
                  <svg class="bi text-success" width="20" height="20" fill="currentColor">
                    <use xlink:href="library/icons/bootstrap-icons.svg#facebook"/>
                  </svg>
                  </a>
                  <a href="#" target="_blank" class="text-decoration-none text-success">
                  <svg class="bi text-success" width="20" height="20" fill="currentColor">
                    <use xlink:href="library/icons/bootstrap-icons.svg#twitter"/>
                  </svg>
                  </a>
                  <a href="#" target="_blank" class="text-decoration-none text-success">
                  <svg class="bi text-success" width="20" height="20" fill="currentColor">
                    <use xlink:href="library/icons/bootstrap-icons.svg#instagram"/>
                  </svg>
                  </a>
                  <svg class="bi text-success" width="20" height="20" fill="currentColor">
                    <use xlink:href="library/icons/bootstrap-icons.svg#github"/>
                  </svg>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/dark-mode.js"></script>
      <script src="pace.js"></script>
      <script>
          function verpass(cb) {
              if (cb.checked)
                $('#pass').attr("type", "text");
              else
                $('#pass').attr("type", "password");
          }
      </script>
      <script>
                (function() {
                    'use strict'
                    var forms = document.querySelectorAll('.needs-validation')
                    Array.prototype.slice.call(forms)
                        .forEach(function(form) {
                            form.addEventListener('submit', function(event) {
                                if (!form.checkValidity()) {
                                    event.preventDefault()
                                    event.stopPropagation()
                                }
                                form.classList.add('was-validated')
                            }, false)
                        })
                })()
            </script>
</body>
</html>