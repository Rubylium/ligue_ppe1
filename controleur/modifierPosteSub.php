<?php

if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    $racine = "..";
}

require_once("$racine/modele/PosteManager.php");
require_once("$racine/modele/InfoManager.php");


session_start();

$infoManager = new InfoManager();
$types = $infoManager->GetAllType();
$ips = $infoManager->GetAllIp();
$salle = $infoManager->GetAllSalle();

$titre = "Modifier un poste";
$data = $_SESSION["POSTE"][$_POST["id"]];
// appel du script de vue qui permet de gerer l'affichage des donnees
include "$racine/vue/header.php";
include "$racine/vue/vueModifierPosteSub.php";
include "$racine/vue/footer.php";