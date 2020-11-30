<?php

class Salle
{
    private $nSalle;
    private $nomSalle;
    private $nbPoste;
    private $indIP;


    public function __construct($nSalle, $nomSalle, $nbPoste, $indIP)
    {
        $this->nSalle = $nSalle;
        $this->nomSalle = $nomSalle;
        $this->nbPoste = $nbPoste;
        $this->indIP = $indIP;
    }

    public function getnSalle()
    {
        return $this->nSalle;
    }

    public function getnomSalle()
    {
        return $this->nomSalle;
    }

    public function getnbPoste()
    {
        return $this->nbPoste;
    }

    public function getindIP()
    {
        return $this->indIP;
    }
}
