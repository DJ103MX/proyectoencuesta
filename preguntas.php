<?php
require_once 'Encuesta.php';
$pollObject = new Poll();
?>
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Encuesta</title>
<link rel="stylesheet" href="css/style5.css">
</head>

<body>
<header> 
  <nav>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <center><a class="btback" href="welcome.php">Regresar <span class="sr-only">(current)</span></a></center>
      </ul>
    </div>
  </nav>
</header>


<div class="container">
  <h3 class="mt-5">Bienvenido, por favor conteste las siguientes preguntas que se le piden </h3>
  <hr>
  <div class="row">
    <div class="col-12 col-md-12"> 
      
      <p> <b>¿Que carrera le gustaria aprender? </b> </p>
      <div class="poll-container">
        <?php
            if (empty($_POST["submit"])) {
                $result = $pollObject->getCource();
                ?>
        <form method="POST" action="">
          <?php
                foreach ($result as $k => $v) {
                    ?>
          <div class='option-row'>
            <input class='radio-input' type='radio' name='vote'
                    value='<?php echo $result[$k]["id"]; ?>' />
            <?php echo $result[$k]["name"]; ?> </div>
          <?php } ?>
          <br>

          


          <input id="btnSubmit" type="submit" name="submit"
                value="Enviar" />
        </form>
        <div> </div>
        <?php
            } else {
				$subjectId=$_POST["vote"];
                $pollObject->addVote($subjectId);
                $result = $pollObject->getCourcewithVote();
                foreach ($result as $k => $v) {
                ?>
        <div class='poll'><?php echo $result[$k]["name"]; ?> <b><?php echo $result[$k]["vote_count"]; ?></b> votos </div>
        <?php }
            } ?>
      </div>
      
    </div>
  </div>
  
</div>

</body>
</html>