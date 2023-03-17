<?php

require_once "vue/vue.class.php";
require_once "modele/escGame.class.php";

class CtlAventure{
    private $aventure;

    public function __construct(){
        $this->aventure = new EscGame();
    }

    public function aventure_list(){
        $aventure_total=$this->aventure->getEscGames();
        var_dump($aventure_total);
        $vue=new vue("aventures");
        $vue->afficher(array($aventure_total));
    }

    public function aventure(){
        $infos_aventure = $this->aventure->getEscGame();
        $vue=new vue("aventure");
        $vue->afficher(array($infos_aventure));
    }

    
}