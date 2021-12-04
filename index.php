<?php include("./header.php"); ?>
<div class="banks">
	<ol>
		<?php
			$result = mysqli_query($conn, "SET NAMES utf8mb4");
			$result = mysqli_query($conn, "SELECT * FROM bank_names");
			while ($run = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
				echo "<li><a href='branches.php?bank_name=".str_replace(' ', '-', $run['name'])."&bank_id=".md5($run['id'])."'>".$run['name']."</a></li>";
			}
		?>
	</ol>
</div>
<?php include("./footer.php"); ?>