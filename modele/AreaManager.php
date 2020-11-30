<?php

require_once("modele/Manager.php");
require_once("modele/Area.php");

class AreaManager extends Manager
{

    public function getList() //instancie une collection d'objets Salle
    {

        $q = $this->getPDO()->query('SELECT * FROM mrbs_area');

        $areas = [];
        while ($data = $q->fetch(PDO::FETCH_ASSOC)) {


            $areas[$data['id']] = new Area($data['id'], $data['disabled'], $data['area_name'], $data['area_admin_email'], $data['resolution'], $data['default_duration'], $data['morningstarts'], $data['morningstarts_minutes'], $data['eveningends'], $data['eveningends_minutes'], $data['private_enabled'], $data['private_default'], $data['private_mandatory'], $data['private_override'], $data['min_book_ahead_enabled'], $data['min_book_ahead_secs'], $data['max_book_ahead_enabled'], $data['max_book_ahead_secs'], $data['custom_html'], $data['approval_enabled'], $data['reminders_enabled'], $data['enable_periods'], $data['confirmation_enabled'], $data['confirmed_default']);
        }
        return $areas;
    }
}
