<?php

require('actions/database.php');

//Vérifier si l'id de la question est bien passé en paramètre dans l'URL
if(isset($_GET['id']) AND !empty($_GET['id'])){

    $idOfQuestion = $_GET['id'];

    //Vérifier si la question existe
    $checkIfQuestionExists = $dbd->prepare('SELECT * FROM question WHERE id = ?');
    $checkIfQuestionExists->execute(array($idOfQuestion));

    if($checkIfQuestionExists->rowCount() > 0){

        //Récupérer les données de la question
        $questionInfos = $checkIfQuestionExists->fetch();
        if($questionInfos['id_auteur'] == $_SESSION['id']){
            
            $question_titre = $questionInfos['titre'];
            $question_description = $questionInfos['description'];
            $question_contenu = $questionInfos['contenu'];

            $question_description = str_replace('<br />', '', $question_description);
            $question_contenu = str_replace('<br />', '', $question_contenu);

        }else{
            $errorMsg = "Vous n'êtes pas l'auteur de cette question";
        }

    }else{
        $errorMsg = "Aucune question n'a été trouvée";
    }

}else{
    $errorMsg = "Aucune question n'a été trouvée";
}