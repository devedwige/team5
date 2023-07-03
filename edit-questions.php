<?php
    require('actions/users/securityAction.php');
    require('actions/questions/getInfosOfEditedQuestionAction.php');
    require('actions/questions/editQuestionAction.php');
?>
<!DOCTYPE html>
<html lang="en">
<?php include 'includes/head.php'; ?>
<body>
    <?php include 'includes/navbar.php'; ?>

    <br><br>
    <div class="container">
        <?php if(isset($errorMsg)){ echo '<p>'.$errorMsg.'</p>'; } ?>
        
        <?php 
            if(isset($question_contenu)){ 
                ?>
                <form method="POST">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Titre de la question</label>
                        <input type="text" class="form-control" name="titre" value="<?= $question_titre; ?>">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Description de la question</label>
                        <textarea class="form-control" name="description"><?= $question_description; ?></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Contenu de la question</label>
                        <textarea type="text" class="form-control" name="contenu"><?= $question_contenu; ?></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary" name="validate">Modifier la question</button>
                </form>
                <?php
            }
        ?>
        

    </div>
    

</body>
</html>