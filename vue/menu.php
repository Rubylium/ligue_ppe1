<?php
  //var_dump($_SESSION["connected"]);
?>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="./?action=accueil">Gestion parcinfo</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <?php
          //var_dump($_SESSION["connected"]);
	      if (!isset($_SESSION["connected"]) || $_SESSION["connected"] === false) {
        
	    ?>

      <li class="nav-item active">
        <a class="nav-link" href="./?action=accueil">Accueil <span class="sr-only">(current)</span></a>
      </li>

      <?php
        } else {
          ?>

      <li class="nav-item active">
        <a class="nav-link" href="./?action=accueil">Se deconnecter</span></a>
      </li>


          <?php
        }
	    ?>
      <li class="nav-item">
        <a class="nav-link" href="./?action=salles">Liste des salles</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./?action=ajout">Ajouter un poste</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./?action=modifier">Modifier un poste</a>
      </li>
    </ul>
  </div>
</nav>