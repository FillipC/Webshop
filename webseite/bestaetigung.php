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

<table>
<tr>
<td> Bezeichnung </td>
<td> Preis </td>
<td> Menge </td>
</tr>
<?php
		$servername="localhost";
		$username="root";
		$password="";
		$dbname="webshop";
		$sTable="nendoroids";
		
		$conn = mysqli_connect($servername, $username, $password, $dbname);
				mysqli_query($conn, "SET NAMES 'utf8'");
				
		$sql ="SELECT ID_imeinkaufswagen, bezeichnung , preis, COUNT(bezeichnung)  AS menge FROM einkaufswagen GROUP BY (bezeichnung)";
		$result=mysqli_query($conn, $sql);
		
		if (mysqli_num_rows($result)>0)
		{
		while($row= mysqli_fetch_assoc($result))
		{
		echo 	"<tr>
				<td>".$row["bezeichnung"]."</td>
				<td>".$row["preis"]."€</td>
				<td>".$row["menge"]."</td>
				</tr>";			
		}
		}
		
		
		$ssqlSumme="SELECT ROUND(SUM(preis),2) AS summe FROM einkaufswagen";
		$sSumme =mysqli_query($conn,$ssqlSumme );
				while($row= mysqli_fetch_assoc($sSumme))
		{
		echo 	
				"<tr><td> SUMME </td><td>"
				.$row["summe"]."€</td></tr></table>";
		}
		
		
		
		echo"<p> ihre bestellung wird gesendet an</p>";
		$sqlKunde ="SELECT * FROM  Kundendaten";
		$result=mysqli_query($conn, $sqlKunde);
		
		if (mysqli_num_rows($result)>0)
		{
		while($row= mysqli_fetch_assoc($result))
		{
		echo 	"<tr>
				<td>".$row["Vorname"]."</td>
				<td>".$row["Name"]."</td>
				<td>".$row["Strasse"]."</td>
				<td>".$row["StrasseNr"]."</td>
				<td>".$row["PLZ"]."</td>
				<td>".$row["Ort"]."</td>
				
				</tr>";			
		}
			
		}		
		if (isset ($_POST['abschliessen']))
		{
		$sqlP="DELETE FROM einkaufswagen";
		$sP =mysqli_query($conn,$sqlP );
		while($row= mysqli_fetch_assoc($sP))
		{
		}

		$sqlK="DELETE FROM Kundendaten";
		$sK =mysqli_query($conn,$sK );
		while($row= mysqli_fetch_assoc($sK))
		{	
		}	
		}
					
$conn->close();		
?>

<form method='post' action='danke.php'>
<input type='submit' value="Bestellung abschließen" name='abschliessen'/>
</form>

</article>
</body>
</html>