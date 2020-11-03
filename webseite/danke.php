<!DOCTYPE HTML>
<html>
<head>
<title>Plush n Cosplay</title>
<link rel="stylesheet" href="CSS/form.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<header>
<a href="index.php">
<img class="mitte" src="bilder/logo/testlogo.png">
</a>
</header>

<nav>
	<ul>
	<li> <a href="produkte/cosplay.php">Cosplay</a>
	 <ul>
	 <li><a href="produkte/Outfits.php">Outfits</a> </li>
	 <li><a href="produkte/wig.php">Perrücken</a></li>
	 <li><a href="produkte/access.php">Accessoires</a> </li>  
	 </ul>
	 <li><a href="produkte/figuren.php"> Figuren</a>
	 <ul>
	 <li><a href="produkte/plush.php"> Plushies</a> </li>
	 <li><a href="produkte/figurines.php"> Figurines</a> </li>
	 <li><a href="produkte/nendoroids.php"> Nendoroids</a> </li>
	 </ul>
	</ul>
</nav>

<article2>
<a href="einkaufswagen.php">
<img src="bilder/logo/einkaufswagen.png">
</a>
<a href="frontend.php">secret frontend </a>
</article2>

<article>
	<p class="mittegr"> Danke für ihre bestellung! </p>
	<?php
		$servername="localhost";
		$username="root";
		$password="";
		$dbname="webshop";
		$sTable="nendoroids";
		
		$conn = mysqli_connect($servername, $username, $password, $dbname);
				mysqli_query($conn, "SET NAMES 'utf8'");
				
		
		
		
	
		
		$sqlP="DELETE FROM einkaufswagen";
		mysqli_query($conn,$sqlP );
		

		$sqlK="DELETE FROM Kundendaten";
		mysqli_query($conn,$sqlK );
		
		
					
$conn->close();		
?>
</article>
</body>
</html>
