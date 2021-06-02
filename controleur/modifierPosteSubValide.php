<?php

if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    $racine = "..";
}

require_once("$racine/modele/InfoManager.php");


session_start();

$infoManager = new InfoManager();

$finish = "Modification terminé";
$infoManager->ChangePoste($_POST["inputNum"], $_POST["inputNom"], $_POST["inputindIP"], $_POST["inputAd"], $_POST["inputType"], $_POST["inputnSalle"], $_POST["inputNbLog"]);

// appel du script de vue qui permet de gerer l'affichage des donnees
include "$racine/vue/header.php";
include "$racine/vue/vueModifierPosteSub.php";
include "$racine/vue/footer.php";