<!DOCTYPE HTML>
<html>
<head>
<title>Plush n Cosplay</title>
<link rel="stylesheet" href="../CSS/form.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<header>
<a href="../index.php">
<img class="mitte" src="../bilder/logo/testlogo.png">
</a>
</header>

<nav>
	<ul>
	<li> <a href="cosplay.php">Cosplay</a>
	 <ul>
	 <li><a href="Outfits.php">Outfits</a> </li>
	 <li><a href="wig.php">Perrücken</a></li>
	 <li><a href="access.php">Accessoires</a> </li>  
	 </ul>
	 <li><a href="figuren.php"> Figuren</a>
	 <ul>
	 <li><a href="plush.php"> Plushies</a> </li>
	 <li><a href="figurines.php"> Figurines</a> </li>
	 <li><a href="nendoroids.php"> Nendoroids</a> </li>
	 </ul>
	</ul>
</nav>

<article2>
<a href="../einkaufswagen.php">
<img src="../bilder/logo/einkaufswagen.png">
</a>
</article2>
<article>

	<p class="mittegr"> Nendoroids </p>
		
		<table align="center">
<tr>
<td><p class="mittegr"> Bild </td>
<td><p class="mittegr"> Bezeichnung </td>
<td><p class="mittegr"> Beschreibung </td>
<td><p class="mittegr"> Preis</td>
		<?php
		$servername="localhost";
		$username="root";
		$password="";
		$dbname="webshop";
		$sTable="nendoroids";
		
		$conn = mysqli_connect($servername, $username, $password, $dbname);
				mysqli_query($conn, "SET NAMES 'utf8'");
				
		$sql ="SELECT bild, bezeichnung, preis,beschreibung, ID_Produkt FROM $sTable";
		$result=mysqli_query($conn, $sql);
		
		if (mysqli_num_rows($result)>0)
		{
		while($row= mysqli_fetch_assoc($result))
		{
		echo 	"<tr>
				<td class='bild'><a href='produkt_seite.php?ID_Produkt=".$row["ID_Produkt"]."&table=$sTable'><img class='produkt' src=". $row["bild"]."> </a></td>
				<td class='name'><p class='mittegr'> ".$row["bezeichnung"]." </td>
				<td class='beschreibung'><p class='mittegr'> ".$row["beschreibung"]." </td>
				<td class='preis'><p class='mittegr'> ".$row["preis"]." € </td>
				</tr>";
				
		}
		}
			
		?>
		</table>
</article>
</body>
</html>
