<?php

if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    $racine = "..";
}

session_start();
$_SESSION["connected"] = false;

include "$racine/vue/header.php";
include "$racine/vue/vueAccueilLogin.php";
include "$racine/vue/footer.php";