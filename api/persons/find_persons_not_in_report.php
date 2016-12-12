<?php
include '../connect.php';

$sql = "select p.* from pelanggan p where p.id not in (select r.id_person from reports_test_results r where r.state = 1)";
$result = $conn->query($sql);
$rows = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
         $rows[] = $row;
    }
}
print json_encode($rows);
?>