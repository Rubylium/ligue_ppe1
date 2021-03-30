<?php

session_start();

?>
<h1><?= $titre ?></h1>

<?php

if ($_SESSION["connected"] != null || $_SESSION["connected"] == true) {
	foreach ($salles as $salle) {
?>
		<div class="card" style="width: 18rem;">
			<div class="card-body">
				<h5 class="card-title"><?= $salle->getroom_name() ?></h5>
				<p class="card-text">
				<ul>
					<li>Numéro: <?= $salle->getnSalle() ?></li>
					<li>Nombre de poste: <?= $salle->getnbPoste() ?></li>
					<li>Ind IP: <?= $salle->getindIP() ?></li>
					<li>Capacité: <?= $salle->getcapacity() ?></li>
					<li>Area name: <?= $areas[$salle->getarea_id()]->getarea_name() ?></li>
				</ul>
				</p>

				<ul class="list-group list-group-flush">
					<li class="list-group-item">Description: <?= $salle->getdescription() ?></li>
				</ul>
				
				<div class="card-body">
					liste des postes installés:
					<?php
					foreach ($poste as $v) {
						if ($salle->getnSalle() == $v->GetnSalle()) {
					?>
						<li> <?= $v->GetnomPoste() ?> (<?= $v->GetnPoste() ?>)</li>

					<?php
						}
					}
					?>
				</div>

				</p>
			</div>
		</div>

	<?php
	}
} else {
	?>
	Non connecté
<?php
}
?>