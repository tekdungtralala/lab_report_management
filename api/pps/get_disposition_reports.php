<?php
include '../connect.php';

$sql = "SELECT r.*, p.nama as person_name, p.alamat as person_address, p.id as person_id FROM pps r, pelanggan p where p.id = r.id_person and r.state = 2";
$result = $conn->query($sql);
$rows = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
         $rows[] = $row;
    }
}
print json_encode($rows);
?>