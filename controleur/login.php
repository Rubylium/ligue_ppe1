<?php

if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    $racine = "..";
}

require_once("$racine/modele/userManager.php");



$userManager = new usersManager(); // Création d'un objet
$exist = $userManager->DoesUserExist($_POST["inputEmail"], $_POST["inputPassword"]);


include "$racine/vue/header.php";
if ($exist) {
    include "$racine/vue/vueAcceuil.php";
} else {
    $titre = "Indentifiant incorrecte";
    include "$racine/vue/vueAcceuil.php";
}
include "$racine/vue/footer.php";
