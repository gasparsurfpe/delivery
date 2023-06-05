<?php	
	header('Content-Type: application/json charset=utf-8');

	$host = "localhost";
	$username = "root";
	$password = "";
	$database = "faz_pedido";

	$conn = mysqli_connect($host, $username, $password, $database);

	mysqli_set_charset($conn, "utf8mb4");

	if(!$conn){
		$response['retorno'] = 'erroconexao';
		print json_encode($response);
	} else {
		$method = $_SERVER["REQUEST_METHOD"];
		if($method == "POST"){
			
			$sql = $_POST['sql'];

			if(isset($sql)){
			
				$result = mysqli_query($conn, $sql);
				$rows = array();

				if (mysqli_num_rows($result) > 0){
					while($r = mysqli_fetch_assoc($result)){
						array_push($rows, $r);
					}

					print json_encode($rows);
				} else{
					$response['retorno'] = 'nothing';
					print json_encode($response); 
				}
			}
			
		} else{
			$response['retorno'] = 'errometodo';
			print json_encode($response);
		}
	}

	mysqli_close($conn);
?>