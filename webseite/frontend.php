
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
<br>

	<p class="bold">Produkt hinzufügen</p>
	
	<table>
	<tr>
	<td>
	<form method='post' action=''>
	Produkt-typ
	</td>
	<td>
	<select name='tabelle'>

	<option value='access'> Accessoires </option>
	<option value='figurines'> Figurines </option>
	<option value='full'> Outfits </option>
	<option value='hair'> Perrücken </option>
	<option value="nendoroids"> Nendoroids </option>
	<option value='Plush'> Plushies </option>
	</select>
	</td>
	</tr>
	<tr>
	<td>
		Bild:
	</td>
	<td>
	<input type='text' required="required" name='bild'/>
	</td>
	</tr>
	<tr>
	<td>
		Name:
	</td>
	<td>
	<input type='text' required="required" name='bezeichnung'/>
	</td>
	</tr>
	<tr>
	<td>	
		Beschreibung:
	</td>
	<td>
	<input type='text' required="required" name='beschreibung'/>
	</td>
	</tr>
	<tr>
	<td>
		Lange Beschreibung:
	</td>
	<td>
	<input type='text' required="required" name='beschreibunglang'/>
	</td>
	</tr>
	<tr>
	<td>
		Preis:
	</td>
	<td>
	<input type='number'  required="required"name='preis'/>
	</td>
	</tr>
	<tr>
	<td>
	<input type='submit' name='submit'/>
	</td>
	</tr>
	</form>
	</table>
<br>

<?php
$servername="localhost";
$username="root";
$password="";
$dbname="webshop";
$conn = new mysqli($servername, $username,$password,$dbname);
	mysqli_query($conn, "SET NAMES 'utf8'");



if (isset ($_POST['submit']))
{
		
		
		$sBild =			$_POST ['bild'];
		$sBezeichnung = 	$_POST ['bezeichnung'];
		$sBeschreibung = 	$_POST ['beschreibung'];
		$sBeschreibunglang =$_POST ['beschreibunglang'];
		$sPreis = 			$_POST ['preis'];
		$sTabelle = 		$_POST ['tabelle'];
		
	

		if ($conn->connect_error)
		{
		die ("connection failed: " .$conn-connect_error);
		}

		$sql = "INSERT INTO $sTabelle (bild, bezeichnung, beschreibung, beschreibunglang, preis)
		VALUES ('$sBild', '$sBezeichnung', '$sBeschreibung', '$sBeschreibunglang', '$sPreis')";
	
		if ($conn -> query ($sql) === TRUE)
		{
			echo "Neue eingabe erfolgreich";
		} 
		else
		{
			echo"Error:" . $sql . "<br>" . $conn->error;
		}
}
		
		
?>

<p class="bold">Artikel löschen</p>
<br>
<table>
<td>
<a href="loeschen_outfits.php"> Outfits </a>
<br>
</td>
<td>
<a href="loeschen_wig.php"> Perrücken </a>
<br>
</td>
<td>
<a href="loeschen_access.php"> Accessoires </a>
<br>
</td>
<td>
<a href="loeschen_plush.php"> Plushies </a>
<br>
</td>
<td>
<a href="loeschen_Figurines.php"> Figurines </a>
<br>
</td>
<td>
<a href="loeschen_nendoroids.php"> Nendoroids </a>
<br>
</td>

</table>
</article>

</body>
</html>
