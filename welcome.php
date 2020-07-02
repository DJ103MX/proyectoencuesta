<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bienvenido Amiguito</title>
    <link rel="stylesheet" href="css/style4.css">
    <embed src="audio/inicio.mp3" loop="true" autoplay="true">
</head>
<body>
    <div class="page-header">
        <h1>Hey! <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Bienvenid@ amiguit@.</h1>
        
    </div>
    <p>
        <a href="reset-password.php" class="btnpss">Cambia tu contraseña</a>
        <a href="logout.php" class="btnclose">Cierra la sesión</a>
        <br><br>
        <h2>Gracias por entrar al sitio amiguin, por favor realice la siguiente encuesta que aparece aqui en su pantalla</h2>
        <br>
        <center> <a href="preguntas.php"><img src="images/comenzar.png" width="170"></a> </center>
        <br><br>
        <h3><b>Nota:</b> <i>Estas preguntas solo son con fines educativos</i></h3>
    </p>

</body>
</html>