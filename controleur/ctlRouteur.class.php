<?php


require "ctlPage.class.php";
require "ctlClient.class.php";
require "ctlAventure.class.php";
require 'ctlCadeaux.class.php';

class ctlRouteur
{

    


    private $ctlEscGame;
    private $ctlClient;
    private $ctlCPage;
    private $ctlCadeau;



    //*******
    //Initialisation des Class Modele pour chaque action
    //Entrée : 
    //      [vide]
    //Sortie : 
    //      [variables initialisées en tant qu'objet]
    //******/
    public function __construct()
    {
        $this->ctlClient = new ctlClient();
        $this->ctlEscGame = new ctlAventure();
        $this->ctlPage = new ctlPage();
        $this->ctlCadeau= new ctlCadeau();
    }


    //*******
    //Routage à partir des actions réalisées passées en paramètre dans l'url 
    //Entrée : 
    //      [vide]
    //Sortie : 
    //      [affichage des pages demandées ou de la page d'accueil]
    //******/
    public function Routage()
    {
        try {
            if (isset($_GET["action"])) {
                switch ($_GET["action"]) {

                    //affichage page profil si le client est connecté 
                    //sinon affichage de la page de connexion/création de compte
                    case "connexion" : 
                        // $this->ctlClient->connexion();
                        break;

                    case 'paiement':
                        return true;
                        break;
                        
                    case "aventures":
                        // require "vue/vue_aventure.php";
                        $this->ctlEscGame->aventure_list();
                        break;
                    case "cadeaux":
                        $this->ctlCadeau->cadeau();
                        break;

                    case "aventure":
                        if(isset($_POST["id_game"])){
                            $this->ctlEscGame->aventure($_POST["id_game"]);
                        }
                        else{
                            $this->ctrlPage->accueil();///faire la gestion d'erreur avec Zoé
                        }
                    case "faq":
                        require "vue/vue_faq.php";
                        break;
                    case "contact":
                        require "vue/vue_contact.php";
                        break;
                    case "client": //affichage de la page d'infos client
                        // if(isset("connect")){ //vérification si le visiteur est connecté
                        //     if(isset($GET_['id_client'])){//vérif que l'id client passé en paramètre soit bien un integer (protection contre injection)
                        //         $id_client = (int)$GET_['id_client'];
                        //         if($id_client>0)
                        //         $this-> ctrClient -> client($id_client);//affichage de la vue
                        //     }
                        // }else{// si pas connecté affichage de la page de connection
                        //     $this -> ctlPage-> connection();
                        // }
                        break;

                    default:
                        $this->ctlPage->accueil();
                        break;
                }
            } else
                // require "vue/vue_accueil.php";
                $this->ctlPage->accueil();
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }
}
