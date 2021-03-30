<?php

session_start();

?>
<h1><?= $titre ?></h1>

<?php

if ($_SESSION["connected"] != null || $_SESSION["connected"] == true) {
?>

	<div id="logreg-forms">
		<form action="?action=login" method="post" class="form-signin">
			<h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Ajout de poste</h1>

			<input type="num" name="inputNum" class="form-control" placeholder="Numero de poste" required="" autofocus="">
			<input type="nom" name="inputNom" class="form-control" placeholder="Nom de poste" required="">

			<select type="indIP" name="inputindIP" class="form-control">
				<option>IP 1</option>
			</select>

			<input type="ad" name="inputAd" class="form-control" placeholder="ad" required="">

			<select type="type" name="inputType" class="form-control">
				<option>Type 1</option>
			</select>

			<input type="nSalle" name="inputnSalle" class="form-control" placeholder="Numero salle" required="">

			<button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i>Ajouter</button>
			<hr>
		</form>
	</div>

<?php
} else {
?>
	Non connecté
<?php
}
?>