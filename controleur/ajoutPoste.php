<?php

if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    $racine = "..";
}

require_once("$racine/modele/SalleManager.php");
require_once("$racine/modele/PosteManager.php");
require_once("$racine/modele/AreaManager.php");



$salleManager = new SalleManager(); // Création d'un objet
$posteManager = new PosteManager(); // Création d'un objet
$areaManager = new AreaManager(); // Création d'un objet
$salles = $salleManager->getList();
$areas = $areaManager->getList();
$poste = $posteManager->getList();
$titre = "Ajouter un poste";
// appel du script de vue qui permet de gerer l'affichage des donnees
include "$racine/vue/header.php";
include "$racine/vue/vueAjouterPoste.php";
include "$racine/vue/footer.php";