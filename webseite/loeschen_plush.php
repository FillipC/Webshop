
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

<?php
$servername="localhost";
$username="root";
$password="";
$dbname="webshop";
$conn = new mysqli($servername, $username,$password,$dbname);
	mysqli_query($conn, "SET NAMES 'utf8'");



	
		
		
		$sqlfull="SELECT bezeichnung, ID_Produkt FROM plush";
		$sfull =mysqli_query($conn,$sqlfull );
		echo"<p class='bold'> Plush löschen
			<br>
			<table>";
				while($row= mysqli_fetch_assoc($sfull))
		{
				
				echo "
					
					<tr>
					
					<td>
					 ".$row["bezeichnung"]."
					</td>
					
					<td>
					<form action='loeschen_plush.php?ID=".$row["ID_Produkt"]."' method='post' >
						<input type='submit' value='Artikel entfernen' id='entfernen' name='entfernen'/>
					</form>
					</td>
					
					</tr>
						
					";
		}
		echo"</table>";
		
		if (isset ($_POST['entfernen']))
			{	
			$sLöschen = $_GET['ID'];
			$ssqlentfernen = "DELETE FROM plush WHERE ID_Produkt=$sLöschen ";	
				
			if ($conn -> query ($ssqlentfernen) === TRUE)
			{
				echo "Der Artikel wird gelöscht.";
				echo"<meta http-equiv='refresh' content='0'>";
			} 
			else
			{
				echo"Error:" . $ssqlentfernen . "<br>" . $conn->error;
			}
			$conn->close();
			
			}




?>



</article>

</body>
</html>
