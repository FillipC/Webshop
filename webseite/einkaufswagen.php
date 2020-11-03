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
<table align="center">
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
		$conn = mysqli_connect($servername, $username, $password, $dbname);	
		mysqli_query($conn, "SET NAMES 'utf8'");
		$sql ="SELECT ID_imeinkaufswagen, bezeichnung , preis, COUNT(bezeichnung)  AS menge FROM einkaufswagen GROUP BY (bezeichnung)";
		$result=mysqli_query($conn, $sql);
		$sIDdelete="";
		
		
		
		while($row=mysqli_fetch_assoc($result))
		{
			
		echo 	
				"<tr>
				<td>".$row["bezeichnung"]."</td>
				<td>".$row["preis"]."€</td>
				<td>".$row["menge"]."</td>
				<td>
				<form action='einkaufswagen.php?ID=".$row["ID_imeinkaufswagen"]."' method='post' >
				<input type='submit' value='Artikel entfernen' id='entfernen' name='entfernen'/>
				</form>
				</td>
				</tr>";
				
		}



		
		$ssqlSumme="SELECT ROUND(SUM(preis),2) AS summe FROM einkaufswagen";
		$sSumme =mysqli_query($conn,$ssqlSumme );
				while($row= mysqli_fetch_assoc($sSumme))
		{
		echo 	
				"<tr><td> SUMME </td><td>"
				.$row["summe"]."€</td></tr></table>";

		}
			
				
	
			
		if (isset ($_POST['entfernen']))
			{	
			$sLöschen = $_GET['ID'];
			
			$ssqlentfernen = "DELETE FROM einkaufswagen WHERE ID_imeinkaufswagen=$sLöschen ";	
				
			if ($conn -> query ($ssqlentfernen) === TRUE)
			{
				
				echo"<meta http-equiv='refresh' content='0'>";
			} 
			else
			{
				echo"Error:" . $ssqlentfernen . "<br>" . $conn->error;
			}
			$conn->close();
			
				}
					
	
				
		if (isset ($_POST['bestellen']))
			{	
			
			?>
			<script type="text/javascript">
			window.location="Adressierung.php";
			</script>
			<?php
			
			}
			
			
				
		
		
		
		
		if (isset ($_POST['submit']))
			{	
				
			$sqlin = "DELETE FROM einkaufswagen";
				
				
						if ($conn -> query ($sqlin) === TRUE)
			{
				echo"<meta http-equiv='refresh' content='0'>";
			} 
			else
			{
				echo"Error:" . $sqlin . "<br>" . $conn->error;
			}
			
			$conn->close();	
				}
	
	
?>
<table align="center">
<tr>
<td>
<form method='post' action=''>
<input type='submit' value="Einkaufswagen leeren" name='submit'/>
</form>
</td>
<td>
<form method='post' action=''>
<input  type='submit' value="Bestellen" name='bestellen'/>
</td>
</tr>
</table>
</form>
</article>
</body>
</html>
