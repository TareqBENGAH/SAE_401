<?php
require_once "vue/vue.class.php";

class ctlPage {
    private $page;

    public function accueil(){
        $vue = new vue("Accueil"); // Instancie la vue appropriée
        $vue->afficher(array()); 
    }
    
    public function mentions_legales(){
        $vue=new vue("mentions-legales");
        $vue->afficher(array());
    }
    
    public function contact(){
        $vue=new vue("contact");
        $vue->afficher(array());
    }

    public function erreur($message){
        $vue = new vue("Erreur"); // Instancie la vue appropriée
        $vue->afficher(array("message" => $message)); // Affiche la liste des erreur dans la vue
    }
}