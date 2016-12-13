<?php
	include 'api/connect.php';

	$sql = "SELECT r.*, p.nama as person_name, p.alamat as person_address, p.id as person_id, o.name as officer_name, o.official_id as officer_official_id FROM pps r, pelanggan p, officer o WHERE p.id = r.id_person and r.state = 4 and r.officer_id = o.id and r.id = " . $_GET['id'];
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
	    $row = $result->fetch_assoc();
	    echo "report id: " . $row["id"];echo '<br/>';
	    echo "received_dt: " . $row["received_dt"];echo '<br/>';
	    echo "analisis_dt: " . $row["analisis_dt"];echo '<br/>';
	    echo "Kondisi sample: " . $row["sample_condition"];echo '<br/>';
	    echo "Tipe sample: " . $row["sample_type"];echo '<br/>';
	    echo "Total sample: " . $row["total_sample"];echo '<br/>';
	    echo "Total Biaya: " . $row["total_price"];echo '<br/>';
	    echo '<br/>';
	    echo "Pelanggan : " . $row["person_name"];echo '<br/>';
	    echo "Alamat : " . $row["person_address"];echo '<br/>';
	    echo '<br/>';
	    echo "Nip petugas : " . $row["officer_official_id"];echo '<br/>';
	    echo "Nama petugas : " . $row["officer_name"];echo '<br/>';
	    echo '<br/>';
	    echo 'Samples<br/>';
	    $obj = json_decode($row['json'], true);
		for ($x = 0; $x < count($obj); $x++) {
			echo '_sample ' . ($x + 1) . '<br/>';
			echo '__sample code = '.$obj[$x]["sampleCode"];echo '<br/>';
			echo '__Total Parameter = '.count($obj[$x]["parameters"]);echo '<br/>';
			echo '<br/>';
			$parameters = $obj[$x]["parameters"];
			for ($y =0; $y < count($parameters); $y++) {
				echo '____parameter ' . ($y + 1) . '<br/>';
				echo '______name= '.$parameters[$y]['name'];echo '<br/>';
				echo '______unit= '.$parameters[$y]['unit'];echo '<br/>';
				echo '______price= '.$parameters[$y]['price'];echo '<br/>';
				echo '______priceRp= '.$parameters[$y]['priceRp'];echo '<br/>';
				echo '______total= '.$parameters[$y]['total'];echo '<br/>';
				echo '______totalRp= '.$parameters[$y]['totalRp'];echo '<br/>';
				echo '______hasil= '.$parameters[$y]['result'];echo '<br/>';
				echo '______metode= '.$parameters[$y]['method'];echo '<br/>';echo '<br/>';
			}
		} 
	}
	echo '<br/>';
	echo '<br/>';
	echo "<br/><br/>end"	
?>