<?php

require_once "vue/vue.class.php";

class ctlClient{

    private $client; 

    public function __construct(){
        $this->client = new client();
    }


    /*********************************************
     * Affichage des infos d'un client comprenant ses commandes et ses infos
     * 
     * Entrée : 
     *      [int] : id du client
     * 
     * 
     * Sortie : 
     *      [mixed] : affichage de la vue page client et des valeurs récupérées de la BDD
     ********************************************/
    public function client($id_client){
        $client_infos_perso = $this -> client->getClient($id_client);
        $client_resa = $this -> client ->getClientResa($id_client);
        $vue = new vue("client");
        $vue->afficher(array("client"=>$client_infos_perso,"resa"=>$client_resa));

    }
}