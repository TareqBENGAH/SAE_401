<?php


require "ctlPage.class.php";
require "ctlClient.class.php";
require "ctlAventure.class.php";

class ctlRouteur
{

    
    private $ctlEscGame;
    private $ctlClient;
    private $ctlResa;
    private $ctlCPage;

    public function __construct()
    {
        $this->ctlClient = new ctlClient();
        $this->ctlEscGame = new ctlAventure();
        $this->Ctlresa = new CtlResa();
        $this->ctlPage = new ctlPage();
    }

    public function Routage()
    {
        try {
            if (isset($_GET["action"])) {
                switch ($_GET["action"]) {

                    case 'paiement':
                        
                    case "aventures":
                        // require "vue/vue_aventure.php";
                        $this->ctlEscGame->aventure_list();
                        break;
                    case "cadeaux":
                        $this
                        break;
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
                        require "vue/vue_accueil.php";
                        break;
                }
            } else
                // require "vue/vue_accueil.php";
                require "vue/gabarit.php";
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }
}
