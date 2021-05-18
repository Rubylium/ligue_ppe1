
<h1><?= $titre ?></h1>

<?php

if (isset($_SESSION) && $_SESSION["connected"] != null || $_SESSION["connected"] == true) {
	if ($_SESSION["level"] > 0) { 
?>

	<div id="logreg-forms">
		<form action="?action=ajoutValide" method="post" class="form-signin">
			<h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Ajout de poste</h1>

			<input type="num" name="inputNum" class="form-control" placeholder="Numero de poste" required="" autofocus="">
			<input type="nom" name="inputNom" class="form-control" placeholder="Nom de poste" required="">

			<select type="indIP" name="inputindIP" class="form-control">
				<?php
					foreach ($ips as $v) {
					?>
						<option><?= $v ?></option>
					<?php
					}
				?>
			</select>

			<input type="ad" name="inputAd" class="form-control" placeholder="ad" required="">

			<select type="type" name="inputType" class="form-control">
				<?php
					foreach ($types as $v) {
					?>
						<option><?= $v ?></option>
					<?php
					}
				?>
			</select>

			<select type="nSalle" name="inputnSalle" class="form-control">
				<?php
					foreach ($salle as $v) {
					?>
						<option><?= $v ?></option>
					<?php
					}
				?>
			</select>

			<!-- <input type="nSalle" name="inputnSalle" class="form-control" placeholder="Numero salle" required=""> -->
			<input type="NbLog" name="inputNbLog" class="form-control" placeholder="Nombre log (0, 1, 3)" required="">

			<button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i>Ajouter</button>
			<hr>
		</form>
	</div>

<?php

	} else {
	?>
		Pas la permission
	<?php
	}
} else {
?>
	Non connecté
<?php
}
?>