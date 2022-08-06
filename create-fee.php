
<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
//code for add courses
if (isset($_POST['submit'])) {
    $date = $_POST['date'];
    $regno = $_POST['regno'];
    $studentname = $_POST['studentname'];
    $roomcharges = $_POST['roomcharges'];
    $foodcharges = $_POST['foodcharges'];
    $msic_charges = $_POST['msic_charges'];
    $total = $_POST['total'];
    $sql = "insert into  fee (regno, studentname, roomcharges, foodcharges, msic_charges, total, dated) values(?,?,?,?,?,?,?)";
   
    $stmt1 = $mysqli->prepare($sql);
    $stmt1->bind_param('isiiiis',$regno,$studentname,$roomcharges, $foodcharges,$msic_charges, $total,$date);
    $stmt1->execute();
   
    echo "<script>alert('FEE has been added successfully');</script>";
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
    <title>Create FEE</title>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
    <link rel="stylesheet" href="css/bootstrap-social.css">
    <link rel="stylesheet" href="css/bootstrap-select.css">
    <link rel="stylesheet" href="css/fileinput.min.css">
    <link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
    <script type="text/javascript" src="js/validation.min.js"></script>
    <script src="js/total.js"></script>
</head>

<body>
    <?php include('includes/header.php'); ?>
    <div class="ts-main-content">
        <?php include('includes/sidebar.php'); ?>
        <div class="content-wrapper">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-md-12">

                        <h2 class="page-title">Add FEE</h2>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">Add FEE</div>
                                    <div class="panel-body">
                                        <?php if (isset($_POST['submit'])) { ?>
                                            <p style="color: red"><?php echo htmlentities($_SESSION['msg']); ?><?php echo htmlentities($_SESSION['msg'] = ""); ?></p>
                                        <?php } ?>
                                        <form method="post" class="form-horizontal">

                                            <div class="hr-dashed"></div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">Select Date</label>
                                                <div class="col-sm-8">
                                                    <input name="date" class="form-control"
                                                    type="date" required>
                                                        <!-- <option value="">Select Seater</option>
                                                        <option value="1">Single Seater</option>
                                                        <option value="2">Two Seater</option>
                                                        <option value="3">Three Seater</option>
                                                        <option value="4">Four Seater</option>
                                                        <option value="5">Five Seater</option>
                                                        <option value="6">Six Seater</option> -->
                                                    <!-- </Select> -->
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">Student ID</label>
                                                <div class="col-sm-8">
                                                <select name="regno" id="regno"class="form-control" required> 
                                                    <option value="">Select Reg#</option>
                                                    <?php $query ="SELECT * FROM registration";
                                                    $stmt2 = $mysqli->prepare($query);
                                                    $stmt2->execute();
                                                    $res=$stmt2->get_result();
                                                    while($row=$res->fetch_object())
                                                    {
                                                    ?>
                                                    <option value="<?php echo $row->regno;?>"><?php echo $row->regno;?></option>
                                                    <?php } ?>
                                                    </select>        
                                            </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">Student Name</label>
                                                <div class="col-sm-8">
                                                <select name="studentname" id="studentname"class="form-control" required> 
                                                    <option value="">Select Name</option>
                                                    <?php $query ="SELECT * FROM registration";
                                                    $stmt2 = $mysqli->prepare($query);
                                                    $stmt2->execute();
                                                    $res=$stmt2->get_result();
                                                    while($row=$res->fetch_object())
                                                    {
                                                    ?>
                                                    <option value="<?php echo $row->firstName;?>"><?php echo $row->firstName;?></option>
                                                    <?php } ?>
                                                    </select>
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">Room Charges</label>
                                                <div class="col-sm-8">
                                                    <input onchange="tot();" type="number" class="form-control" name="roomcharges" id="roomcharges" value="" required="required">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">Food Charges</label>
                                                <div class="col-sm-8">
                                                    <input onchange="tot();" type="number" class="form-control" name="foodcharges" id="foodcharges" value="" required="required">
                                                </div>
                                            </div><div class="form-group">
                                                <label class="col-sm-2 control-label">Misc Charges</label>
                                                <div class="col-sm-8">
                                                    <input onchange="tot();" type="number" class="form-control" name="msic_charges" id="msic_charges" value="" required="required">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">Total</label>
                                                <div class="col-sm-8">
                                                    <input type="number" class="form-control" name="total" id="total" value="" required="required">
                                                </div>
                                            </div>

                                            <div class="col-sm-8 col-sm-offset-2">
                                                <input class="btn btn-primary" type="submit" name="submit" value="Add FEE">
                                            </div>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
    </div>
    </div>
    <script >
        function total(){
                       
            rcharges=document.getElementById('roomcharges').value;
            fcharges=document.getElementById('foodcharges').value;
            msic_charges=document.getElementById('msic_charges').value;

            document.getElementById('total').value=rcharges+fcharges+msic_charges;
        }
    </script>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap-select.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap.min.js"></script>
    <script src="js/Chart.min.js"></script>
    <script src="js/fileinput.js"></script>
    <script src="js/chartData.js"></script>
    <script src="js/main.js"></script>
   

    <script>
    </script>
</body>

</html>