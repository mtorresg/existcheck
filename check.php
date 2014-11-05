<?php

$db = new PDO('mysql:host=127.0.0.1;dbname=existcheck', 'root','' );
  	
  if(isset($_GET['type'], $_GET['value'])){

    $type = strtolower(trim($_GET['type']));
	$value = trim($_GET['value']);
	
	$output = ['exists' => false];

	if(in_array($type, ['username', 'email'])){
	  switch ($type) {
	    case 'username':
		  $check = $db->prepare("
		    SELECT COUNT(*) AS count
			FROM users 
			WHERE username = :value
		  ");			
		break;
		case 'email':
		  $check = $db->prepare("
		    SELECT COUNT(*) AS count
			FROM users 
			WHERE email = :value
		  ");
		break;
	  }
                

	$check->execute(['value' => $value]);
	$output['exists'] = $check->fetchObject()->count ? true : false;
	
	echo json_encode($output);	
	}
  } else {
  	echo 'fasd';
  }

?>