<?php

class Poste
{
    private $nPoste;
    private $nomPoste;
    private $indIP;
    private $ad;
    private $typePoste;
    private $nSalle;
    private $nbLog;


    public function __construct($poste, $nomPoste, $indIP, $ad, $typePoste, $nSalle, $nbLog)
    {
        $this->nPoste = $poste;
        $this->nomPoste = $nomPoste;
        $this->indIP = $indIP;
        $this->ad = $ad;
        $this->typePoste = $typePoste;
        $this->nSalle = $nSalle;
        $this->nbLog = $nbLog;
    }


    public function GetnPoste()
    {
        return $this->nPoste;
    }

    public function GetnomPoste()
    {
        return $this->nomPoste;
    }

    public function GetindIP()
    {
        return $this->indIP;
    }

    public function Getad()
    {
        return $this->ad;
    }

    public function GettypePoste()
    {
        return $this->typePoste;
    }

    public function GetnSalle()
    {
        return $this->nSalle;
    }

    public function GetnbLog()
    {
        return $this->nbLog;
    }
}