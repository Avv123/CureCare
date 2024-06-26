<?php
include('../header.php');
include('../connection.php');
if(isset($_SESSION["type"]))
{
	
?>

<div class="container-fluid my-3">
	<h5>Welcome <?php echo $_SESSION["type"]; ?> !</h5>
	<hr/>
	<div class="container">
	<h3 class="text-center pt-5">Hospital Details</h3>
	<div class="map" style="width: 100%; border: 3px solid black; height: 500px;">
		<embed style="width: 100%; height: 500px;" src="http://localhost:5500/Medical_chatbot-main/map.html">
	</div>
	<br />
	<div align="right">
		<div class="table-responsive" >
			<table id="product_data" class="table table-bordered table-striped">
				<thead>
					<tr>
						<th data-column-id="hsp_id" data-type="numeric" data-visible="false">ID</th>
						<th data-column-id="hsp_name">HOSPITAL NAME</th>
						<th data-column-id="hsp_contact">CONTACT NUMBER</th>
						<th data-column-id="hsp_email">EMAIL ID</th>
						<th data-column-id="hsp_address">ADDRESS</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
	</div>
</div>

</div>
<?php include('../footer.php'); ?>
<script>
$(document).ready(function(){
	var productTable = $('#product_data').bootgrid({
		ajax: true,
		rowSelect: true,
		post: function()
		{
		return{
		id: "b0df282a-0d67-40e5-8558-c9e93b7befed"
		};
		},
		url: "HospitalResponse.php"
	});
});

</script>
</body>
</html>
<?php
}
else
{
	echo "<script>window.location.href='../index.php';</script>";
}
?>