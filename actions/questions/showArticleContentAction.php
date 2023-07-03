<?php

require('actions/database.php');

//Vérifier si l'id de la question est rentrée dans l'URL 
if(isset($_GET['id']) AND !empty($_GET['id'])){

    //Récupérer l'identifiant de la question
    $idOfTheQuestion = $_GET['id'];

    //Vérifier si la question existe
    $checkIfQuestionExists = $dbd->prepare('SELECT * FROM question WHERE id = ?');
    $checkIfQuestionExists->execute(array($idOfTheQuestion));

    if($checkIfQuestionExists->rowCount() > 0){

        //Récupérer toutes les datas de la questions
        $questionsInfos = $checkIfQuestionExists->fetch();

        //Stocker les datas de la question dans des variables propres.
        $question_titre = $questionsInfos['titre'];
        $question_contenu = $questionsInfos['contenu'];
        $question_id_auteur = $questionsInfos['id_auteur'];
        $question_pseudo_auteur = $questionsInfos['pseudo_auteur'];
        $question_date_publication = $questionsInfos['date_publication'];
        
    }else{
        $errorMsg = "Aucune question n'a été trouvée";
    }

}else{
    $errorMsg = "Aucune question n'a été trouvée";
}