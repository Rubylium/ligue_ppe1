<?php
//var_dump($bateaux);
?>
<h1><?= $titre ?></h1>

<?php

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

				<ul class="list-group list-group-flush">
					<li class="list-group-item">Description: <?= $salle->getdescription() ?></li>
				</ul>

			</p>
		</div>
	</div>

<?php
}
?>