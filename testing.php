<?php

include('includes/config.php');
include('includes/checklogin.php');


$ret = "select * from rooms";
$stmt = $mysqli->prepare($ret);
// $stmt->bind_param();
$stmt->execute(); //ok
$res = $stmt->get_result();
$newData = $res->fetch_all(MYSQLI_ASSOC);

echo '<br>';
var_dump($res);
echo '<br><br>';
var_dump($newData);
echo '<br>';
$count = 0;

foreach ($newData as $key => $value) {
    $count = $count + $value['seater'];
}

echo $count;

?>
<form method="POST">
    <input type="date" name="date">
    <input type="submit" name="submit">
</form>


<?php 
if (isset($_POST['submit'])) {
    var_dump($_POST['date']);
}
