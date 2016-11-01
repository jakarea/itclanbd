<div class="container">
<a href="/logout" class="btn btn-primary">Logout</a>
	<div class="col-md-10 col-md-offset-1">
	<?php view('partial/message') ?>
		<table id="mytable" class="table table-bordred table-striped">
			<thead>
				<tr>
					<th>Task</th>
					<th>Completed</th>
				</tr>
			</thead>
			<tbody id ="todos">
			<?php foreach ($tasks as $task): ?>
				<tr>
					<td><?= $task->task; ?></td>
					<td><input type="checkbox" onchange="Ali(<?=$task->id?>)" <?php echo $task->completed?"checked":"" ?> class="checkthis" id = <?=$task->id?>></td>
				</tr>
			<?php endforeach ?>
			</tbody>
		</table>
 	</div>
</div>