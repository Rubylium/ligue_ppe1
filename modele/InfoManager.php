<?php

require_once("modele/Manager.php");
require_once("modele/Info.php");

class InfoManager extends Manager
{

    public function GetAllType() //instancie une collection d'objets Salle
    {

        $q = $this->getPDO()->query('SELECT * FROM types');

        $type = [];
        while ($v = $q->fetch(PDO::FETCH_ASSOC)) {

            $type[$v['typeLP']] = $v['typeLP'];
        }
        return $type;
    }


    public function GetAllIp() {
        $q = $this->getPDO()->query('SELECT * FROM segment');

        $segment = [];
        while ($v = $q->fetch(PDO::FETCH_ASSOC)) {

            $segment[$v['indIP']] = $v['indIP'];
        }
        return $segment;  
    }

    public function GetAllSalle() {
        $q = $this->getPDO()->query('SELECT nSalle FROM salle');

        $salle = [];
        while ($v = $q->fetch(PDO::FETCH_ASSOC)) {

            $salle[$v['nSalle']] = $v['nSalle'];
        }
        return $salle;  
    }


    public function AddNewPoste($num, $name, $ip, $ad, $type, $numeroSalle, $log) {
        var_dump($num, $name, $ip, $ad, $type, $numeroSalle, $log);

        $this->getPDO()->query('INSERT INTO poste (nPoste, nomPoste, indIP, ad, typePoste, nSalle, nbLog) VALUES ("' . $num .'", "' . $name . '", "' . $ip . '", "' . $ad .'", "' . $type .'", "' . $numeroSalle . '", "' . $log . '")');
    }


    public function ChangePoste($num, $name, $ip, $ad, $type, $numeroSalle, $log) {
        var_dump($num, $name, $ip, $ad, $type, $numeroSalle, $log);

        $this-getPDO()->query('UPDATE poste SET nomPoste = "' . $name . '", indIP = "'. $ip .'", ad "'. $ad .'", typePoste = "'. $type .'", nSalle = "'. $numeroSalle .'", nbLog = "'. $log .'" WHERE nPoste = "'. $num .'"');
    }
}