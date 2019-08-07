<?php
if(isset($_POST["import"]))
{
	$host="localhost";
	$db_user="root";
	$db_password="";
	$db='csv_demo';

	$con=mysqli_connect($host,$db_user,$db_password,$db);
	if (mysqli_connect_errno())
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}

	$filename=$_FILES["file"]["name"];
	if($_FILES["file"]["size"]>0)
	{	
		$file = fopen($filename, "r");
		while (($data = fgetcsv($file, 10000, ",")) !== FALSE)
		{
			$sql = "INSERT into users (userid,username,password,firstname,lastname)
            values ('".$data[0]."','".$data[1]."','".$data[2]."','".$data[3]."','".$data[4]."')";
			$result = mysqli_query($con, $sql);
			
			if(!empty($result))
			{
				echo "CSV File has been successfully Imported.";
			} else {
				header("Location: index.php");
			}
		}
		fclose($file);
	}
	else {
		echo "Error: Please Upload only CSV File";
	}


}
?>