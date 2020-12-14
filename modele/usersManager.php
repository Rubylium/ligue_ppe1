<?php

require_once("modele/Manager.php");
require_once("modele/Salle.php");

class usersManager extends Manager
{

    public function getList() //instancie une collection d'objets Salle
    {
        $q = $this->getPDO()->query('SELECT id, level, name, password, email FROM mrbs_users');

        $users = [];
        while ($donnees = $q->fetch(PDO::FETCH_ASSOC)) {

            $users[$donnees['name']] = new users($donnees['id'], $donnees['level'], $donnees['name'], $donnees['password'], $donnees['email']);
        }
        return $users;
    }


    public function DoesUserExist($login, $password) //instancie une collection d'objets Salle
    {
        $exist = false;
        $q = $this->getPDO()->query('SELECT id, level, name, password, email FROM mrbs_users WHERE name = "' + $login + '" AND password = "' + $password + '"');

        $users = [];
        while ($donnees = $q->fetch(PDO::FETCH_ASSOC)) {
            $users[$donnees['name']] = new users($donnees['id'], $donnees['level'], $donnees['name'], $donnees['password'], $donnees['email']);
        }

        if ($users[$login] != null) {
            $exist = true;
        }

        return $exist;
    }
}
