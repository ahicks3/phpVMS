<h3>Pending Pilots</h3>
<?php
if(!$allpilots)
{
	echo '<p>There are no pilots!</p>';
	return;
}
?>
<table id="tabledlist" class="tablesorter">
<thead>
<tr>
	<th>Pilot Name</th>
	<th>Email Address</th>
	<th>Location</th>
	<th>Hub</th>
	<th>Options (* double click)</th>
</tr>
</thead>
<tbody>
<?php
foreach($allpilots as $pilot)
{
?>
<tr>
	<td><a href="index.php?admin=viewpilots&action=viewoptions&pilotid=<?php echo $pilot->pilotid;?>"><?php echo $pilot->firstname . ' ' . $pilot->lastname; ?></a></td>
	<td align="center"><?php echo $pilot->email; ?></td>
	<td align="center"><?php echo $pilot->location; ?></td>
	<td align="center"><?php echo $pilot->hub; ?></td>
	<td align="center">
        <a href="action.php?admin=<?php echo Vars::GET('admin'); ?>" action="approvepilot"
			id="<?php echo $pilot->pilotid;?>" class="ajaxcall"><img src="lib/images/accept.gif" alt="Accept" /></a>
        <a href="action.php?admin=<?php echo Vars::GET('admin'); ?>" action="rejectpilot"
			id="<?php echo $pilot->pilotid;?>" class="ajaxcall"><img src="lib/images/reject.gif" alt="Reject" /></a>
	</td>
</tr>
<?php
}
?>
</tbody>
</table>