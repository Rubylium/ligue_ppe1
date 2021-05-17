
<h1><?= $titre ?></h1>

<?php

if ($_SESSION["connected"] != null && $_SESSION["connected"] == true) {
?>
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">nPoste</th>
                <th scope="col">nomPoste</th>
                <th scope="col">indIP</th>
                <th scope="col">ad</th>
                <th scope="col">typePoste</th>
                <th scope="col">nSalle</th>
                <th scope="col">nbLog</th>
                <th scope="col">modifier</th>
            </tr>
        </thead>
        <tbody>

            <?php
            $_SESSION["POSTE"] = [];
            foreach ($poste as $v) {
                
            ?>
                <tr>
                    <td> <?= $v->GetnPoste() ?> </td>
                    <td> <?= $v->GetnomPoste() ?> </td>
                    <td> <?= $v->GetindIP() ?> </td>
                    <td> <?= $v->Getad() ?> </td>
                    <td> <?= $v->GettypePoste() ?> </td>
                    <td> <?= $v->GetnSalle() ?> </td>
                    <td> <?= $v->GetnbLog() ?> </td>
                    <td>
                        <form action="?action=modifierSub" method="POST" class="form-signin">
                            <?php 
                                $_SESSION["POSTE"][$v->GetnPoste()] = $v ;
                                $id = $v->GetnPoste();
                            ?>
                            <input id="id" name="id" type="hidden" value=<?= $id ?> >
                            <button type="submit" class="btn btn-primary btn-sm">modifier</button>
                        </form>
                    </td>
                </tr>

            <?php

            }
            ?>

        </tbody>
    </table>

<?php
} else {
?>
    Non connecté
<?php
}
?>