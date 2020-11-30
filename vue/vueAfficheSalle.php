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
					<li>Description: <?= $salle->getdescription() ?></li>
				</ul>
			</p>
		</div>
	</div>

<?php
}
?>