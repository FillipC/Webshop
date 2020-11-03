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
<form method='post' action=''>
<table align="center">
<tr>
	<td>Name</td>

	<td>
	<input type='text' required="required" name='Name'/>
	</td>
</tr>
<tr>
		<td>Vorname</td>
	
<td>	
<input type='text' name='Vorname'/>
</td>
</tr>
<tr>
	<td>Ort</td>
	<td><input type='text' required="required" name='Ort'/></td>
</tr>
<tr>
	<td>PLZ</td>
	<td><input type='text' required="required" name='PLZ'/></td>
</tr>
<tr>
	<td>Straße</td>
	<td><input type='text' required="required" name='Straße'/></td>
</tr>
<tr>
	<td>Hausnummer</td>
	<td><input type='text' required="required" name='StraßeNr'/></td>
</tr>
<tr>
	<td>Telefonnummer</td>
	<td><input type='text' required="required" name='Telefonnummer'/></td>
</tr>
<tr>
<td><input type='submit' value="Weiter" name='submit'/></td>
<tr>	
	</table>
	</form>
<?php
	if (isset ($_POST['submit']))
{
		$servername="localhost";
		$username="root";
		$password="";
		$dbname="webshop";
		
		$sName =			$_POST ['Name'];
		$sVorname = 		$_POST ['Vorname'];
		$sOrt = 			$_POST ['Ort'];
		$sPlz =				$_POST ['PLZ'];
		$sStraße = 			$_POST ['Straße'];
		$sStraßeNr=			$_POST ['StraßeNr'];
		$sTelefonnummer = 	$_POST ['Telefonnummer'];
		
		$conn = new mysqli($servername, $username,$password,$dbname);

		if ($conn->connect_error)
		{
		die ("connection failed: " .$conn-connect_error);
		}
		
		
		$sqlDelete="DELETE FROM Kundendaten";
		if ($conn -> query ($sqlDelete) === TRUE)
		{
			
		} 
		
		
		
		
		
		$sql = "INSERT INTO Kundendaten (Name, Vorname, Ort, PLZ, Telefonnummer, Strasse, StrasseNr)
		VALUES ('$sName', '$sVorname', '$sOrt', '$sPlz','$sTelefonnummer','$sStraße','$sStraßeNr')";
	
		if ($conn -> query ($sql) === TRUE)
		{
			
			?>
			<script type="text/javascript">
			window.location="bestaetigung.php";
			</script>
			<?php
			
		} 
		else
		{
			echo"Error:" . $sql . "<br>" . $conn->error;
		}
		
		
		

		
		
		$conn->close();
}

	?>
	
	




</article>
</body>
</html>
