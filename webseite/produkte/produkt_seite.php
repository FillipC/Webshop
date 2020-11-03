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
<br>

		<?php
		$servername="localhost";
		$username="root";
		$password="";
		$dbname="webshop";
		$sID  = $_GET['ID_Produkt'];
		$sTable = $_GET['table'];
		$conn = mysqli_connect($servername, $username, $password, $dbname);
		mysqli_query($conn, "SET NAMES 'utf8'");
		$sql ="SELECT bild, bezeichnung, preis, beschreibunglang, link FROM $sTable WHERE ID_Produkt=$sID";

		$result=mysqli_query($conn, $sql);
		
		
		while($row= mysqli_fetch_assoc($result))
		{
		echo 	
				"<table><tr>
				<td rowspan='3'>
				<a href=".$row["link"].">
				<img class='produktS' src=".$row["bild"].">
				</td>
				<td>
				".$row["bezeichnung"]."
				</td>
				</tr>
				<tr>
				<td class='beschreibung'>
				".$row["beschreibunglang"]."		
				</td>
				</tr>
				<td>
				".$row["preis"]."€
				</td>
				</table>
				"
				;

		}

		echo"
	</br>
	<form method='post' action=''>
	<input type='submit' class='einkaufswagen' value='In den Einkaufswagen' name='submit'/>
	</form>";
				if (isset ($_POST['submit']))
				{	
				
					$sqlin = "INSERT INTO einkaufswagen ( Bezeichnung, preis)
					VALUES ((SELECT Bezeichnung FROM $sTable WHERE ID_Produkt=$sID) ,(SELECT preis FROM $sTable WHERE ID_Produkt=$sID))";
				
				
						if ($conn -> query ($sqlin) === TRUE)
			{
				echo "Dieses Produkt wurde in den Einkaufswagen hinzugefügt";
			} 
			else
			{
				echo"Error:" . $sqlin . "<br>" . $conn->error;
			}
			$conn->close();
				}
	
		
		?>


</article>
</body>
</html>
