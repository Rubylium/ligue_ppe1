<?php

require_once("modele/Manager.php");
require_once("modele/Poste.php");

class PosteManager extends Manager
{

    public function getList() //instancie une collection d'objets Salle
    {

        $q = $this->getPDO()->query('SELECT * FROM poste');

        $poste = [];
        while ($v = $q->fetch(PDO::FETCH_ASSOC)) {

            $poste[$v['nPoste']] = new Poste($v['nPoste'], $v['nomPoste'], $v['indIP'], $v['ad'], $v['typePoste'], $v['nSalle'], $v['nbLog']);
        }
        return $poste;
    }
}