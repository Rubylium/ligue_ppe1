<?php

if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    $racine = "..";
}

require_once("$racine/modele/PosteManager.php");


session_start();
var_dump($_SESSION["POSTE"]);
$titre = "Modifier un poste";
// appel du script de vue qui permet de gerer l'affichage des donnees
include "$racine/vue/header.php";
include "$racine/vue/vueModifierPosteSub.php";
include "$racine/vue/footer.php";