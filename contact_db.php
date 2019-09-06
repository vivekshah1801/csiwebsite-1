<?php

	if(isset($_POST["form_resp"]))
	{
	  	include("db_connect.php");
	  	$sql = "INSERT INTO tbl_contact_res (name,email,subject,msg) VALUES (?,?,?,?)";
		$stmt= $pdo->prepare($sql);
		$stmt->execute([$_POST["name"], $_POST["email"],$_POST["subject"],$_POST["msg"] ]);
	  	$pdo=null;
	  	header('Location: admin_dashboard.php');
  	}
 ?>