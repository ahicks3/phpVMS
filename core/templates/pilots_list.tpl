<h3><?php echo $title?></h3>
<table id="tabledlist" class="tablesorter">
<thead>
<tr>
	<th>Pilot ID</th>
	<th>Name</th>
	<th>Rank</th>
	<th>Flights</th>
	<th>Hours</th>
</tr>
</thead>
<tbody>
<?php
foreach($allpilots as $pilot)
{
	/* 
		To include a custom field, use the following example:

		<td>
			<?php echo PilotData::GetFieldValue($pilot->pilotid, 'VATSIM ID'); ?>
		</td>

		For instance, if you added a field called "IVAO Callsign":

			echo PilotData::GetFieldValue($pilot->pilotid, 'IVAO Callsign');		
	 */
?>
<tr>
	<td><a href="<?php echo SITE_URL?>/index.php/profile/view/<?php echo $pilot->pilotid?>">
			<?php echo PilotData::GetPilotCode($pilot->code, $pilot->pilotid)?></a>
	</td>
	<td><?php echo $pilot->firstname.' '.$pilot->lastname?></td>
	<td><img src="<?php echo $pilot->rankimage?>" alt="<?php echo $pilot->rank;?>" /></td>
	<td><?php echo $pilot->totalflights?></td>
	<td><?php echo $pilot->totalhours?></td>
</tr>
<?php
}
?>
</tbody>
</table>