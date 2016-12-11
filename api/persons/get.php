<?php
include '../connect.php';

$sql = "select * from pelanggan";
$result = $conn->query($sql);

$rows = array();

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
         $rows[] = $row;
    }
} else {
    echo "0 results";
}
print json_encode($rows);
?>