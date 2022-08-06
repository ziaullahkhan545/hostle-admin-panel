<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();

if(isset($_GET['del']))
{
	$id=intval($_GET['del']);
	$adn="delete from fee where id=?";
		$stmt= $mysqli->prepare($adn);
		$stmt->bind_param('i',$id);
        $stmt->execute();
        $stmt->close();	   
        echo "<script>alert('Data Deleted');</script>" ;
}
?>
<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Manage FEE</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<?php include('includes/header.php');?>

	<div class="ts-main-content">
			<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h2 class="page-title" style="margin-top: 4%">Manage FEE</h2>
						<div class="panel panel-default">
							<div class="panel-heading">All FEE Details</div>
							
								
<?php	

	$aid=$_SESSION['id'];
if(isset($_GET['y']))
{
	
	$sql='SELECT *
	FROM fee';
	$result = $mysqli->query($sql);
	
	$date=array();
	
	while ($row=$result->fetch_assoc()) { 
		$year=date("y" , strtotime($row['dated']));
		array_push($date,$year);	
		?>	
	<?php
	}  
	 $min=min($date);
	 $max=max($date);
	
	 for($i=$max;$min<=$i;$i--) 
	 {?> <h3><a href="manage-fee.php?year=<?php echo $i ?>&m=true"><?php echo $i?></a>  </h3>
	 <?php
	 }
}
						 
 

if(isset($_GET['i']))
{?>
<div class="panel-body">
								<table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%">
	<thead>
									   <tr>
                                       <th>Sr.no</th>
										   <th>studentname</th>
										   <th>roomcharges </th>

										   <th>foodcharges  </th>
										   <th>msic_charges</th>
                                           <th>date</th>
										   <th>Action</th>
										   
									   </tr>
								   </thead>
								   <tfoot>
									   <tr>
										   
                                       <th>Sr.no</th>
										   <th>studentname</th>
										   <th>roomcharges </th>

										   <th>foodcharges  </th>
										   <th>msic_charges</th>
                                           <th>date</th>
										   <th>Action</th>
									   </tr>
								   </tfoot>
								  
								   

<?php
	$aid=$_SESSION['id'];
	$year=$_GET['year'];
	$month=$_GET['month'];
	$ystart= date("Y-m-d h:i:sa",mktime(00,00,00,$month,1,$year));
	$yend=   date("Y-m-d h:i:sa",mktime(00,59,59,$month,31,$year));
	// $sql="SELECT *
	// FROM expenses WHERE date BETWEEN '$ystart' AND '$yend'";
	$sql="SELECT *
	FROM fee WHERE dated BETWEEN '" . $ystart . "' AND '" . $yend . "' ORDER by id DESC";
	
	$result = $mysqli->query($sql);
$cnt=1;
while($row=$result->fetch_object())
	  {
	  	?>
<tr><td><?php echo $cnt;;?></td>


<td><?php echo $row->studentname;?></td>
<td><?php echo $row->roomcharges;?></td>
<td><?php echo $row->foodcharges;?></td>
<td><?php echo $row->msic_charges;?></td>
<td><?php echo $row->dated;?></td>
<td><a href="edit-fee.php?id=<?php echo $row->id;?>"><i class="fa fa-edit"></i></a>&nbsp;&nbsp;
<a href="manage-fee.php?del=<?php echo $row->id;?>" onclick="return confirm("Do you want to delete");"><i class="fa fa-close"></i></a></td>
										</tr>
										
									<?php
$cnt=$cnt+1;
									 }} 
if(isset($_GET['m'])){
	$year=$_GET['year'];


$ystart= date("Y-m-d h:i:sa",mktime(00,00,00,1,1,$year));
$yend=   date("Y-m-d h:i:sa",mktime(00,59,59,12,31,$year));


// $sql="SELECT *
// FROM expenses WHERE date BETWEEN '$ystart' AND '$yend'";
$sql="SELECT *
FROM fee WHERE dated BETWEEN '" . $ystart . "' AND '" . $yend . "' ORDER by id DESC";

$result = $mysqli->query($sql);
//$row=$result->fetch_all();
//var_dump($row);
$date=array();


while ($row=$result->fetch_assoc()) { 
	
	
    $month=date("m" , strtotime($row['dated']));
    
    array_push($date,$month);
    
	?>
	
<?php
}
 
 $min=min($date);
 
 $max=max($date);
 
 for($i=$max;$min<=$i;$i--) 
 {?> <h3><a href="manage-fee.php?year=<?php echo $year; ?>&month=<?php echo $i; ?>&i=true"><?php $dateObj=DateTime::createFromFormat('!m',$i); $monthName= $dateObj->format('F'); echo $i, $monthName; ?></a>  </h3>
 <?php
 }
}
?></tbody>
</table>
</div>
											
																			
								
								
							
						</div>

					
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

</body>

</html>
