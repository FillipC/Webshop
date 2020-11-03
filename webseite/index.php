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
	<p class="mittegr"> Vorgestellte Produkte </p>
		<table align="center">
		<?php
		$servername="localhost";
		$username="root";
		$password="";
		$dbname="webshop";
		
		$conn = mysqli_connect($servername, $username, $password, $dbname);
		mysqli_query($conn, "SET NAMES 'utf8'");
		
		$sqlr1 ="SELECT bild, bezeichnung, preis, beschreibung, ID_Produkt FROM plush ORDER BY Rand() LIMIT 1 ";
		$result1=mysqli_query($conn, $sqlr1);
		
		if (mysqli_num_rows($result1)>0)
		{
		while($row= mysqli_fetch_assoc($result1))
		{
		echo 	"<tr>
				<td class='bild'><a href='produkte/produkt_seite.php?ID_Produkt=".$row["ID_Produkt"]."&table=plush'><img class='produkt' src=Bilder/". $row["bild"]."> </a></td>
				<td class='name'><p class='mittegr'> ".$row["bezeichnung"]." </td>
				<td class='beschreibung'><p class='mittegr'> ".$row["beschreibung"]." </td>
				<td class='preis'><p class='mittegr'> ".$row["preis"]." € </td>
				</tr>";		
		}
		}
		
		
		$sqlr2 ="SELECT bild, bezeichnung, preis, beschreibung, ID_Produkt FROM full ORDER BY Rand() LIMIT 1 ";
		$result1=mysqli_query($conn, $sqlr2);
		
		if (mysqli_num_rows($result1)>0)
		{
		while($row= mysqli_fetch_assoc($result1))
		{
		echo 	"<tr>
				<td class='bild'><a href='produkte/produkt_seite.php?ID_Produkt=".$row["ID_Produkt"]."&table=full'><img class='produkt' src=Bilder/". $row["bild"]."> </a></td>
				<td class='name'><p class='mittegr'> ".$row["bezeichnung"]." </td>
				<td class='beschreibung'><p class='mittegr'> ".$row["beschreibung"]." </td>
				<td class='preis'><p class='mittegr'> ".$row["preis"]." € </td>
				</tr>";		
		}
		}
		
		$sqlr3 ="SELECT bild, bezeichnung, preis, beschreibung, ID_Produkt FROM nendoroids ORDER BY Rand() LIMIT 1 ";
		$result3=mysqli_query($conn, $sqlr3);
		
		if (mysqli_num_rows($result3)>0)
		{
		while($row= mysqli_fetch_assoc($result3))
		{
		echo 	"<tr>
				<td class='bild'><a href='produkte/produkt_seite.php?ID_Produkt=".$row["ID_Produkt"]."&table=nendoroids'><img class='produkt' src=Bilder/". $row["bild"]."> </a></td>
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
